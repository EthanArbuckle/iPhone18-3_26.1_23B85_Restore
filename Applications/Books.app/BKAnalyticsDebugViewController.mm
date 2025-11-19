@interface BKAnalyticsDebugViewController
- (BKAnalyticsDebugViewController)init;
- (BKAnalyticsDebugViewController)initWithCoder:(id)a3;
- (BKAnalyticsDebugViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (BKAnalyticsDebugViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (void)jitterLowBoundTextFieldChangeWithTextField:(id)a3;
- (void)jitterUpperBoundTextFieldChangeWithTextField:(id)a3;
- (void)viewDidLoad;
@end

@implementation BKAnalyticsDebugViewController

- (BKAnalyticsDebugViewController)init
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___BKAnalyticsDebugViewController_analyticsDatas) = _swiftEmptyArrayStorage;
  v3 = OBJC_IVAR___BKAnalyticsDebugViewController_analyticsJitterEnabled;
  *(&self->super.super.super.super.isa + v3) = sub_100798314() & 1;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AnalyticsDebugViewController();
  return [(BKAnalyticsDebugViewController *)&v5 initWithStyle:2];
}

- (BKAnalyticsDebugViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___BKAnalyticsDebugViewController_analyticsDatas) = _swiftEmptyArrayStorage;
  v3 = OBJC_IVAR___BKAnalyticsDebugViewController_analyticsJitterEnabled;
  *(&self->super.super.super.super.isa + v3) = sub_100798314() & 1;
  result = sub_1007A38A4();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1003AF810();
}

- (void)jitterLowBoundTextFieldChangeWithTextField:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003B04C8(v4, &static Defaults.analyticsJitterLowBoundValue.setter);
}

- (void)jitterUpperBoundTextFieldChangeWithTextField:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1003B04C8(v4, &static Defaults.analyticsJitterUpperBoundValue.setter);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  v10 = a3;
  v11 = self;
  v12 = sub_1003AFD60(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v4 = sub_1007A2214();

  return v4;
}

- (BKAnalyticsDebugViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BKAnalyticsDebugViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end