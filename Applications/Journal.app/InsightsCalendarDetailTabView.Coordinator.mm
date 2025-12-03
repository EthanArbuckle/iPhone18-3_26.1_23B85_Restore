@interface InsightsCalendarDetailTabView.Coordinator
- (_TtCV7Journal29InsightsCalendarDetailTabView11Coordinator)init;
- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController;
- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController;
- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed;
@end

@implementation InsightsCalendarDetailTabView.Coordinator

- (id)pageViewController:(id)controller viewControllerBeforeViewController:(id)viewController
{
  viewControllerCopy = viewController;
  selfCopy = self;
  v7 = sub_1008B2618(viewControllerCopy, -1);

  return v7;
}

- (id)pageViewController:(id)controller viewControllerAfterViewController:(id)viewController
{
  viewControllerCopy = viewController;
  selfCopy = self;
  v7 = sub_1008B2618(viewControllerCopy, 1);

  return v7;
}

- (void)pageViewController:(id)controller didFinishAnimating:(BOOL)animating previousViewControllers:(id)controllers transitionCompleted:(BOOL)completed
{
  completedCopy = completed;
  controllerCopy = controller;
  selfCopy = self;
  sub_1008B3EA0(controllerCopy, completedCopy);
}

- (_TtCV7Journal29InsightsCalendarDetailTabView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end