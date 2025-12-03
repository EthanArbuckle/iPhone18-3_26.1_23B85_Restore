@interface MarketingItemViewController
- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithBag:(id)bag URL:(id)l;
- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithBag:(id)bag bagValue:(id)value;
- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithMarketingItem:(id)item bag:(id)bag;
- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement account:(id)account bag:(id)bag;
- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement bag:(id)bag;
- (void)viewDidLoad;
@end

@implementation MarketingItemViewController

- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithCoder:(id)coder
{
  *&self->AMSUIMarketingItemViewController_opaque[OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_dynamicDelegate] = 0;
  *&self->AMSUIMarketingItemViewController_opaque[OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_gridPresenter] = 0;
  v3 = &self->AMSUIMarketingItemViewController_opaque[OBJC_IVAR____TtC22SubscribePageExtension27MarketingItemViewController_gridView];
  *v3 = 0;
  *(v3 + 1) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  ObjectType = swift_getObjectType();
  sub_1006AA154(&qword_100944FE8);
  selfCopy = self;
  sub_10074D2C4();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(MarketingItemViewController *)&v5 viewDidLoad];
}

- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithMarketingItem:(id)item bag:(id)bag
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement bag:(id)bag
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement account:(id)account bag:(id)bag
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithBag:(id)bag bagValue:(id)value
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithBag:(id)bag URL:(id)l
{
  v4 = sub_100741264();
  __chkstk_darwin(v4 - 8);
  sub_100741224();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end