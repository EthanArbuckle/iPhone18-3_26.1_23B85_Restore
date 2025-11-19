@interface HomePodSetupSiriWelcomeViewController
- (_TtC14HDSViewService37HomePodSetupSiriWelcomeViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation HomePodSetupSiriWelcomeViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10006AE54();
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_10006BB88(a3);
}

- (_TtC14HDSViewService37HomePodSetupSiriWelcomeViewController)initWithContentView:(id)a3
{
  *&self->presenter[OBJC_IVAR____TtC14HDSViewService37HomePodSetupSiriWelcomeViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupSiriWelcomeViewController_viewModel;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v6 - 8) + 56))(&self->PRXCardContentViewController_opaque[v5], 1, 1, v6);
  v8.receiver = self;
  v8.super_class = type metadata accessor for HomePodSetupSiriWelcomeViewController();
  return [(HomePodSetupSiriWelcomeViewController *)&v8 initWithContentView:a3];
}

@end