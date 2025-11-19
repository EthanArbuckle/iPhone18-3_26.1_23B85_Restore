@interface DynamicViewController
- (_TtC20ProductPageExtension21DynamicViewController)initWithBag:(id)a3 bagValue:(id)a4;
- (_TtC20ProductPageExtension21DynamicViewController)initWithBag:(id)a3 javaScriptBagValue:(id)a4;
- (_TtC20ProductPageExtension21DynamicViewController)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension21DynamicViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation DynamicViewController

- (_TtC20ProductPageExtension21DynamicViewController)initWithCoder:(id)a3
{
  *&self->AMSUIDynamicViewController_opaque[OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_dynamicDelegate] = 0;
  *&self->AMSUIDynamicViewController_opaque[OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_gridPresenter] = 0;
  v3 = &self->AMSUIDynamicViewController_opaque[OBJC_IVAR____TtC20ProductPageExtension21DynamicViewController_gridView];
  *v3 = 0;
  *(v3 + 1) = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  ObjectType = swift_getObjectType();
  sub_100067388(&qword_100944EE8);
  v4 = self;
  sub_100769F3C();
  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(DynamicViewController *)&v5 viewDidLoad];
}

- (_TtC20ProductPageExtension21DynamicViewController)initWithBag:(id)a3 bagValue:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension21DynamicViewController)initWithBag:(id)a3 javaScriptBagValue:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC20ProductPageExtension21DynamicViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end