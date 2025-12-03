@interface ControlConfigurationViewController
- (_TtC27ActionButtonConfigurationUI34ControlConfigurationViewController)initWithCoder:(id)coder;
- (_TtC27ActionButtonConfigurationUI34ControlConfigurationViewController)initWithOptions:(id)options;
- (void)dealloc;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)widgetConfigurationViewController:(id)controller didFinishWithIntent:(id)intent;
@end

@implementation ControlConfigurationViewController

- (_TtC27ActionButtonConfigurationUI34ControlConfigurationViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  if (v4)
  {
    [v4 invalidate];
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(WFWidgetConfigurationViewController *)&v6 dealloc];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_23DDDC744(appearing);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_23DDDCA20(disappear);
}

- (void)widgetConfigurationViewController:(id)controller didFinishWithIntent:(id)intent
{
  controllerCopy = controller;
  intentCopy = intent;
  selfCopy = self;
  sub_23DDDCAE4(controllerCopy, intentCopy);
}

- (_TtC27ActionButtonConfigurationUI34ControlConfigurationViewController)initWithOptions:(id)options
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end