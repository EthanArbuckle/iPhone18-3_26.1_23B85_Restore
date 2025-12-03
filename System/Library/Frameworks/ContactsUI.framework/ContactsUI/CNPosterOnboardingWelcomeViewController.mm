@interface CNPosterOnboardingWelcomeViewController
- (CNPosterOnboardingWelcomeViewController)initWithContact:(id)contact;
- (CNPosterOnboardingWelcomeViewControllerDelegate)delegate;
- (void)onboardingWelcomeViewDidTapCancel;
- (void)onboardingWelcomeViewDidTapContinue;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation CNPosterOnboardingWelcomeViewController

- (CNPosterOnboardingWelcomeViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)onboardingWelcomeViewDidTapCancel
{
  delegate = [(CNPosterOnboardingWelcomeViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(CNPosterOnboardingWelcomeViewController *)self delegate];
    [delegate2 posterOnboardingViewControllerDidDidTapCancel:self];
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
  delegate = [(CNPosterOnboardingWelcomeViewController *)self delegate];

  if (delegate)
  {
    delegate2 = [(CNPosterOnboardingWelcomeViewController *)self delegate];
    [delegate2 posterOnboardingViewControllerDidTapContinue:self];
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

- (void)viewIsAppearing:(BOOL)appearing
{
  v38[4] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = CNPosterOnboardingWelcomeViewController;
  [(CNPosterOnboardingWelcomeViewController *)&v37 viewIsAppearing:appearing];
  navigationItem = [(CNPosterOnboardingWelcomeViewController *)self navigationItem];
  navigationBar = [navigationItem navigationBar];
  [navigationBar frame];
  v7 = v6;

  v8 = [_TtC10ContactsUI36CNPosterOnboardingWelcomeViewWrapper alloc];
  contact = [(CNPosterOnboardingWelcomeViewController *)self contact];
  hasOptionToSkip = [(CNPosterOnboardingWelcomeViewController *)self hasOptionToSkip];
  hasExistingNickname = [(CNPosterOnboardingWelcomeViewController *)self hasExistingNickname];
  view = [(CNPosterOnboardingWelcomeViewController *)self view];
  window = [view window];
  windowScene = [window windowScene];
  v15 = [(CNPosterOnboardingWelcomeViewWrapper *)v8 initWithContact:contact hasOptionToSkip:hasOptionToSkip hasExistingNickname:hasExistingNickname navigationBarHeight:self delegate:windowScene windowScene:v7];
  hostingController = [(CNPosterOnboardingWelcomeViewWrapper *)v15 hostingController];
  view2 = [hostingController view];

  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  view3 = [(CNPosterOnboardingWelcomeViewController *)self view];
  [view3 addSubview:view2];

  v29 = MEMORY[0x1E696ACD8];
  leadingAnchor = [view2 leadingAnchor];
  view4 = [(CNPosterOnboardingWelcomeViewController *)self view];
  leadingAnchor2 = [view4 leadingAnchor];
  v33 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v38[0] = v33;
  trailingAnchor = [view2 trailingAnchor];
  view5 = [(CNPosterOnboardingWelcomeViewController *)self view];
  trailingAnchor2 = [view5 trailingAnchor];
  v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v38[1] = v28;
  topAnchor = [view2 topAnchor];
  view6 = [(CNPosterOnboardingWelcomeViewController *)self view];
  topAnchor2 = [view6 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v38[2] = v22;
  bottomAnchor = [view2 bottomAnchor];
  view7 = [(CNPosterOnboardingWelcomeViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v26 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v38[3] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  [v29 activateConstraints:v27];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CNPosterOnboardingWelcomeViewController;
  [(CNPosterOnboardingWelcomeViewController *)&v4 viewDidLoad];
  navigationItem = [(CNPosterOnboardingWelcomeViewController *)self navigationItem];
  [navigationItem _setBackgroundHidden:1];
}

- (CNPosterOnboardingWelcomeViewController)initWithContact:(id)contact
{
  contactCopy = contact;
  v10.receiver = self;
  v10.super_class = CNPosterOnboardingWelcomeViewController;
  v6 = [(CNPosterOnboardingWelcomeViewController *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, contact);
    v8 = v7;
  }

  return v7;
}

@end