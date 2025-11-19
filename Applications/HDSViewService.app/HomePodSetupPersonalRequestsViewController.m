@interface HomePodSetupPersonalRequestsViewController
- (_TtC14HDSViewService42HomePodSetupPersonalRequestsViewController)initWithContentView:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HomePodSetupPersonalRequestsViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100083B44();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100084ED0(a3);
}

- (_TtC14HDSViewService42HomePodSetupPersonalRequestsViewController)initWithContentView:(id)a3
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
  return [(HomePodSetupPersonalRequestsViewController *)&v8 initWithContentView:a3];
}

@end