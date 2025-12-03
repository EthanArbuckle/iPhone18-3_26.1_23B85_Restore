@interface AvatarPickerCoordinator
- (_TtC10StickerKit23AvatarPickerCoordinator)init;
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
  sub_19A71819C(record);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

- (void)presentAvatarUIController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  sub_19A717694(controllerCopy, animated);
}

- (void)dismissAvatarUIControllerWithIdentifier:(id)identifier animated:(BOOL)animated
{
  if (identifier)
  {
    v6 = sub_19A7AB014();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  sub_19A717870(v6, v8, animated);
}

- (_TtC10StickerKit23AvatarPickerCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end