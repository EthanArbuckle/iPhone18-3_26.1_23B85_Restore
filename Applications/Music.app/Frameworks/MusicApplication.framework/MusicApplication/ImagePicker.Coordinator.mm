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
  _s3__C7InfoKeyVMa_0(0);
  sub_85BACC(&qword_E16FF0, _s3__C7InfoKeyVMa_0);
  v6 = sub_AB8FF0();
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
  sub_AB31C0();
  v6 = sub_AB9760();
  pickerCopy = picker;
  selfCopy = self;
  ImagePicker.Coordinator.documentPicker(_:didPickDocumentsAt:)(pickerCopy, v6);
}

- (void)imagePlaygroundViewController:(id)controller didCreateImageAt:(id)at
{
  v6 = sub_AB31C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3150();
  controllerCopy = controller;
  selfCopy = self;
  ImagePicker.Coordinator.imagePlaygroundViewController(_:didCreateImageAt:)(controllerCopy);

  (*(v7 + 8))(v9, v6);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  type metadata accessor for ImagePicker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390);
  sub_AB7800();
}

- (_TtCV11MusicCoreUI11ImagePicker11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end