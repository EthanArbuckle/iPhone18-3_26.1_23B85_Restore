@interface MarketingItemViewController
- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithBag:(id)a3 URL:(id)a4;
- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithBag:(id)a3 bagValue:(id)a4;
- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithMarketingItem:(id)a3 bag:(id)a4;
- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 account:(id)a5 bag:(id)a6;
- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 bag:(id)a5;
- (void)viewDidLoad;
@end

@implementation MarketingItemViewController

- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithCoder:(id)a3
{
  *&self->AMSUIMarketingItemViewController_opaque[OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_dynamicDelegate] = 0;
  *&self->AMSUIMarketingItemViewController_opaque[OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_gridPresenter] = 0;
  v3 = &self->AMSUIMarketingItemViewController_opaque[OBJC_IVAR____TtC18ASMessagesProvider27MarketingItemViewController_gridView];
  *v3 = 0;
  *(v3 + 1) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  ObjectType = swift_getObjectType();
  sub_4A134(&unk_9401F0, v4, type metadata accessor for MarketingItemViewController);
  v5 = self;
  sub_7632E0();
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(MarketingItemViewController *)&v6 viewDidLoad];
}

- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithMarketingItem:(id)a3 bag:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 bag:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithServiceType:(id)a3 placement:(id)a4 account:(id)a5 bag:(id)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithBag:(id)a3 bagValue:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithBag:(id)a3 URL:(id)a4
{
  v4 = sub_7570A0();
  __chkstk_darwin(v4 - 8);
  sub_757060();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end