@interface CNPosterOnboardingPrivacyViewController
- (CNPosterOnboardingPrivacyViewController)init;
- (void)onboardingPrivacyViewDidTapCancel;
- (void)onboardingPrivacyViewDidTapContinue;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation CNPosterOnboardingPrivacyViewController

- (void)onboardingPrivacyViewDidTapCancel
{
  onCancel = [(CNPosterOnboardingPrivacyViewController *)self onCancel];

  if (onCancel)
  {
    onCancel2 = [(CNPosterOnboardingPrivacyViewController *)self onCancel];
    onCancel2[2](onCancel2, self);
  }

  else
  {
    v4 = CNUILogPosters();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "Onboarding privacy view delegate is unexpectedly nil", buf, 2u);
    }

    [(CNPosterOnboardingPrivacyViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)onboardingPrivacyViewDidTapContinue
{
  onContinue = [(CNPosterOnboardingPrivacyViewController *)self onContinue];

  if (onContinue)
  {
    onContinue2 = [(CNPosterOnboardingPrivacyViewController *)self onContinue];
    onContinue2[2](onContinue2, self);
  }

  else
  {
    v4 = CNUILogPosters();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "Onboarding privacy view delegate is unexpectedly nil", buf, 2u);
    }

    [(CNPosterOnboardingPrivacyViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v3.receiver = self;
  v3.super_class = CNPosterOnboardingPrivacyViewController;
  [(CNPosterOnboardingPrivacyViewController *)&v3 viewIsAppearing:appearing];
}

- (void)viewDidLoad
{
  v30[4] = *MEMORY[0x1E69E9840];
  v29.receiver = self;
  v29.super_class = CNPosterOnboardingPrivacyViewController;
  [(CNPosterOnboardingPrivacyViewController *)&v29 viewDidLoad];
  navigationItem = [(CNPosterOnboardingPrivacyViewController *)self navigationItem];
  [navigationItem _setBackgroundHidden:1];

  v28 = [[_TtC10ContactsUI36CNPosterOnboardingPrivacyViewWrapper alloc] initWithDelegate:self];
  hostingController = [(CNPosterOnboardingPrivacyViewWrapper *)v28 hostingController];
  view = [hostingController view];

  model = [(CNPosterOnboardingPrivacyViewWrapper *)v28 model];
  [(CNPosterOnboardingPrivacyViewController *)self setModel:model];

  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  view2 = [(CNPosterOnboardingPrivacyViewController *)self view];
  [view2 addSubview:view];

  v20 = MEMORY[0x1E696ACD8];
  leadingAnchor = [view leadingAnchor];
  view3 = [(CNPosterOnboardingPrivacyViewController *)self view];
  leadingAnchor2 = [view3 leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v30[0] = v24;
  trailingAnchor = [view trailingAnchor];
  view4 = [(CNPosterOnboardingPrivacyViewController *)self view];
  trailingAnchor2 = [view4 trailingAnchor];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v30[1] = v19;
  topAnchor = [view topAnchor];
  view5 = [(CNPosterOnboardingPrivacyViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v30[2] = v10;
  bottomAnchor = [view bottomAnchor];
  view6 = [(CNPosterOnboardingPrivacyViewController *)self view];
  bottomAnchor2 = [view6 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v30[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  [v20 activateConstraints:v15];

  model2 = [(CNPosterOnboardingPrivacyViewController *)self model];
  fetch = [(CNIDSDeviceListService *)self->_service fetch];
  [model2 setWithItems:fetch];
}

- (CNPosterOnboardingPrivacyViewController)init
{
  v7.receiver = self;
  v7.super_class = CNPosterOnboardingPrivacyViewController;
  v2 = [(CNPosterOnboardingPrivacyViewController *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    service = v2->_service;
    v2->_service = v3;

    v5 = v2;
  }

  return v2;
}

@end