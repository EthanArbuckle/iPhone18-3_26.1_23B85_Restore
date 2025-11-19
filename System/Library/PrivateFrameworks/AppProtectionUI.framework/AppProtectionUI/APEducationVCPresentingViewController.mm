@interface APEducationVCPresentingViewController
- (APEducationVCPresentingViewController)initWithCoder:(id)a3;
- (APEducationVCPresentingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)presentEducationViewController:(id)a3;
@end

@implementation APEducationVCPresentingViewController

- (void)presentEducationViewController:(id)a3
{
  v4 = a3;
  v5 = self;
  [v4 setModalInPresentation_];
  -[APEducationVCPresentingViewController presentViewController:animated:completion:](v5, sel_presentViewController_animated_completion_, v4, [v4 wantsAnimatedPresentation], 0);
}

- (void)loadView
{
  v3 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v5 = self;
  v4 = [v3 init];
  [(APEducationVCPresentingViewController *)v5 setView:v4];
}

- (APEducationVCPresentingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1AEA32454();
    v6 = a4;
    v7 = sub_1AEA32444();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = APEducationVCPresentingViewController;
  v9 = [(APEducationVCPresentingViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (APEducationVCPresentingViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = APEducationVCPresentingViewController;
  v3 = a3;
  v4 = [(APEducationVCPresentingViewController *)&v6 initWithCoder:v3];

  if (v4)
  {
  }

  return v4;
}

@end