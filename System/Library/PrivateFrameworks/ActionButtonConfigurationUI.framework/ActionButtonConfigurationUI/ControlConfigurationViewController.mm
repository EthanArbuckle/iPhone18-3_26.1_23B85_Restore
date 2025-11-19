@interface ControlConfigurationViewController
- (_TtC27ActionButtonConfigurationUI34ControlConfigurationViewController)initWithCoder:(id)a3;
- (_TtC27ActionButtonConfigurationUI34ControlConfigurationViewController)initWithOptions:(id)a3;
- (void)dealloc;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewIsAppearing:(BOOL)a3;
- (void)widgetConfigurationViewController:(id)a3 didFinishWithIntent:(id)a4;
@end

@implementation ControlConfigurationViewController

- (_TtC27ActionButtonConfigurationUI34ControlConfigurationViewController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_completionHandler);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_rootSheetPresentationControllerBehaviorAssertion) = 0;
  result = sub_23DE06208();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI34ControlConfigurationViewController_rootSheetPresentationControllerBehaviorAssertion);
  v5 = self;
  if (v4)
  {
    [v4 invalidate];
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(WFWidgetConfigurationViewController *)&v6 dealloc];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_23DDDC744(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_23DDDCA20(a3);
}

- (void)widgetConfigurationViewController:(id)a3 didFinishWithIntent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_23DDDCAE4(v6, v7);
}

- (_TtC27ActionButtonConfigurationUI34ControlConfigurationViewController)initWithOptions:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end