@interface AvatarPickerCoordinator
- (_TtC22StickersUltraExtension23AvatarPickerCoordinator)init;
- (void)avatarPicker:(id)a3 didSelectAvatarRecord:(id)a4;
- (void)dismissAvatarUIControllerWithIdentifier:(id)a3 animated:(BOOL)a4;
- (void)presentAvatarUIController:(id)a3 animated:(BOOL)a4;
@end

@implementation AvatarPickerCoordinator

- (void)avatarPicker:(id)a3 didSelectAvatarRecord:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = self;
  sub_10000C7F4(a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)presentAvatarUIController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = *((swift_isaMask & self->super.isa) + 0x58);
  v7 = a3;
  v8 = self;
  v6(v14);
  if (v14[3])
  {
    sub_10000C940(v14, v11);
    sub_10000BBE0(v14);
    v9 = v12;
    v10 = v13;
    sub_10000C9A4(v11, v12);
    (*(v10 + 16))(v7, v4, v9, v10);

    sub_10000B5CC(v11);
  }

  else
  {

    sub_10000BBE0(v14);
  }
}

- (void)dismissAvatarUIControllerWithIdentifier:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3)
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
  v10 = self;
  v9(v16);
  if (v16[3])
  {
    sub_10000C940(v16, v13);
    sub_10000BBE0(v16);
    v11 = v14;
    v12 = v15;
    sub_10000C9A4(v13, v14);
    (*(v12 + 24))(v6, v8, v4, v11, v12);

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