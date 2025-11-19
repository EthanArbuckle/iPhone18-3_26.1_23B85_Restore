@interface ICLearnMoreViewController
+ (void)showHelpWithPresentingViewController:(id)a3;
- (ICLearnMoreViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (UIScrollView)scrollView;
- (void)didTapDoneButton:(id)a3;
- (void)viewDidLoad;
@end

@implementation ICLearnMoreViewController

- (UIScrollView)scrollView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for LearnMoreViewController();
  v2 = v4.receiver;
  v3 = [(ICLearnMoreViewController *)&v4 viewDidLoad];
  (*((swift_isaMask & *v2) + 0xD8))(v3);
  sub_1004B7BD4();
  sub_1004B837C();
  sub_1004B817C();
  sub_1004B7F94();
}

+ (void)showHelpWithPresentingViewController:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  sub_1004B7A70(v4);
}

- (void)didTapDoneButton:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = self;
  }

  [(ICLearnMoreViewController *)self dismissViewControllerAnimated:1 completion:0, v6, v7];

  sub_10027CAAC(&v6);
}

- (ICLearnMoreViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1004B8E0C(v5, v7, a4);
}

@end