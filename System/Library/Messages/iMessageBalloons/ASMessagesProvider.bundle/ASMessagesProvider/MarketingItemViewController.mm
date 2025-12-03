@interface MarketingItemViewController
- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithBag:(id)bag URL:(id)l;
- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithBag:(id)bag bagValue:(id)value;
- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithMarketingItem:(id)item bag:(id)bag;
- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement account:(id)account bag:(id)bag;
- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement bag:(id)bag;
- (void)viewDidLoad;
@end

@implementation MarketingItemViewController

- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_7632E0();
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(MarketingItemViewController *)&v6 viewDidLoad];
}

- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithMarketingItem:(id)item bag:(id)bag
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement bag:(id)bag
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithServiceType:(id)type placement:(id)placement account:(id)account bag:(id)bag
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithBag:(id)bag bagValue:(id)value
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithBag:(id)bag URL:(id)l
{
  v4 = sub_7570A0();
  __chkstk_darwin(v4 - 8);
  sub_757060();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider27MarketingItemViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end