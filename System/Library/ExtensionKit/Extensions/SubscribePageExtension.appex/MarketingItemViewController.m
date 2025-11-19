@interface MarketingItemViewController
- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithBag:(id)a3 URL:(id)a4;
- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithBag:(id)a3 bagValue:(id)a4;
- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithMarketingItem:(id)a3 bag:(id)a4;
- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 account:(id)a5 bag:(id)a6;
- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 bag:(id)a5;
- (void)viewDidLoad;
@end

@implementation MarketingItemViewController

- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithCoder:(id)a3
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
  v4 = self;
  sub_10074D2C4();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(MarketingItemViewController *)&v5 viewDidLoad];
}

- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithMarketingItem:(id)a3 bag:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 bag:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 account:(id)a5 bag:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithBag:(id)a3 bagValue:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithBag:(id)a3 URL:(id)a4
{
  v4 = sub_100741264();
  __chkstk_darwin(v4 - 8);
  sub_100741224();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension27MarketingItemViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end