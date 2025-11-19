@interface LIDConfirmationController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtC17SequoiaTranslator25LIDConfirmationController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)backgroundTappedWithRecognizer:(id)a3;
- (void)hintTapped;
- (void)optionButtonPressedWithSender:(id)a3;
- (void)viewDidLoad;
@end

@implementation LIDConfirmationController

- (_TtC17SequoiaTranslator25LIDConfirmationController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_100149AF0(v5, v7, a4);
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

- (void)optionButtonPressedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10014AAE4();
}

- (void)backgroundTappedWithRecognizer:(id)a3
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
  v2 = self;
  sub_10014AF54();
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = [v5 view];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 isDescendantOfView:*(&v6->super.super.super.isa + OBJC_IVAR____TtC17SequoiaTranslator25LIDConfirmationController_layoutContainer)];

    return v9 ^ 1;
  }

  else
  {

    return 1;
  }
}

@end