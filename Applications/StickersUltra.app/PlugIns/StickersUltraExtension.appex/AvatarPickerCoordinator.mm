@interface AvatarPickerCoordinator
- (_TtC22StickersUltraExtension23AvatarPickerCoordinator)init;
- (void)avatarPicker:(id)picker didSelectAvatarRecord:(id)record;
- (void)dismissAvatarUIControllerWithIdentifier:(id)identifier animated:(BOOL)animated;
- (void)presentAvatarUIController:(id)controller animated:(BOOL)animated;
@end

@implementation AvatarPickerCoordinator

- (void)avatarPicker:(id)picker didSelectAvatarRecord:(id)record
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10000C7F4(record);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)presentAvatarUIController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v6 = *((swift_isaMask & self->super.isa) + 0x58);
  controllerCopy = controller;
  selfCopy = self;
  v6(v14);
  if (v14[3])
  {
    sub_10000C940(v14, v11);
    sub_10000BBE0(v14);
    v9 = v12;
    v10 = v13;
    sub_10000C9A4(v11, v12);
    (*(v10 + 16))(controllerCopy, animatedCopy, v9, v10);

    sub_10000B5CC(v11);
  }

  else
  {

    sub_10000BBE0(v14);
  }
}

- (void)dismissAvatarUIControllerWithIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  if (identifier)
  {
    v6 = sub_10007D7D0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = *((swift_isaMask & self->super.isa) + 0x58);
  selfCopy = self;
  v9(v16);
  if (v16[3])
  {
    sub_10000C940(v16, v13);
    sub_10000BBE0(v16);
    v11 = v14;
    v12 = v15;
    sub_10000C9A4(v13, v14);
    (*(v12 + 24))(v6, v8, animatedCopy, v11, v12);

    sub_10000B5CC(v13);
  }

  else
  {

    sub_10000BBE0(v16);
  }
}

- (_TtC22StickersUltraExtension23AvatarPickerCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end