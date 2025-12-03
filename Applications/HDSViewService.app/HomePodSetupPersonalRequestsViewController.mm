@interface HomePodSetupPersonalRequestsViewController
- (_TtC14HDSViewService42HomePodSetupPersonalRequestsViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HomePodSetupPersonalRequestsViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100083B44();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100084ED0(appear);
}

- (_TtC14HDSViewService42HomePodSetupPersonalRequestsViewController)initWithContentView:(id)view
{
  *&self->presenter[OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_viewModel;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v6 - 8) + 56))(&self->PRXFeatureListViewController_opaque[v5], 1, 1, v6);
  self->PRXFeatureListViewController_opaque[OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_isConfigured] = 0;
  *&self->PRXFeatureListViewController_opaque[OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_bodyLabel] = 0;
  *&self->PRXFeatureListViewController_opaque[OBJC_IVAR____TtC14HDSViewService42HomePodSetupPersonalRequestsViewController_bottomLabel] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HomePodSetupPersonalRequestsViewController();
  return [(HomePodSetupPersonalRequestsViewController *)&v8 initWithContentView:view];
}

@end