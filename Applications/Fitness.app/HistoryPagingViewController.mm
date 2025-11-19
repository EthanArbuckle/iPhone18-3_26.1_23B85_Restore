@interface HistoryPagingViewController
- (_TtC10FitnessApp27HistoryPagingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6;
- (id)pageViewController:(id)a3 viewControllerAtIndex:(int64_t)a4;
- (void)checkFlightsClimbedEnabled;
- (void)loadView;
- (void)pageViewController:(id)a3 didUpdateCurrentlyDisplayedIndex:(int64_t)a4;
- (void)shareImmediatelyWithSender:(id)a3;
- (void)showHistoryMonthView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation HistoryPagingViewController

- (void)checkFlightsClimbedEnabled
{
  v2 = self;
  sub_10028388C();
}

- (void)loadView
{
  v2 = self;
  sub_10028427C();
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for HistoryPagingViewController();
  v2 = v4.receiver;
  [(HistoryPagingViewController *)&v4 viewDidLoad];
  v3 = [v2 navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  [*(*(*&v2[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_activityDataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener) + OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers) addObject:v2];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HistoryPagingViewController();
  v4 = v7.receiver;
  [(HistoryPagingViewController *)&v7 viewDidAppear:v3];
  sub_10028388C();
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 setDelegate:v4];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1002853B4(a3);
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = type metadata accessor for HistoryPagingViewController();
  v2 = v15.receiver;
  [(HistoryPagingViewController *)&v15 viewWillLayoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pageViewController] view];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [v4 setFrame:{v8, v10, v12, v14}];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (void)showHistoryMonthView
{
  v2 = self;
  sub_100285C34();
}

- (void)shareImmediatelyWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100287190();
}

- (_TtC10FitnessApp27HistoryPagingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pageViewController:(id)a3 viewControllerAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_100287238(a4);

  return v8;
}

- (void)pageViewController:(id)a3 didUpdateCurrentlyDisplayedIndex:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_100287F9C(a4);
}

- (id)navigationController:(id)a3 animationControllerForOperation:(int64_t)a4 fromViewController:(id)a5 toViewController:(id)a6
{
  v10 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pageViewController);
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = self;
  v15 = [v10 currentlyDisplayedViewController];
  type metadata accessor for HistoryDayViewController();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = [v16 navigationController:v11 animationControllerForOperation:a4 fromViewController:v12 toViewController:v13];
    v18 = v15;
    v15 = v14;
  }

  else
  {
    v17 = 0;
    v18 = v11;
    v11 = v12;
    v12 = v13;
    v13 = v14;
  }

  return v17;
}

@end