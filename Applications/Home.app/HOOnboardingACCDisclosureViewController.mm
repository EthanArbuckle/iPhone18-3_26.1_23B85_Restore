@interface HOOnboardingACCDisclosureViewController
- (HOOnboardingACCDisclosureViewController)initWithDelegate:(id)delegate homeName:(id)name currentUser:(id)user;
- (HOOnboardingChildViewControllerDelegate)delegate;
- (HOOnboardingChildViewControllerNavigationBarDelegate)navigationBarDelegate;
- (void)_done:(id)_done;
@end

@implementation HOOnboardingACCDisclosureViewController

- (HOOnboardingACCDisclosureViewController)initWithDelegate:(id)delegate homeName:(id)name currentUser:(id)user
{
  delegateCopy = delegate;
  nameCopy = name;
  userCopy = user;
  v11 = sub_100041CEC(@"HOACCDisclosure_Title");
  v12 = sub_100041CEC(@"HOACCDisclosure_Subtitle");
  v30.receiver = self;
  v30.super_class = HOOnboardingACCDisclosureViewController;
  v13 = [(HOOnboardingACCDisclosureViewController *)&v30 initWithTitle:v11 detailText:v12 icon:0];

  if (v13)
  {
    v14 = [UIImage _systemImageNamed:@"house.fill"];
    v29 = userCopy;
    v15 = +[UIColor hf_keyColor];
    v16 = [v14 imageWithTintColor:v15];

    v17 = sub_100041CEC(@"HOACCDisclosure_AtHomeDescription");
    nameCopy = [NSString stringWithValidatedFormat:v17 validFormatSpecifiers:@"%@" error:0, nameCopy];

    v19 = sub_100041CEC(@"HOACCDisclosure_AtHomeTitle");
    [(HOOnboardingACCDisclosureViewController *)v13 addBulletedListItemWithTitle:v19 description:nameCopy image:v16];

    v20 = [UIImage _systemImageNamed:@"figure.walk.departure"];
    v21 = +[UIColor hf_keyColor];
    v22 = [v20 imageWithTintColor:v21];

    v23 = sub_100041CEC(@"HOACCDisclosure_AwayDescription");
    nameCopy2 = [NSString stringWithValidatedFormat:v23 validFormatSpecifiers:@"%@" error:0, nameCopy];

    v25 = sub_100041CEC(@"HOACCDisclosure_AwayTitle");
    [(HOOnboardingACCDisclosureViewController *)v13 addBulletedListItemWithTitle:v25 description:nameCopy2 image:v22];

    v26 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:v13 action:"_done:"];
    navigationItem = [(HOOnboardingACCDisclosureViewController *)v13 navigationItem];
    [navigationItem setRightBarButtonItem:v26];

    userCopy = v29;
    [(HOOnboardingACCDisclosureViewController *)v13 setModalInPresentation:1];
    [(HOOnboardingACCDisclosureViewController *)v13 setDelegate:delegateCopy];
    [(HOOnboardingACCDisclosureViewController *)v13 setUser:v29];
  }

  return v13;
}

- (void)_done:(id)_done
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[HOOnboardingACCDisclosureViewController] User tapped continue button", v6, 2u);
  }

  [(HOOnboardingACCDisclosureViewController *)self _setUserDisclosed];
  delegate = [(HOOnboardingACCDisclosureViewController *)self delegate];
  [delegate childViewControllerDidFinish:self];
}

- (HOOnboardingChildViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (HOOnboardingChildViewControllerNavigationBarDelegate)navigationBarDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->navigationBarDelegate);

  return WeakRetained;
}

@end