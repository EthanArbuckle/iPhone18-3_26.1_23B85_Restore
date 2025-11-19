@interface InsightsCalendarDetailTabView.Coordinator
- (_TtCV7Journal29InsightsCalendarDetailTabView11Coordinator)init;
- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4;
- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4;
- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6;
@end

@implementation InsightsCalendarDetailTabView.Coordinator

- (id)pageViewController:(id)a3 viewControllerBeforeViewController:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = sub_1008B2618(v5, -1);

  return v7;
}

- (id)pageViewController:(id)a3 viewControllerAfterViewController:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = sub_1008B2618(v5, 1);

  return v7;
}

- (void)pageViewController:(id)a3 didFinishAnimating:(BOOL)a4 previousViewControllers:(id)a5 transitionCompleted:(BOOL)a6
{
  v6 = a6;
  v8 = a3;
  v9 = self;
  sub_1008B3EA0(v8, v6);
}

- (_TtCV7Journal29InsightsCalendarDetailTabView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end