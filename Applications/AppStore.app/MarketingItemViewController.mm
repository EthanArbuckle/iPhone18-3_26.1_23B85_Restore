@interface MarketingItemViewController
- (_TtC8AppStore27MarketingItemViewController)initWithBag:(id)a3 URL:(id)a4;
- (_TtC8AppStore27MarketingItemViewController)initWithBag:(id)a3 bagValue:(id)a4;
- (_TtC8AppStore27MarketingItemViewController)initWithCoder:(id)a3;
- (_TtC8AppStore27MarketingItemViewController)initWithMarketingItem:(id)a3 bag:(id)a4;
- (_TtC8AppStore27MarketingItemViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC8AppStore27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 account:(id)a5 bag:(id)a6;
- (_TtC8AppStore27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 bag:(id)a5;
- (void)viewDidLoad;
@end

@implementation MarketingItemViewController

- (_TtC8AppStore27MarketingItemViewController)initWithCoder:(id)a3
{
  *&self->AMSUIMarketingItemViewController_opaque[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_dynamicDelegate] = 0;
  *&self->AMSUIMarketingItemViewController_opaque[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_gridPresenter] = 0;
  v3 = &self->AMSUIMarketingItemViewController_opaque[OBJC_IVAR____TtC8AppStore27MarketingItemViewController_gridView];
  *v3 = 0;
  *(v3 + 1) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  ObjectType = swift_getObjectType();
  sub_1005A4570(&qword_10098D1A8);
  v4 = self;
  DynamicViewControllerDisplaying.injectFieldsIntoMetricsOverlay()();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(MarketingItemViewController *)&v5 viewDidLoad];
}

- (_TtC8AppStore27MarketingItemViewController)initWithMarketingItem:(id)a3 bag:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 bag:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 account:(id)a5 bag:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore27MarketingItemViewController)initWithBag:(id)a3 bagValue:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore27MarketingItemViewController)initWithBag:(id)a3 URL:(id)a4
{
  v4 = type metadata accessor for URL();
  __chkstk_darwin(v4 - 8);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore27MarketingItemViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end