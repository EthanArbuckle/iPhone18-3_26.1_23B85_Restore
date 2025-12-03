@interface HomePodSetupPINEntryViewController
- (_TtC14HDSViewService34HomePodSetupPINEntryViewController)initWithContentView:(id)view;
- (void)didCompleteTextEntry:(id)entry;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HomePodSetupPINEntryViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10005A39C();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10005ABB4(appear);
}

- (void)didCompleteTextEntry:(id)entry
{
  entryCopy = entry;
  selfCopy = self;
  sub_10005BBD0(entryCopy);
}

- (_TtC14HDSViewService34HomePodSetupPINEntryViewController)initWithContentView:(id)view
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
  return [(HomePodSetupPINEntryViewController *)&v9 initWithContentView:view];
}

@end