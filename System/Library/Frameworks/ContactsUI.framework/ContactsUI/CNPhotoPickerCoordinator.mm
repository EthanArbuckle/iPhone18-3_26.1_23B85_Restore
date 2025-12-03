@interface CNPhotoPickerCoordinator
- (_TtC10ContactsUI24CNPhotoPickerCoordinator)init;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
@end

@implementation CNPhotoPickerCoordinator

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  type metadata accessor for InfoKey(0);
  sub_199B7ECCC(&unk_1EAF74FF0, type metadata accessor for InfoKey);
  v6 = sub_199DF9E9C();
  controllerCopy = controller;
  selfCopy = self;
  sub_199B7ED14(v6);
}

- (_TtC10ContactsUI24CNPhotoPickerCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end