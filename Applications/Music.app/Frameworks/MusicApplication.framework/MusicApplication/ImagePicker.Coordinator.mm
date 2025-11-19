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
  _s3__C7InfoKeyVMa_0(0);
  sub_85BACC(&qword_E16FF0, _s3__C7InfoKeyVMa_0);
  v6 = sub_AB8FF0();
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
  sub_AB31C0();
  v6 = sub_AB9760();
  v7 = a3;
  v8 = self;
  ImagePicker.Coordinator.documentPicker(_:didPickDocumentsAt:)(v7, v6);
}

- (void)imagePlaygroundViewController:(id)a3 didCreateImageAt:(id)a4
{
  v6 = sub_AB31C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3150();
  v10 = a3;
  v11 = self;
  ImagePicker.Coordinator.imagePlaygroundViewController(_:didCreateImageAt:)(v10);

  (*(v7 + 8))(v9, v6);
}

- (void)presentationControllerDidDismiss:(id)a3
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