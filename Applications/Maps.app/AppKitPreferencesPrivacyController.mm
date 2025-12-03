@interface AppKitPreferencesPrivacyController
- (AppKitPreferencesPrivacyController)initWithBundleIdentifier:(id)identifier;
- (UGCAppKitPreferencesPrivacyControllerDelegate)delegate;
- (void)_dismissSplashScreen;
- (void)present;
@end

@implementation AppKitPreferencesPrivacyController

- (UGCAppKitPreferencesPrivacyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_dismissSplashScreen
{
  [(MacSceneHostingPreferencesPresentationController *)self->_presentationController dismissScene];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained preferencesPrivacyControllerDidDismiss:self];
}

- (void)present
{
  v3 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"_dismissSplashScreen"];
  v4 = [OBBundle bundleWithIdentifier:self->_bundleIdentifier];
  v5 = [OBPrivacySplashController alloc];
  privacyFlow = [v4 privacyFlow];
  v7 = [v5 initWithFlow:privacyFlow];

  [v7 setShowsLinkToUnifiedAbout:1];
  objc_storeStrong(&self->_obkSplashController, v7);
  navigationItem = [(OBPrivacySplashController *)self->_obkSplashController navigationItem];
  [navigationItem setRightBarButtonItem:v3];

  v9 = [[UINavigationController alloc] initWithRootViewController:self->_obkSplashController];
  navigationController = self->_navigationController;
  self->_navigationController = v9;

  [(UINavigationController *)self->_navigationController setNavigationBarHidden:1];
  v11 = +[UIApplication sharedMapsDelegate];
  loadAppKitBundle = [v11 loadAppKitBundle];
  v13 = [loadAppKitBundle classNamed:@"MacSceneHostingPreferencesPresentationController"];

  objc_initWeak(&location, self);
  v14 = [v13 alloc];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100C8A610;
  v17[3] = &unk_10164FA10;
  objc_copyWeak(&v18, &location);
  v15 = [v14 initWithSetupBlock:v17];
  presentationController = self->_presentationController;
  self->_presentationController = v15;

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (AppKitPreferencesPrivacyController)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = AppKitPreferencesPrivacyController;
  v6 = [(AppKitPreferencesPrivacyController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, identifier);
  }

  return v7;
}

@end