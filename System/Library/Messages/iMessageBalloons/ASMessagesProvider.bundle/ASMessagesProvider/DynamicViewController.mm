@interface DynamicViewController
- (_TtC18ASMessagesProvider21DynamicViewController)initWithBag:(id)bag bagValue:(id)value;
- (_TtC18ASMessagesProvider21DynamicViewController)initWithBag:(id)bag javaScriptBagValue:(id)value;
- (_TtC18ASMessagesProvider21DynamicViewController)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider21DynamicViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation DynamicViewController

- (_TtC18ASMessagesProvider21DynamicViewController)initWithCoder:(id)coder
{
  *&self->AMSUIDynamicViewController_opaque[OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_dynamicDelegate] = 0;
  *&self->AMSUIDynamicViewController_opaque[OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_gridPresenter] = 0;
  v3 = &self->AMSUIDynamicViewController_opaque[OBJC_IVAR____TtC18ASMessagesProvider21DynamicViewController_gridView];
  *v3 = 0;
  *(v3 + 1) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  ObjectType = swift_getObjectType();
  sub_529D58(&qword_959CE8);
  selfCopy = self;
  sub_7632E0();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(DynamicViewController *)&v5 viewDidLoad];
}

- (_TtC18ASMessagesProvider21DynamicViewController)initWithBag:(id)bag bagValue:(id)value
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider21DynamicViewController)initWithBag:(id)bag javaScriptBagValue:(id)value
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC18ASMessagesProvider21DynamicViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end