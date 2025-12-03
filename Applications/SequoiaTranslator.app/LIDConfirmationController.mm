@interface LIDConfirmationController
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtC17SequoiaTranslator25LIDConfirmationController)initWithNibName:(id)name bundle:(id)bundle;
- (void)backgroundTappedWithRecognizer:(id)recognizer;
- (void)hintTapped;
- (void)optionButtonPressedWithSender:(id)sender;
- (void)viewDidLoad;
@end

@implementation LIDConfirmationController

- (_TtC17SequoiaTranslator25LIDConfirmationController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_100149AF0(v5, v7, bundle);
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LIDConfirmationController();
  v2 = v3.receiver;
  [(LIDConfirmationController *)&v3 viewDidLoad];
  sub_100149E04();
  sub_10014A798();
}

- (void)optionButtonPressedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10014AAE4();
}

- (void)backgroundTappedWithRecognizer:(id)recognizer
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong cancelConfirmation];

    swift_unknownObjectRelease();
  }
}

- (void)hintTapped
{
  selfCopy = self;
  sub_10014AF54();
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  touchCopy = touch;
  selfCopy = self;
  view = [touchCopy view];
  if (view)
  {
    v8 = view;
    v9 = [view isDescendantOfView:*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_layoutContainer)];

    return v9 ^ 1;
  }

  else
  {

    return 1;
  }
}

@end