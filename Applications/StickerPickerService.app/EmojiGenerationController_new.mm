@interface EmojiGenerationController_new
- (STKEmojiGenerationViewControllerDelegate)delegate;
- (_TtC20StickerPickerService29EmojiGenerationController_new)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation EmojiGenerationController_new

- (STKEmojiGenerationViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  selfCopy = self;
  EmojiGenerationController_new.viewDidLoad()();
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  selfCopy = self;
  EmojiGenerationController_new.viewWillTransition(to:with:)(coordinator, width, height);
  swift_unknownObjectRelease();
}

- (_TtC20StickerPickerService29EmojiGenerationController_new)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return EmojiGenerationController_new.init(nibName:bundle:)(v5, v7, bundle);
}

@end