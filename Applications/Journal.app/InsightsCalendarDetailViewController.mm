@interface InsightsCalendarDetailViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (NSArray)preferredFocusEnvironments;
- (_TtC7Journal36InsightsCalendarDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (void)composeButtonSelected;
- (void)navigateToNextDay;
- (void)navigateToPreviousDay;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
- (void)updateForSizeClass;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation InsightsCalendarDetailViewController

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for InsightsCalendarDetailViewController();
  v4 = v5.receiver;
  [(InsightsCalendarDetailViewController *)&v5 viewDidDisappear:disappearCopy];
  sub_100137BA0(0);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100138070();
}

- (void)updateForSizeClass
{
  selfCopy = self;
  sub_100139550(0);
  sub_10013973C();
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_10013A28C(appearing);
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_10013A3E8(action, v10);

  sub_100004F84(v10, &qword_100AD13D0);
  return v8 & 1;
}

- (NSArray)preferredFocusEnvironments
{
  selfCopy = self;
  v3 = sub_10013A18C();
  if (v3)
  {
    v4 = v3;
    sub_1000F24EC(&unk_100AD4780);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100941D50;
    *(v5 + 32) = v4;
  }

  sub_1000F24EC(&unk_100ADD5A0);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (_TtC7Journal36InsightsCalendarDetailViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)navigateToPreviousDay
{
  selfCopy = self;
  sub_10013BC90();
}

- (void)navigateToNextDay
{
  selfCopy = self;
  sub_10013BDF4();
}

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  viewControllerCopy = viewController;
  selfCopy = self;
  v7 = sub_10013B7D0(viewControllerCopy, -1);

  return v7;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  viewControllerCopy = viewController;
  selfCopy = self;
  v7 = sub_10013B7D0(viewControllerCopy, 1);

  return v7;
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  controllerCopy = controller;
  selfCopy = self;
  sub_10013E2C0(completed);
}

- (void)composeButtonSelected
{
  selfCopy = self;
  sub_10013C0A8();
}

@end