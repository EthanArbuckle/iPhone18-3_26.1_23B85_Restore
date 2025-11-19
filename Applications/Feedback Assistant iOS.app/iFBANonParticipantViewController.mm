@interface iFBANonParticipantViewController
- (UIButton)appleSeedWebsiteButton;
- (UIButton)developerWebsiteButton;
- (UIButton)signOutButton;
- (void)didTapAppleSeedWebsite:(id)a3;
- (void)didTapDeveloperWebsite:(id)a3;
- (void)didTapSignOut:(id)a3;
- (void)viewDidLoad;
@end

@implementation iFBANonParticipantViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = iFBANonParticipantViewController;
  [(FBASimpleTextNoticeController *)&v9 viewDidLoad];
  v3 = [(iFBANonParticipantViewController *)self appleSeedWebsiteButton];
  v4 = [v3 titleLabel];
  [v4 setTextAlignment:1];

  v5 = [(iFBANonParticipantViewController *)self developerWebsiteButton];
  v6 = [v5 titleLabel];
  [v6 setTextAlignment:1];

  v7 = [(iFBANonParticipantViewController *)self signOutButton];
  v8 = [v7 titleLabel];
  [v8 setTextAlignment:1];
}

- (void)didTapAppleSeedWebsite:(id)a3
{
  v4 = +[UIApplication sharedApplication];
  v3 = +[FBKSharedConstants portalURL];
  [v4 openURL:v3 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)didTapDeveloperWebsite:(id)a3
{
  v4 = +[UIApplication sharedApplication];
  v3 = +[FBKSharedConstants developerURL];
  [v4 openURL:v3 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)didTapSignOut:(id)a3
{
  v4 = +[FBKData sharedInstance];
  v5 = [v4 loginManager];
  [v5 logOut];

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