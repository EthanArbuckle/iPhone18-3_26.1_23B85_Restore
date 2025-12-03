@interface MarketingItemViewController
- (_TtC20ProductPageExtension27MarketingItemViewController)initWithBag:(id)bag URL:(id)l;
- (_TtC20ProductPageExtension27MarketingItemViewController)initWithBag:(id)bag bagValue:(id)value;
- (_TtC20ProductPageExtension27MarketingItemViewController)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension27MarketingItemViewController)initWithMarketingItem:(id)item bag:(id)bag;
- (_TtC20ProductPageExtension27MarketingItemViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC20ProductPageExtension27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement account:(id)account bag:(id)bag;
- (_TtC20ProductPageExtension27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement bag:(id)bag;
- (void)viewDidLoad;
@end

@implementation MarketingItemViewController

- (_TtC20ProductPageExtension27MarketingItemViewController)initWithCoder:(id)coder
{
  *&self->AMSUIMarketingItemViewController_opaque[OBJC_IVAR____TtC20ProductPageExtension27MarketingItemViewController_dynamicDelegate] = 0;
  *&self->AMSUIMarketingItemViewController_opaque[OBJC_IVAR____TtC20ProductPageExtension27MarketingItemViewController_gridPresenter] = 0;
  v3 = &self->AMSUIMarketingItemViewController_opaque[OBJC_IVAR____TtC20ProductPageExtension27MarketingItemViewController_gridView];
  *v3 = 0;
  *(v3 + 1) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  ObjectType = swift_getObjectType();
  sub_10002006C(&unk_100942A70, v4, type metadata accessor for MarketingItemViewController);
  selfCopy = self;
  sub_100769F3C();
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(MarketingItemViewController *)&v6 viewDidLoad];
}

- (_TtC20ProductPageExtension27MarketingItemViewController)initWithMarketingItem:(id)item bag:(id)bag
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement bag:(id)bag
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement account:(id)account bag:(id)bag
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension27MarketingItemViewController)initWithBag:(id)bag bagValue:(id)value
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension27MarketingItemViewController)initWithBag:(id)bag URL:(id)l
{
  v4 = sub_10075DB7C();
  __chkstk_darwin(v4 - 8);
  sub_10075DB3C();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension27MarketingItemViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end