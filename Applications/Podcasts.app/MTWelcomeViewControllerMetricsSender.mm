@interface MTWelcomeViewControllerMetricsSender
- (MTWelcomeViewControllerMetricsSender)init;
- (void)welcomeControllerDidAppear;
- (void)welcomeControllerDidDisappear;
- (void)welcomeControllerWillDisappear;
@end

@implementation MTWelcomeViewControllerMetricsSender

- (void)welcomeControllerDidAppear
{
  v3 = type metadata accessor for PageMetrics.InvocationPoint();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;

  MetricsController.observe(lifecycleEvent:)();

  sub_10035D81C();

  static PageMetrics.InvocationPoint.pageEnter.getter();
  MetricsController.sendEvents(for:)();

  (*(v4 + 8))(v6, v3);
}

- (void)welcomeControllerWillDisappear
{
  selfCopy = self;

  MetricsController.observe(lifecycleEvent:)();
}

- (void)welcomeControllerDidDisappear
{
  sub_100168088(&unk_1005815C0);
  __chkstk_darwin();
  v4 = &v7 - v3;
  selfCopy = self;

  MetricsController.observe(lifecycleEvent:)();

  v6 = type metadata accessor for PageMetrics();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);

  MetricsController.pageMetrics.setter();
}

- (MTWelcomeViewControllerMetricsSender)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end