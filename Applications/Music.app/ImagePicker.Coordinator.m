@interface ImagePicker.Coordinator
- (_TtCV11MusicCoreUI11ImagePicker11Coordinator)init;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)imagePickerControllerDidCancel:(id)a3;
- (void)imagePlaygroundViewController:(id)a3 didCreateImageAt:(id)a4;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation ImagePicker.Coordinator

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  type metadata accessor for InfoKey(0);
  sub_100BB3A48(&qword_1011B0BB0, type metadata accessor for InfoKey);
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  ImagePicker.Coordinator.imagePickerController(_:didFinishPickingMediaWithInfo:)(v7, v6);
}

- (void)imagePickerControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  ImagePicker.Coordinator.imagePickerControllerDidCancel(_:)(v4);
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = a3;
  v8 = self;
  ImagePicker.Coordinator.documentPicker(_:didPickDocumentsAt:)(v7, v6);
}

- (void)imagePlaygroundViewController:(id)a3 didCreateImageAt:(id)a4
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  ImagePicker.Coordinator.imagePlaygroundViewController(_:didCreateImageAt:)(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)presentationControllerDidDismiss:(id)a3
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