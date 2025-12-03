@interface HistoryPagingViewController
- (_TtC10FitnessApp27HistoryPagingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController;
- (id)pageViewController:(id)controller viewControllerAtIndex:(int64_t)index;
- (void)checkFlightsClimbedEnabled;
- (void)loadView;
- (void)pageViewController:(id)controller didUpdateCurrentlyDisplayedIndex:(int64_t)index;
- (void)shareImmediatelyWithSender:(id)sender;
- (void)showHistoryMonthView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation HistoryPagingViewController

- (void)checkFlightsClimbedEnabled
{
  selfCopy = self;
  sub_10028388C();
}

- (void)loadView
{
  selfCopy = self;
  sub_10028427C();
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for HistoryPagingViewController();
  v2 = v4.receiver;
  [(HistoryPagingViewController *)&v4 viewDidLoad];
  navigationItem = [v2 navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  [*(*(*&v2[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_activityDataProvider] + OBJC_IVAR____TtC10FitnessApp20ActivityDataProvider_activitySummaryListener) + OBJC_IVAR____TtC10FitnessApp29ActivitySummaryChangeListener_observers) addObject:v2];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HistoryPagingViewController();
  v4 = v7.receiver;
  [(HistoryPagingViewController *)&v7 viewDidAppear:appearCopy];
  sub_10028388C();
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [navigationController setDelegate:v4];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1002853B4(appear);
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = type metadata accessor for HistoryPagingViewController();
  v2 = v15.receiver;
  [(HistoryPagingViewController *)&v15 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pageViewController] view];
  if (view)
  {
    v4 = view;
    view2 = [v2 view];
    if (view2)
    {
      v6 = view2;
      [view2 bounds];
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
  selfCopy = self;
  sub_100285C34();
}

- (void)shareImmediatelyWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100287190();
}

- (_TtC10FitnessApp27HistoryPagingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)pageViewController:(id)controller viewControllerAtIndex:(int64_t)index
{
  controllerCopy = controller;
  selfCopy = self;
  v8 = sub_100287238(index);

  return v8;
}

- (void)pageViewController:(id)controller didUpdateCurrentlyDisplayedIndex:(int64_t)index
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100287F9C(index);
}

- (id)navigationController:(id)controller animationControllerForOperation:(int64_t)operation fromViewController:(id)viewController toViewController:(id)toViewController
{
  v10 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp27HistoryPagingViewController_pageViewController);
  controllerCopy = controller;
  viewControllerCopy = viewController;
  toViewControllerCopy = toViewController;
  selfCopy = self;
  currentlyDisplayedViewController = [v10 currentlyDisplayedViewController];
  type metadata accessor for HistoryDayViewController();
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = [v16 navigationController:controllerCopy animationControllerForOperation:operation fromViewController:viewControllerCopy toViewController:toViewControllerCopy];
    v18 = currentlyDisplayedViewController;
    currentlyDisplayedViewController = selfCopy;
  }

  else
  {
    v17 = 0;
    v18 = controllerCopy;
    controllerCopy = viewControllerCopy;
    viewControllerCopy = toViewControllerCopy;
    toViewControllerCopy = selfCopy;
  }

  return v17;
}

@end