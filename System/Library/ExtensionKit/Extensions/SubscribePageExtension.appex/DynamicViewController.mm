@interface DynamicViewController
- (_TtC22SubscribePageExtension21DynamicViewController)initWithBag:(id)a3 bagValue:(id)a4;
- (_TtC22SubscribePageExtension21DynamicViewController)initWithBag:(id)a3 javaScriptBagValue:(id)a4;
- (_TtC22SubscribePageExtension21DynamicViewController)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension21DynamicViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation DynamicViewController

- (_TtC22SubscribePageExtension21DynamicViewController)initWithCoder:(id)a3
{
  *&self->AMSUIDynamicViewController_opaque[OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_dynamicDelegate] = 0;
  *&self->AMSUIDynamicViewController_opaque[OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_gridPresenter] = 0;
  v3 = &self->AMSUIDynamicViewController_opaque[OBJC_IVAR____TtC22SubscribePageExtension21DynamicViewController_gridView];
  *v3 = 0;
  *(v3 + 1) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  ObjectType = swift_getObjectType();
  sub_1001FEC78(&unk_10092DCD0, v4, type metadata accessor for DynamicViewController);
  v5 = self;
  sub_10074D2C4();
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(DynamicViewController *)&v6 viewDidLoad];
}

- (_TtC22SubscribePageExtension21DynamicViewController)initWithBag:(id)a3 bagValue:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension21DynamicViewController)initWithBag:(id)a3 javaScriptBagValue:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC22SubscribePageExtension21DynamicViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end