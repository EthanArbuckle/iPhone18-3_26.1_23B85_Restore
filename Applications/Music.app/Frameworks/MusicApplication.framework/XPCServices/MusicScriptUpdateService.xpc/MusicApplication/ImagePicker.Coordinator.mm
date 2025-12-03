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
  sub_100375398(&qword_10060A1A0, type metadata accessor for InfoKey);
  v6 = sub_1004BBC44();
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
  sub_1004B6B04();
  v6 = sub_1004BC2A4();
  pickerCopy = picker;
  selfCopy = self;
  ImagePicker.Coordinator.documentPicker(_:didPickDocumentsAt:)(pickerCopy, v6);
}

- (void)imagePlaygroundViewController:(id)controller didCreateImageAt:(id)at
{
  v6 = sub_1004B6B04();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004B6A94();
  controllerCopy = controller;
  selfCopy = self;
  ImagePicker.Coordinator.imagePlaygroundViewController(_:didCreateImageAt:)(controllerCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  type metadata accessor for ImagePicker(0);
  sub_100003ABC(&qword_10060F540);
  sub_1004BA5A4();
}

- (_TtCV11MusicCoreUI11ImagePicker11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end