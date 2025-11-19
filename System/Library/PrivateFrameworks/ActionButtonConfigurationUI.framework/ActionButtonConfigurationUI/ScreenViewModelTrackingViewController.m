@interface ScreenViewModelTrackingViewController
- (_TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController)initWithCoder:(id)a3;
- (_TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)presentationControllerWillDismiss:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ScreenViewModelTrackingViewController

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_23DDE756C(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_23DDE762C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_23DDE76EC(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_23DDE77AC(a3);
}

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = self;
  sub_23DDE7DC4(a4, a5);

  swift_unknownObjectRelease();
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23DDE64D8(v4);
}

- (_TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_23DE05A48();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel) = 0;
    v6 = a4;
    v7 = sub_23DE05A18();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ScreenViewModelTrackingViewController();
  v9 = [(ScreenViewModelTrackingViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ScreenViewModelTrackingViewController();
  v4 = a3;
  v5 = [(ScreenViewModelTrackingViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end