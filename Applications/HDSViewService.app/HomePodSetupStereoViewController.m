@interface HomePodSetupStereoViewController
- (_TtC14HDSViewService32HomePodSetupStereoViewController)initWithContentView:(id)a3;
- (void)viewDidLoad;
@end

@implementation HomePodSetupStereoViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10006F6FC();
}

- (_TtC14HDSViewService32HomePodSetupStereoViewController)initWithContentView:(id)a3
{
  *&self->presenter[OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_viewModel;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v6 - 8) + 56))(&self->PRXCardContentViewController_opaque[v5], 1, 1, v6);
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_isConfigured] = 0;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService32HomePodSetupStereoViewController_bodyLabel] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HomePodSetupStereoViewController();
  return [(HomePodSetupStereoViewController *)&v8 initWithContentView:a3];
}

@end