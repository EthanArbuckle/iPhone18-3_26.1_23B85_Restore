@interface InsightsCalendarDetailViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (NSArray)preferredFocusEnvironments;
- (_TtC7Journal36InsightsCalendarDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
- (void)composeButtonSelected;
- (void)navigateToNextDay;
- (void)navigateToPreviousDay;
- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6;
- (void)updateForSizeClass;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation InsightsCalendarDetailViewController

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for InsightsCalendarDetailViewController();
  v4 = v5.receiver;
  [(InsightsCalendarDetailViewController *)&v5 viewDidDisappear:v3];
  sub_100137BA0(0);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100138070();
}

- (void)updateForSizeClass
{
  v2 = self;
  sub_100139550(0);
  sub_10013973C();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_10013A28C(a3);
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_10013A3E8(a3, v10);

  sub_100004F84(v10, &qword_100AD13D0);
  return v8 & 1;
}

- (NSArray)preferredFocusEnvironments
{
  v2 = self;
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

- (_TtC7Journal36InsightsCalendarDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)navigateToPreviousDay
{
  v2 = self;
  sub_10013BC90();
}

- (void)navigateToNextDay
{
  v2 = self;
  sub_10013BDF4();
}

- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = sub_10013B7D0(v5, -1);

  return v7;
}

- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = sub_10013B7D0(v5, 1);

  return v7;
}

- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6
{
  v8 = a3;
  v9 = self;
  sub_10013E2C0(a6);
}

- (void)composeButtonSelected
{
  v2 = self;
  sub_10013C0A8();
}

@end