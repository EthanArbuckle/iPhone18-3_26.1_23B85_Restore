@interface HomePodSetupPINEntryViewController
- (_TtC14HDSViewService34HomePodSetupPINEntryViewController)initWithContentView:(id)a3;
- (void)didCompleteTextEntry:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HomePodSetupPINEntryViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10005A39C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10005ABB4(a3);
}

- (void)didCompleteTextEntry:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10005BBD0(v4);
}

- (_TtC14HDSViewService34HomePodSetupPINEntryViewController)initWithContentView:(id)a3
{
  *&self->presenter[OBJC_IVAR____TtC14HDSViewService34HomePodSetupPINEntryViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  v5 = &self->PRXPasscodeEntryViewController_opaque[OBJC_IVAR____TtC14HDSViewService34HomePodSetupPINEntryViewController_activityIndicatorTitle];
  *v5 = 0;
  *(v5 + 1) = 0xE000000000000000;
  v6 = OBJC_IVAR____TtC14HDSViewService34HomePodSetupPINEntryViewController_viewModel;
  v7 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v7 - 8) + 56))(&self->PRXPasscodeEntryViewController_opaque[v6], 1, 1, v7);
  v9.receiver = self;
  v9.super_class = type metadata accessor for HomePodSetupPINEntryViewController();
  return [(HomePodSetupPINEntryViewController *)&v9 initWithContentView:a3];
}

@end