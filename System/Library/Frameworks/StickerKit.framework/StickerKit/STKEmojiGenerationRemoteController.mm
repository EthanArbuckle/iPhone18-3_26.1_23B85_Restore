@interface STKEmojiGenerationRemoteController
- (STKEmojiGenerationRemoteController)initWithCoder:(id)coder;
- (STKEmojiGenerationRemoteController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP10StickerKit39EmojiGenerationRemoteControllerDelegate_)delegate;
@end

@implementation STKEmojiGenerationRemoteController

- (_TtP10StickerKit39EmojiGenerationRemoteControllerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (STKEmojiGenerationRemoteController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_19A7AB014();
    v6 = (self + OBJC_IVAR___STKEmojiGenerationRemoteController_searchQuery);
    *v6 = 0;
    v6[1] = 0;
    swift_unknownObjectWeakInit();
    bundleCopy = bundle;
    v8 = sub_19A7AAFE4();
  }

  else
  {
    v9 = (self + OBJC_IVAR___STKEmojiGenerationRemoteController_searchQuery);
    *v9 = 0;
    v9[1] = 0;
    swift_unknownObjectWeakInit();
    bundleCopy2 = bundle;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for EmojiGenerationRemoteController();
  v11 = [(RemoteBaseSceneHostingController *)&v13 initWithNibName:v8 bundle:bundle];

  return v11;
}

- (STKEmojiGenerationRemoteController)initWithCoder:(id)coder
{
  v5 = (self + OBJC_IVAR___STKEmojiGenerationRemoteController_searchQuery);
  *v5 = 0;
  v5[1] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for EmojiGenerationRemoteController();
  coderCopy = coder;
  v7 = [(RemoteBaseSceneHostingController *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end