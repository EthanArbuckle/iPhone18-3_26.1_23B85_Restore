@interface iFBANonParticipantViewController
- (UIButton)appleSeedWebsiteButton;
- (UIButton)developerWebsiteButton;
- (UIButton)signOutButton;
- (void)didTapAppleSeedWebsite:(id)website;
- (void)didTapDeveloperWebsite:(id)website;
- (void)didTapSignOut:(id)out;
- (void)viewDidLoad;
@end

@implementation iFBANonParticipantViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = iFBANonParticipantViewController;
  [(FBASimpleTextNoticeController *)&v9 viewDidLoad];
  appleSeedWebsiteButton = [(iFBANonParticipantViewController *)self appleSeedWebsiteButton];
  titleLabel = [appleSeedWebsiteButton titleLabel];
  [titleLabel setTextAlignment:1];

  developerWebsiteButton = [(iFBANonParticipantViewController *)self developerWebsiteButton];
  titleLabel2 = [developerWebsiteButton titleLabel];
  [titleLabel2 setTextAlignment:1];

  signOutButton = [(iFBANonParticipantViewController *)self signOutButton];
  titleLabel3 = [signOutButton titleLabel];
  [titleLabel3 setTextAlignment:1];
}

- (void)didTapAppleSeedWebsite:(id)website
{
  v4 = +[UIApplication sharedApplication];
  v3 = +[FBKSharedConstants portalURL];
  [v4 openURL:v3 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)didTapDeveloperWebsite:(id)website
{
  v4 = +[UIApplication sharedApplication];
  v3 = +[FBKSharedConstants developerURL];
  [v4 openURL:v3 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)didTapSignOut:(id)out
{
  v4 = +[FBKData sharedInstance];
  loginManager = [v4 loginManager];
  [loginManager logOut];

  +[FBKFileManager deleteAllDraftDirectories];

  [(iFBANonParticipantViewController *)self dismissViewControllerAnimated:1 completion:&stru_1000DF450];
}

- (UIButton)appleSeedWebsiteButton
{
  WeakRetained = objc_loadWeakRetained(&self->_appleSeedWebsiteButton);

  return WeakRetained;
}

- (UIButton)developerWebsiteButton
{
  WeakRetained = objc_loadWeakRetained(&self->_developerWebsiteButton);

  return WeakRetained;
}

- (UIButton)signOutButton
{
  WeakRetained = objc_loadWeakRetained(&self->_signOutButton);

  return WeakRetained;
}

@end