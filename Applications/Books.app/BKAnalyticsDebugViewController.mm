@interface BKAnalyticsDebugViewController
- (BKAnalyticsDebugViewController)init;
- (BKAnalyticsDebugViewController)initWithCoder:(id)coder;
- (BKAnalyticsDebugViewController)initWithNibName:(id)name bundle:(id)bundle;
- (BKAnalyticsDebugViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (void)jitterLowBoundTextFieldChangeWithTextField:(id)field;
- (void)jitterUpperBoundTextFieldChangeWithTextField:(id)field;
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

- (BKAnalyticsDebugViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1003AF810();
}

- (void)jitterLowBoundTextFieldChangeWithTextField:(id)field
{
  fieldCopy = field;
  selfCopy = self;
  sub_1003B04C8(fieldCopy, &static Defaults.analyticsJitterLowBoundValue.setter);
}

- (void)jitterUpperBoundTextFieldChangeWithTextField:(id)field
{
  fieldCopy = field;
  selfCopy = self;
  sub_1003B04C8(fieldCopy, &static Defaults.analyticsJitterUpperBoundValue.setter);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_100796E74();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100796E14();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1003AFD60(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v4 = sub_1007A2214();

  return v4;
}

- (BKAnalyticsDebugViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BKAnalyticsDebugViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end