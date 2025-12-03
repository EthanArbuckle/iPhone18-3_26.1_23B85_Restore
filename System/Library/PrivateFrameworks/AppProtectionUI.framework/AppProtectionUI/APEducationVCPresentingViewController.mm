@interface APEducationVCPresentingViewController
- (APEducationVCPresentingViewController)initWithCoder:(id)coder;
- (APEducationVCPresentingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)presentEducationViewController:(id)controller;
@end

@implementation APEducationVCPresentingViewController

- (void)presentEducationViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  [controllerCopy setModalInPresentation_];
  -[APEducationVCPresentingViewController presentViewController:animated:completion:](selfCopy, sel_presentViewController_animated_completion_, controllerCopy, [controllerCopy wantsAnimatedPresentation], 0);
}

- (void)loadView
{
  v3 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  selfCopy = self;
  v4 = [v3 init];
  [(APEducationVCPresentingViewController *)selfCopy setView:v4];
}

- (APEducationVCPresentingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1AEA32454();
    bundleCopy = bundle;
    v7 = sub_1AEA32444();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = APEducationVCPresentingViewController;
  v9 = [(APEducationVCPresentingViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (APEducationVCPresentingViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = APEducationVCPresentingViewController;
  coderCopy = coder;
  v4 = [(APEducationVCPresentingViewController *)&v6 initWithCoder:coderCopy];

  if (v4)
  {
  }

  return v4;
}

@end