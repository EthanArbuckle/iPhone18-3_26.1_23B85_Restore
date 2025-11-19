@interface BuddyPrivacyController
+ (void)initialize;
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (id)viewController;
- (void)_writeOutCurrentPrivacyVersion;
- (void)controllerDone;
- (void)learnMorePressed:(id)a3;
- (void)viewDidAppear;
@end

@implementation BuddyPrivacyController

+ (void)initialize
{
  v2 = [OBCapabilities sharedCapabilities:a2];
  [v2 setPreventURLDataDetection:1];

  v3 = +[OBCapabilities sharedCapabilities];
  [v3 setPreventOpeningSafari:1];
}

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyPrivacyController *)self buddyPreferences:a2];
  v3 = [(BYPreferencesController *)v2 BOOLForKey:@"PrivacyPresented"]^ 1;

  return v3 & 1;
}

- (id)viewController
{
  v21 = self;
  location[1] = a2;
  if (!self->_viewController)
  {
    v2 = [BuddyPrivacySplashController alloc];
    v3 = [(BuddyPrivacySplashController *)v2 initWithPrivacyIdentifier:BYPrivacyPrivacyPaneIdentifier];
    viewController = v21->_viewController;
    v21->_viewController = v3;

    objc_initWeak(location, v21);
    v5 = v21->_viewController;
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_1000B96F4;
    v18 = &unk_10032AF58;
    objc_copyWeak(&v19, location);
    [(OBPrivacySplashController *)v5 setDismissHandlerForDefaultButton:&v14];
    v6 = [(OBPrivacySplashController *)v21->_viewController headerView];
    LODWORD(v7) = 1045220557;
    [v6 setTitleHyphenationFactor:v7];

    v13 = +[OBLinkTrayButton linkButton];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = +[NSBundle mainBundle];
    v9 = [(NSBundle *)v8 localizedStringForKey:@"LEARN_MORE" value:&stru_10032F900 table:@"Localizable"];
    [v13 setTitle:v9 forState:0];

    [v13 addTarget:v21 action:"learnMorePressed:" forControlEvents:64];
    v10 = [(OBPrivacySplashController *)v21->_viewController buttonTray];
    [v10 addButton:v13];

    objc_storeStrong(&v13, 0);
    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  v11 = v21->_viewController;

  return v11;
}

- (void)_writeOutCurrentPrivacyVersion
{
  v2 = [OBBundle bundleWithIdentifier:BYPrivacyPrivacyPaneIdentifier];
  v3 = [(OBBundle *)v2 privacyFlow];
  v4 = [v3 contentVersion];

  v5 = [(BuddyPrivacyController *)self buddyPreferences];
  [(BYPreferencesController *)v5 setObject:&__kCFBooleanTrue forKey:@"PrivacyPresented"];

  v6 = [(BuddyPrivacyController *)self buddyPreferences];
  v7 = [NSNumber numberWithUnsignedInteger:v4];
  [(BYPreferencesController *)v6 setObject:v7 forKey:@"PrivacyContentVersion"];
}

- (void)controllerDone
{
  [(BuddyPrivacyController *)self _writeOutCurrentPrivacyVersion];
  v2 = [(BuddyPrivacyController *)self delegate];
  [(BFFFlowItemDelegate *)v2 flowItemDone:self];
}

- (void)viewDidAppear
{
  [(BuddyPrivacyController *)self viewDidAppear];
  v2 = [(BuddyPrivacyController *)self buddyPreferences];
  [(BYPreferencesController *)v2 setObject:&__kCFBooleanFalse forKey:@"PrivacyPresented"];
}

- (void)learnMorePressed:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = +[OBPrivacyPresenter presenterForPrivacyUnifiedAbout];
  v3 = [(BuddyPrivacyController *)v7 viewController];
  [v5 setPresentingViewController:v3];

  v4 = [v5 combinedController];
  [v4 setPresentedFromPrivacyPane:1];

  [v5 present];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (BFFFlowItemDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end