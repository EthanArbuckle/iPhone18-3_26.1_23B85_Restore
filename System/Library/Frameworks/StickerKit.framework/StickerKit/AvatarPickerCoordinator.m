@interface AvatarPickerCoordinator
- (_TtC10StickerKit23AvatarPickerCoordinator)init;
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
  sub_19A71819C(a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)presentAvatarUIController:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_19A717694(v6, a4);
}

- (void)dismissAvatarUIControllerWithIdentifier:(id)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v6 = sub_19A7AB014();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = self;
  sub_19A717870(v6, v8, a4);
}

- (_TtC10StickerKit23AvatarPickerCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end