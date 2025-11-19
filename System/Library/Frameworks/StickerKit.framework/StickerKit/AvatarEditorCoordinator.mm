@interface AvatarEditorCoordinator
- (_TtC10StickerKit23AvatarEditorCoordinator)init;
- (void)avatarPicker:(id)a3 didSelectAvatarRecord:(id)a4;
- (void)dismissAvatarUIControllerWithIdentifier:(id)a3 animated:(BOOL)a4;
- (void)presentAvatarUIController:(id)a3 animated:(BOOL)a4;
@end

@implementation AvatarEditorCoordinator

- (void)avatarPicker:(id)a3 didSelectAvatarRecord:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = self;
  sub_19A64D2A8(a4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)presentAvatarUIController:(id)a3 animated:(BOOL)a4
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = a3;
    v7 = self;
    sub_19A64CD28(v6);
    swift_unknownObjectRelease();
  }
}

- (void)dismissAvatarUIControllerWithIdentifier:(id)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v5 = sub_19A7AB014();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = self;
    sub_19A64D00C(v5, v7);
    swift_unknownObjectRelease();
  }
}

- (_TtC10StickerKit23AvatarEditorCoordinator)init
{
  *&self->delegate[OBJC_IVAR____TtC10StickerKit23AvatarEditorCoordinator_delegate] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for AvatarEditorCoordinator();
  return [(AvatarEditorCoordinator *)&v4 init];
}

@end