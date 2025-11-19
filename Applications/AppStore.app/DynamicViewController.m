@interface DynamicViewController
- (_TtC8AppStore21DynamicViewController)initWithBag:(id)a3 bagValue:(id)a4;
- (_TtC8AppStore21DynamicViewController)initWithBag:(id)a3 javaScriptBagValue:(id)a4;
- (_TtC8AppStore21DynamicViewController)initWithCoder:(id)a3;
- (_TtC8AppStore21DynamicViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation DynamicViewController

- (_TtC8AppStore21DynamicViewController)initWithCoder:(id)a3
{
  *&self->AMSUIDynamicViewController_opaque[OBJC_IVAR____TtC8AppStore21DynamicViewController_dynamicDelegate] = 0;
  *&self->AMSUIDynamicViewController_opaque[OBJC_IVAR____TtC8AppStore21DynamicViewController_gridPresenter] = 0;
  v3 = &self->AMSUIDynamicViewController_opaque[OBJC_IVAR____TtC8AppStore21DynamicViewController_gridView];
  *v3 = 0;
  *(v3 + 1) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  ObjectType = swift_getObjectType();
  sub_10064AD94(&qword_1009908E8, v4, type metadata accessor for DynamicViewController);
  v5 = self;
  DynamicViewControllerDisplaying.injectFieldsIntoMetricsOverlay()();
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(DynamicViewController *)&v6 viewDidLoad];
}

- (_TtC8AppStore21DynamicViewController)initWithBag:(id)a3 bagValue:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore21DynamicViewController)initWithBag:(id)a3 javaScriptBagValue:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8AppStore21DynamicViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end