import QtQuick 2.0

Rectangle {
    property string clipName: ''
    property string clipResource: ''
    property int clipDuration: 0
    property bool isBlank: false
    property bool isAudio: false

    SystemPalette { id: activePalette }

    width: duration
    color: isBlank? 'transparent' : (isAudio? 'darkseagreen' : activePalette.highlight)
    border.color: 'black'
    border.width: isBlank? 0 : 1
    height: 60

    Text {
        text: name
        visible: !isBlank
        font.pointSize: 8
        anchors {
            top: parent.top
            left: parent.left
            margins: 2
        }
        color: isAudio? Qt.lighter(activePalette.windowText) : activePalette.windowText
    }
}
