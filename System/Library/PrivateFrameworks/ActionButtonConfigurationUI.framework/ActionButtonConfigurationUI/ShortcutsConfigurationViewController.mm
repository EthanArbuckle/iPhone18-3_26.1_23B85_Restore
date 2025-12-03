@interface ShortcutsConfigurationViewController
- (_TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController)initWithCoder:(id)coder;
- (_TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController)initWithConfigurationContext:(id)context;
- (void)configurationController:(id)controller didFinishWithAction:(id)action error:(id)error;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ShortcutsConfigurationViewController

- (_TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController)initWithConfigurationContext:(id)context
{
  swift_unknownObjectWeakInit();
  v5 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController_completionHandler);
  *v5 = 0;
  v5[1] = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ShortcutsConfigurationViewController();
  contextCopy = context;
  v7 = [(WFActionButtonConfigurationViewController *)&v9 initWithConfigurationContext:contextCopy];
  [(WFSystemActionConfigurationViewController *)v7 setDelegate:v7, v9.receiver, v9.super_class];

  return v7;
}

- (_TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController_completionHandler);
  *v4 = 0;
  v4[1] = 0;
  result = sub_23DE06208();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_23DDF776C(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_23DDF78BC(disappear);
}

- (void)configurationController:(id)controller didFinishWithAction:(id)action error:(id)error
{
  controllerCopy = controller;
  actionCopy = action;
  selfCopy = self;
  errorCopy = error;
  sub_23DDF7B28(action, error);
}

@end