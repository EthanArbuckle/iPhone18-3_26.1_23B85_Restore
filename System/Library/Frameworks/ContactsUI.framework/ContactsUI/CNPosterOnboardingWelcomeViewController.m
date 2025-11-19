@interface CNPosterOnboardingWelcomeViewController
- (CNPosterOnboardingWelcomeViewController)initWithContact:(id)a3;
- (CNPosterOnboardingWelcomeViewControllerDelegate)delegate;
- (void)onboardingWelcomeViewDidTapCancel;
- (void)onboardingWelcomeViewDidTapContinue;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation CNPosterOnboardingWelcomeViewController

- (CNPosterOnboardingWelcomeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)onboardingWelcomeViewDidTapCancel
{
  v3 = [(CNPosterOnboardingWelcomeViewController *)self delegate];

  if (v3)
  {
    v5 = [(CNPosterOnboardingWelcomeViewController *)self delegate];
    [v5 posterOnboardingViewControllerDidDidTapCancel:self];
  }

  else
  {
    v4 = CNUILogPosters();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "Onboarding view delegate is unexpectedly nil", buf, 2u);
    }

    [(CNPosterOnboardingWelcomeViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)onboardingWelcomeViewDidTapContinue
{
  v3 = [(CNPosterOnboardingWelcomeViewController *)self delegate];

  if (v3)
  {
    v5 = [(CNPosterOnboardingWelcomeViewController *)self delegate];
    [v5 posterOnboardingViewControllerDidTapContinue:self];
  }

  else
  {
    v4 = CNUILogPosters();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_199A75000, v4, OS_LOG_TYPE_DEFAULT, "Onboarding view delegate is unexpectedly nil", buf, 2u);
    }

    [(CNPosterOnboardingWelcomeViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)viewIsAppearing:(BOOL)a3
{
  v38[4] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = CNPosterOnboardingWelcomeViewController;
  [(CNPosterOnboardingWelcomeViewController *)&v37 viewIsAppearing:a3];
  v4 = [(CNPosterOnboardingWelcomeViewController *)self navigationItem];
  v5 = [v4 navigationBar];
  [v5 frame];
  v7 = v6;

  v8 = [_TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper alloc];
  v9 = [(CNPosterOnboardingWelcomeViewController *)self contact];
  v10 = [(CNPosterOnboardingWelcomeViewController *)self hasOptionToSkip];
  v11 = [(CNPosterOnboardingWelcomeViewController *)self hasExistingNickname];
  v12 = [(CNPosterOnboardingWelcomeViewController *)self view];
  v13 = [v12 window];
  v14 = [v13 windowScene];
  v15 = [(CNPosterOnboardingWelcomeViewWrapper *)v8 initWithContact:v9 hasOptionToSkip:v10 hasExistingNickname:v11 navigationBarHeight:self delegate:v14 windowScene:v7];
  v16 = [(CNPosterOnboardingWelcomeViewWrapper *)v15 hostingController];
  v17 = [v16 view];

  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = [(CNPosterOnboardingWelcomeViewController *)self view];
  [v18 addSubview:v17];

  v29 = MEMORY[0x1E696ACD8];
  v35 = [v17 leadingAnchor];
  v36 = [(CNPosterOnboardingWelcomeViewController *)self view];
  v34 = [v36 leadingAnchor];
  v33 = [v35 constraintEqualToAnchor:v34];
  v38[0] = v33;
  v31 = [v17 trailingAnchor];
  v32 = [(CNPosterOnboardingWelcomeViewController *)self view];
  v30 = [v32 trailingAnchor];
  v28 = [v31 constraintEqualToAnchor:v30];
  v38[1] = v28;
  v19 = [v17 topAnchor];
  v20 = [(CNPosterOnboardingWelcomeViewController *)self view];
  v21 = [v20 topAnchor];
  v22 = [v19 constraintEqualToAnchor:v21];
  v38[2] = v22;
  v23 = [v17 bottomAnchor];
  v24 = [(CNPosterOnboardingWelcomeViewController *)self view];
  v25 = [v24 bottomAnchor];
  v26 = [v23 constraintEqualToAnchor:v25];
  v38[3] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  [v29 activateConstraints:v27];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CNPosterOnboardingWelcomeViewController;
  [(CNPosterOnboardingWelcomeViewController *)&v4 viewDidLoad];
  v3 = [(CNPosterOnboardingWelcomeViewController *)self navigationItem];
  [v3 _setBackgroundHidden:1];
}

- (CNPosterOnboardingWelcomeViewController)initWithContact:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = CNPosterOnboardingWelcomeViewController;
  v6 = [(CNPosterOnboardingWelcomeViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, a3);
    v8 = v7;
  }

  return v7;
}

@end