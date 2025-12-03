@interface ICLearnMoreViewController
+ (void)showHelpWithPresentingViewController:(id)controller;
- (ICLearnMoreViewController)initWithNibName:(id)name bundle:(id)bundle;
- (UIScrollView)scrollView;
- (void)didTapDoneButton:(id)button;
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
  viewDidLoad = [(ICLearnMoreViewController *)&v4 viewDidLoad];
  (*((swift_isaMask & *v2) + 0xD8))(viewDidLoad);
  sub_1004B7BD4();
  sub_1004B837C();
  sub_1004B817C();
  sub_1004B7F94();
}

+ (void)showHelpWithPresentingViewController:(id)controller
{
  swift_getObjCClassMetadata();
  controllerCopy = controller;
  sub_1004B7A70(controllerCopy);
}

- (void)didTapDoneButton:(id)button
{
  if (button)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    selfCopy2 = self;
  }

  [(ICLearnMoreViewController *)self dismissViewControllerAnimated:1 completion:0, v6, v7];

  sub_10027CAAC(&v6);
}

- (ICLearnMoreViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_1004B8E0C(v5, v7, bundle);
}

@end