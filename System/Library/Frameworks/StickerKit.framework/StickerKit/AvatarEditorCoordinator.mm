@interface AvatarEditorCoordinator
- (_TtC10StickerKit23AvatarEditorCoordinator)init;
- (void)avatarPicker:(id)picker didSelectAvatarRecord:(id)record;
- (void)dismissAvatarUIControllerWithIdentifier:(id)identifier animated:(BOOL)animated;
- (void)presentAvatarUIController:(id)controller animated:(BOOL)animated;
@end

@implementation AvatarEditorCoordinator

- (void)avatarPicker:(id)picker didSelectAvatarRecord:(id)record
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_19A64D2A8(record);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)presentAvatarUIController:(id)controller animated:(BOOL)animated
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    controllerCopy = controller;
    selfCopy = self;
    sub_19A64CD28(controllerCopy);
    swift_unknownObjectRelease();
  }
}

- (void)dismissAvatarUIControllerWithIdentifier:(id)identifier animated:(BOOL)animated
{
  if (identifier)
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
    selfCopy = self;
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