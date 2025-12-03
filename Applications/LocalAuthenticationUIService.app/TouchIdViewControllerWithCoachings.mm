@interface TouchIdViewControllerWithCoachings
- (void)_configureUI;
- (void)_dismissUIWithCompletionHandler:(id)handler;
- (void)_presentUI:(id)i;
- (void)_setupCoachingView;
- (void)_setupDimming;
- (void)_setupUI;
- (void)_updateUI;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator;
@end

@implementation TouchIdViewControllerWithCoachings

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  v5.receiver = self;
  v5.super_class = TouchIdViewControllerWithCoachings;
  [(TouchIdViewControllerWithCoachings *)&v5 viewWillTransitionToSize:coordinator withTransitionCoordinator:size.width, size.height];
  [(TouchIdViewControllerWithCoachings *)self _updateUI];
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = TouchIdViewControllerWithCoachings;
  [(TouchIdViewControllerWithCoachings *)&v3 viewWillLayoutSubviews];
  [(TouchIdViewControllerWithCoachings *)self _updateUI];
}

- (void)willTransitionToTraitCollection:(id)collection withTransitionCoordinator:(id)coordinator
{
  v6.receiver = self;
  v6.super_class = TouchIdViewControllerWithCoachings;
  [(TouchIdViewControllerWithCoachings *)&v6 willTransitionToTraitCollection:collection withTransitionCoordinator:coordinator];
  traitCollection = [(TouchIdViewControllerWithCoachings *)self traitCollection];
  -[LAUIPhysicalButtonView setStyle:](self->_coachingView, "setStyle:", [traitCollection userInterfaceStyle] == 2);
}

- (void)_setupUI
{
  [(TouchIdViewControllerWithCoachings *)self _setupCoachingView];
  v3.receiver = self;
  v3.super_class = TouchIdViewControllerWithCoachings;
  [(TouchIdViewController *)&v3 _setupUI];
}

- (void)_configureUI
{
  v3.receiver = self;
  v3.super_class = TouchIdViewControllerWithCoachings;
  [(TouchIdViewController *)&v3 _configureUI];
  [(LAUIPhysicalButtonView *)self->_coachingView setIsInstructionHidden:[(TouchIdViewController *)self _isSensorActive]^ 1];
}

- (void)_presentUI:(id)i
{
  [(TouchIdViewControllerWithCoachings *)self _setupDimming];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __49__TouchIdViewControllerWithCoachings__presentUI___block_invoke;
  v5[3] = &unk_1000AA3C0;
  v5[4] = self;
  v4.receiver = self;
  v4.super_class = TouchIdViewControllerWithCoachings;
  [(TouchIdViewController *)&v4 _presentUI:v5];
}

id __49__TouchIdViewControllerWithCoachings__presentUI___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 248);
  v3.receiver = *(a1 + 32);
  v3.super_class = TouchIdViewControllerWithCoachings;
  return objc_msgSendSuper2(&v3, "_addFrontMostSubview:", v1);
}

- (void)_dismissUIWithCompletionHandler:(id)handler
{
  coachingView = self->_coachingView;
  handlerCopy = handler;
  [(LAUIPhysicalButtonView *)coachingView removeFromSuperview];
  v6.receiver = self;
  v6.super_class = TouchIdViewControllerWithCoachings;
  [(TouchIdViewController *)&v6 _dismissUIWithCompletionHandler:handlerCopy];
}

- (void)_setupCoachingView
{
  v3 = [[LAUIPhysicalButtonView alloc] initWithStyle:1];
  coachingView = self->_coachingView;
  self->_coachingView = v3;

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"TOUCH_ID" value:&stru_1000ADB50 table:@"MobileUI"];
  [(LAUIPhysicalButtonView *)self->_coachingView setInstruction:v6];

  [(LAUIPhysicalButtonView *)self->_coachingView setAnimationStyle:2];
  v7 = self->_coachingView;

  [(LAUIPhysicalButtonView *)v7 setAnimating:1];
}

- (void)_setupDimming
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __51__TouchIdViewControllerWithCoachings__setupDimming__block_invoke;
  v6[3] = &unk_1000AABC0;
  v6[4] = self;
  v3 = __51__TouchIdViewControllerWithCoachings__setupDimming__block_invoke(v6);
  dimmingView = [(TouchIdViewController *)self dimmingView];
  [dimmingView setDimLevel:v3];

  dimmingView2 = [(TouchIdViewController *)self dimmingView];
  [dimmingView2 setDimEnabled:1];
}

double __51__TouchIdViewControllerWithCoachings__setupDimming__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) traitCollection];
  v2 = [v1 userInterfaceStyle] == 2;

  return fmin(fmax((0.75 - dbl_100086540[v2]) / (1.0 - dbl_100086540[v2]), 0.0), 1.0);
}

- (void)_updateUI
{
  [(LAUIPhysicalButtonView *)self->_coachingView setAnimating:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __47__TouchIdViewControllerWithCoachings__updateUI__block_invoke;
  block[3] = &unk_1000AA3C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

id __47__TouchIdViewControllerWithCoachings__updateUI__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 248) updateFrame];
  v2 = *(*(a1 + 32) + 248);

  return [v2 setAnimating:1];
}

@end