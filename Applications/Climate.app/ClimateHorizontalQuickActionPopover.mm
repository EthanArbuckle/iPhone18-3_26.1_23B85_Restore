@interface ClimateHorizontalQuickActionPopover
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)didUpdateSettings;
- (void)viewDidLayoutSubviews;
@end

@implementation ClimateHorizontalQuickActionPopover

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100099290();
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_10009B2DC(contextCopy, coordinatorCopy);
}

- (void)didUpdateSettings
{
  selfCopy = self;
  static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v6 = _swiftEmptyArrayStorage;
  sub_100028DB0();
  v4 = v3;
  v5 = selfCopy;
  sub_10009BA7C(v4, v5, &v6);

  sub_1000994AC(v6);

  sub_100099E8C();
}

@end