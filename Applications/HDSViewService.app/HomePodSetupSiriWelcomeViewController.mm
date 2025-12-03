@interface HomePodSetupSiriWelcomeViewController
- (_TtC14HDSViewService37HomePodSetupSiriWelcomeViewController)initWithContentView:(id)view;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation HomePodSetupSiriWelcomeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10006AE54();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10006BB88(disappear);
}

- (_TtC14HDSViewService37HomePodSetupSiriWelcomeViewController)initWithContentView:(id)view
{
  *&self->presenter[OBJC_IVAR____TtC14HDSViewService37HomePodSetupSiriWelcomeViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC14HDSViewService37HomePodSetupSiriWelcomeViewController_viewModel;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v6 - 8) + 56))(&self->PRXCardContentViewController_opaque[v5], 1, 1, v6);
  v8.receiver = self;
  v8.super_class = type metadata accessor for HomePodSetupSiriWelcomeViewController();
  return [(HomePodSetupSiriWelcomeViewController *)&v8 initWithContentView:view];
}

@end