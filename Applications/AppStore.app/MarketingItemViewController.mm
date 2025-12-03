@interface MarketingItemViewController
- (_TtC8AppStore27MarketingItemViewController)initWithBag:(id)bag URL:(id)l;
- (_TtC8AppStore27MarketingItemViewController)initWithBag:(id)bag bagValue:(id)value;
- (_TtC8AppStore27MarketingItemViewController)initWithCoder:(id)coder;
- (_TtC8AppStore27MarketingItemViewController)initWithMarketingItem:(id)item bag:(id)bag;
- (_TtC8AppStore27MarketingItemViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8AppStore27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement account:(id)account bag:(id)bag;
- (_TtC8AppStore27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement bag:(id)bag;
- (void)viewDidLoad;
@end

@implementation MarketingItemViewController

- (_TtC8AppStore27MarketingItemViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  DynamicViewControllerDisplaying.injectFieldsIntoMetricsOverlay()();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(MarketingItemViewController *)&v5 viewDidLoad];
}

- (_TtC8AppStore27MarketingItemViewController)initWithMarketingItem:(id)item bag:(id)bag
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement bag:(id)bag
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement account:(id)account bag:(id)bag
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore27MarketingItemViewController)initWithBag:(id)bag bagValue:(id)value
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore27MarketingItemViewController)initWithBag:(id)bag URL:(id)l
{
  v4 = type metadata accessor for URL();
  __chkstk_darwin(v4 - 8);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore27MarketingItemViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end