@interface EmojiGenerationController_new
- (STKEmojiGenerationViewControllerDelegate)delegate;
- (_TtC20StickerPickerService29EmojiGenerationController_new)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation EmojiGenerationController_new

- (STKEmojiGenerationViewControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  v2 = self;
  EmojiGenerationController_new.viewDidLoad()();
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  swift_unknownObjectRetain();
  v8 = self;
  EmojiGenerationController_new.viewWillTransition(to:with:)(a4, width, height);
  swift_unknownObjectRelease();
}

- (_TtC20StickerPickerService29EmojiGenerationController_new)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return EmojiGenerationController_new.init(nibName:bundle:)(v5, v7, a4);
}

@end