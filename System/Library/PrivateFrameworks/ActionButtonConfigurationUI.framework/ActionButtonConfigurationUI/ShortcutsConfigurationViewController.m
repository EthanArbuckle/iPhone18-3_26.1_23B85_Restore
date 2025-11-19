@interface ShortcutsConfigurationViewController
- (_TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController)initWithCoder:(id)a3;
- (_TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController)initWithConfigurationContext:(id)a3;
- (void)configurationController:(id)a3 didFinishWithAction:(id)a4 error:(id)a5;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ShortcutsConfigurationViewController

- (_TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController)initWithConfigurationContext:(id)a3
{
  swift_unknownObjectWeakInit();
  v5 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController_completionHandler);
  *v5 = 0;
  v5[1] = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ShortcutsConfigurationViewController();
  v6 = a3;
  v7 = [(WFActionButtonConfigurationViewController *)&v9 initWithConfigurationContext:v6];
  [(WFSystemActionConfigurationViewController *)v7 setDelegate:v7, v9.receiver, v9.super_class];

  return v7;
}

- (_TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI36ShortcutsConfigurationViewController_completionHandler);
  *v4 = 0;
  v4[1] = 0;
  result = sub_23DE06208();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_23DDF776C(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_23DDF78BC(a3);
}

- (void)configurationController:(id)a3 didFinishWithAction:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_23DDF7B28(a4, a5);
}

@end