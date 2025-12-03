@interface ScreenViewModelTrackingViewController
- (_TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController)initWithCoder:(id)coder;
- (_TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator;
- (void)presentationControllerWillDismiss:(id)dismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ScreenViewModelTrackingViewController

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_23DDE756C(appearing);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_23DDE762C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_23DDE76EC(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_23DDE77AC(disappear);
}

- (void)presentationController:(id)controller willPresentWithAdaptiveStyle:(int64_t)style transitionCoordinator:(id)coordinator
{
  controllerCopy = controller;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_23DDE7DC4(style, coordinator);

  swift_unknownObjectRelease();
}

- (void)presentationControllerWillDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_23DDE64D8(dismissCopy);
}

- (_TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_23DE05A48();
    *(&self->super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel) = 0;
    bundleCopy = bundle;
    v7 = sub_23DE05A18();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ScreenViewModelTrackingViewController();
  v9 = [(ScreenViewModelTrackingViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI37ScreenViewModelTrackingViewController_viewModel) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ScreenViewModelTrackingViewController();
  coderCopy = coder;
  v5 = [(ScreenViewModelTrackingViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end