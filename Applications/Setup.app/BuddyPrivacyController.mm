@interface BuddyPrivacyController
+ (void)initialize;
- (BFFFlowItemDelegate)delegate;
- (BOOL)controllerNeedsToRun;
- (id)viewController;
- (void)_writeOutCurrentPrivacyVersion;
- (void)controllerDone;
- (void)learnMorePressed:(id)pressed;
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
  selfCopy = self;
  location[1] = a2;
  if (!self->_viewController)
  {
    v2 = [BuddyPrivacySplashController alloc];
    v3 = [(BuddyPrivacySplashController *)v2 initWithPrivacyIdentifier:BYPrivacyPrivacyPaneIdentifier];
    viewController = selfCopy->_viewController;
    selfCopy->_viewController = v3;

    objc_initWeak(location, selfCopy);
    v5 = selfCopy->_viewController;
    v14 = _NSConcreteStackBlock;
    v15 = -1073741824;
    v16 = 0;
    v17 = sub_1000B96F4;
    v18 = &unk_10032AF58;
    objc_copyWeak(&v19, location);
    [(OBPrivacySplashController *)v5 setDismissHandlerForDefaultButton:&v14];
    headerView = [(OBPrivacySplashController *)selfCopy->_viewController headerView];
    LODWORD(v7) = 1045220557;
    [headerView setTitleHyphenationFactor:v7];

    v13 = +[OBLinkTrayButton linkButton];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = +[NSBundle mainBundle];
    v9 = [(NSBundle *)v8 localizedStringForKey:@"LEARN_MORE" value:&stru_10032F900 table:@"Localizable"];
    [v13 setTitle:v9 forState:0];

    [v13 addTarget:selfCopy action:"learnMorePressed:" forControlEvents:64];
    buttonTray = [(OBPrivacySplashController *)selfCopy->_viewController buttonTray];
    [buttonTray addButton:v13];

    objc_storeStrong(&v13, 0);
    objc_destroyWeak(&v19);
    objc_destroyWeak(location);
  }

  v11 = selfCopy->_viewController;

  return v11;
}

- (void)_writeOutCurrentPrivacyVersion
{
  v2 = [OBBundle bundleWithIdentifier:BYPrivacyPrivacyPaneIdentifier];
  privacyFlow = [(OBBundle *)v2 privacyFlow];
  contentVersion = [privacyFlow contentVersion];

  buddyPreferences = [(BuddyPrivacyController *)self buddyPreferences];
  [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanTrue forKey:@"PrivacyPresented"];

  buddyPreferences2 = [(BuddyPrivacyController *)self buddyPreferences];
  v7 = [NSNumber numberWithUnsignedInteger:contentVersion];
  [(BYPreferencesController *)buddyPreferences2 setObject:v7 forKey:@"PrivacyContentVersion"];
}

- (void)controllerDone
{
  [(BuddyPrivacyController *)self _writeOutCurrentPrivacyVersion];
  delegate = [(BuddyPrivacyController *)self delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:self];
}

- (void)viewDidAppear
{
  [(BuddyPrivacyController *)self viewDidAppear];
  buddyPreferences = [(BuddyPrivacyController *)self buddyPreferences];
  [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanFalse forKey:@"PrivacyPresented"];
}

- (void)learnMorePressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  v5 = +[OBPrivacyPresenter presenterForPrivacyUnifiedAbout];
  viewController = [(BuddyPrivacyController *)selfCopy viewController];
  [v5 setPresentingViewController:viewController];

  combinedController = [v5 combinedController];
  [combinedController setPresentedFromPrivacyPane:1];

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