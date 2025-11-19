@interface ClimateHorizontalQuickActionPopover
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)didUpdateSettings;
- (void)viewDidLayoutSubviews;
@end

@implementation ClimateHorizontalQuickActionPopover

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100099290();
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10009B2DC(v6, v7);
}

- (void)didUpdateSettings
{
  v2 = self;
  static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  v6 = _swiftEmptyArrayStorage;
  sub_100028DB0();
  v4 = v3;
  v5 = v2;
  sub_10009BA7C(v4, v5, &v6);

  sub_1000994AC(v6);

  sub_100099E8C();
}

@end