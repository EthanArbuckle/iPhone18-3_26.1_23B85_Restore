@interface HomePodSetupDisclaimerViewController
- (_TtC14HDSViewService36HomePodSetupDisclaimerViewController)initWithContentView:(id)view;
- (void)moreInfoButtonTapped:(id)tapped;
- (void)viewDidLoad;
@end

@implementation HomePodSetupDisclaimerViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100014904();
}

- (void)moreInfoButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_100015DFC();
}

- (_TtC14HDSViewService36HomePodSetupDisclaimerViewController)initWithContentView:(id)view
{
  *&self->presenter[OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController_viewModel;
  v6 = type metadata accessor for HomePodSetupViewModel(0);
  (*(*(v6 - 8) + 56))(&self->PRXCardContentViewController_opaque[v5], 1, 1, v6);
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController_termsManager] = 0;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController____lazy_storage___moreInfoButton] = 0;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC14HDSViewService36HomePodSetupDisclaimerViewController____lazy_storage___disclaimerLabel] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HomePodSetupDisclaimerViewController();
  return [(HomePodSetupDisclaimerViewController *)&v8 initWithContentView:view];
}

@end