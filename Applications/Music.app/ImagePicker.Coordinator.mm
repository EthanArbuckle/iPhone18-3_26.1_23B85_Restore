@interface ImagePicker.Coordinator
- (_TtCV11MusicCoreUI11ImagePicker11Coordinator)init;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)imagePlaygroundViewController:(id)controller didCreateImageAt:(id)at;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation ImagePicker.Coordinator

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  type metadata accessor for InfoKey(0);
  sub_100BB3A48(&qword_1011B0BB0, type metadata accessor for InfoKey);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  ImagePicker.Coordinator.imagePickerController(_:didFinishPickingMediaWithInfo:)(controllerCopy, v6);
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  ImagePicker.Coordinator.imagePickerControllerDidCancel(_:)(cancelCopy);
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  pickerCopy = picker;
  selfCopy = self;
  ImagePicker.Coordinator.documentPicker(_:didPickDocumentsAt:)(pickerCopy, v6);
}

- (void)imagePlaygroundViewController:(id)controller didCreateImageAt:(id)at
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  controllerCopy = controller;
  selfCopy = self;
  ImagePicker.Coordinator.imagePlaygroundViewController(_:didCreateImageAt:)(controllerCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  type metadata accessor for ImagePicker(0);
  sub_10010FC20(&qword_1011B5F50);
  Binding.wrappedValue.setter();
}

- (_TtCV11MusicCoreUI11ImagePicker11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end