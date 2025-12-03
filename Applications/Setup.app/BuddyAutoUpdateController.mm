@interface BuddyAutoUpdateController
+ (void)clearAutoDownloadWithUpdateSetting:(id)setting;
+ (void)setAutoDownloadWithUpdateEnabled:(BOOL)enabled presented:(BOOL)presented buddyPreferences:(id)preferences;
- (BOOL)controllerNeedsToRun;
- (BuddyAutoUpdateController)init;
- (void)_enableAutomaticDownload:(BOOL)download enableAutomaticUpdate:(BOOL)update;
- (void)_updateAutomaticallyPressed:(id)pressed;
- (void)_updateManuallyPressed:(id)pressed;
- (void)controllerWasPopped;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation BuddyAutoUpdateController

- (BuddyAutoUpdateController)init
{
  location = self;
  v10[1] = a2;
  v2 = +[NSBundle mainBundle];
  v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"AUTO_UPDATE_TITLE"];
  v10[0] = [(NSBundle *)v2 localizedStringForKey:v3 value:&stru_10032F900 table:@"Localizable"];

  v4 = +[NSBundle mainBundle];
  v9 = [(NSBundle *)v4 localizedStringForKey:@"AUTO_UPDATE_DESCRIPTION" value:&stru_10032F900 table:@"Localizable"];

  v5 = location;
  location = 0;
  v8.receiver = v5;
  v8.super_class = BuddyAutoUpdateController;
  location = [(BuddyAutoUpdateController *)&v8 initWithTitle:v10[0] detailText:v9 symbolName:0 contentLayout:2];
  objc_storeStrong(&location, location);
  v6 = location;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&location, 0);
  return v6;
}

- (void)viewDidLoad
{
  selfCopy = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyAutoUpdateController;
  [(BuddyAutoUpdateController *)&v7 viewDidLoad];
  v2 = +[NSBundle mainBundle];
  v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"AUTO_UPDATE_BACK_TITLE"];
  v4 = [(NSBundle *)v2 localizedStringForKey:v3 value:&stru_10032F900 table:@"Localizable"];
  navigationItem = [(BuddyAutoUpdateController *)selfCopy navigationItem];
  [navigationItem setBackButtonTitle:v4];

  v6 = [(BuddyAutoUpdateController *)selfCopy buddy_animationController:@"Update"];
  [(BuddyAutoUpdateController *)selfCopy setAnimationController:v6];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  v6 = a2;
  appearCopy = appear;
  v4.receiver = self;
  v4.super_class = BuddyAutoUpdateController;
  [(BuddyAutoUpdateController *)&v4 viewWillAppear:appear];
  animationController = [(BuddyAutoUpdateController *)selfCopy animationController];
  [(OBAnimationController *)animationController startAnimation];
}

+ (void)setAutoDownloadWithUpdateEnabled:(BOOL)enabled presented:(BOOL)presented buddyPreferences:(id)preferences
{
  selfCopy = self;
  v11 = a2;
  enabledCopy = enabled;
  presentedCopy = presented;
  location = 0;
  objc_storeStrong(&location, preferences);
  v5 = location;
  v6 = [NSNumber numberWithBool:presentedCopy];
  [v5 setObject:v6 forKey:@"AutoUpdatePresented"];

  v7 = [BYSUManagerClient createWithQueue:0 clientType:1];
  [v7 enableAutomaticDownload:enabledCopy];
  [v7 enableAutomaticUpdateV2:enabledCopy];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
}

+ (void)clearAutoDownloadWithUpdateSetting:(id)setting
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, setting);
  [objc_opt_class() setAutoDownloadWithUpdateEnabled:0 presented:0 buddyPreferences:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_enableAutomaticDownload:(BOOL)download enableAutomaticUpdate:(BOOL)update
{
  selfCopy = self;
  v13 = a2;
  downloadCopy = download;
  updateCopy = update;
  v10 = [BYSUManagerClient createWithQueue:0 clientType:1];
  [v10 enableAutomaticDownload:downloadCopy];
  [v10 enableAutomaticUpdateV2:updateCopy];
  settingsManager = [(BuddyAutoUpdateController *)selfCopy settingsManager];
  [(BFFSettingsManager *)settingsManager setAutoDownloadEnabled:downloadCopy];

  settingsManager2 = [(BuddyAutoUpdateController *)selfCopy settingsManager];
  [(BFFSettingsManager *)settingsManager2 setAutoUpdateEnabled:updateCopy];

  paneFeatureAnalyticsManager = [(BuddyAutoUpdateController *)selfCopy paneFeatureAnalyticsManager];
  v7 = [NSNumber numberWithBool:downloadCopy];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager recordActionWithValue:v7 forFeature:2];

  paneFeatureAnalyticsManager2 = [(BuddyAutoUpdateController *)selfCopy paneFeatureAnalyticsManager];
  v9 = [NSNumber numberWithBool:updateCopy];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager2 recordActionWithValue:v9 forFeature:1];

  objc_storeStrong(&v10, 0);
}

- (void)_updateAutomaticallyPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  [(BuddyAutoUpdateController *)selfCopy _enableAutomaticDownload:1 enableAutomaticUpdate:1];
  buddyPreferences = [(BuddyAutoUpdateController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanTrue forKey:@"AutoUpdatePresented"];

  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

- (void)_updateManuallyPressed:(id)pressed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, pressed);
  [(BuddyAutoUpdateController *)selfCopy _enableAutomaticDownload:1 enableAutomaticUpdate:0];
  buddyPreferences = [(BuddyAutoUpdateController *)selfCopy buddyPreferences];
  [(BYPreferencesController *)buddyPreferences setObject:&__kCFBooleanTrue forKey:@"AutoUpdatePresented"];

  delegate = [(BuddyWelcomeController *)selfCopy delegate];
  [(BFFFlowItemDelegate *)delegate flowItemDone:selfCopy];

  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyAutoUpdateController *)self buddyPreferences:a2];
  v3 = [(BYPreferencesController *)v2 BOOLForKey:@"AutoUpdatePresented"]^ 1;

  return v3 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  capabilities = [(BuddyAutoUpdateController *)selfCopy capabilities];
  mgHasGreenTea = [(BYCapabilities *)capabilities mgHasGreenTea];

  v5 = selfCopy;
  if (mgHasGreenTea)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"AUTO_UPDATE_INSTALL_UPDATES_AUTOMATICALLY"];
    v8 = [(NSBundle *)v6 localizedStringForKey:v7 value:&stru_10032F900 table:@"Localizable"];
    [(BuddyWelcomeController *)v5 addBoldButton:v8 action:"_updateAutomaticallyPressed:"];

    v9 = selfCopy;
    v10 = +[NSBundle mainBundle];
    v11 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"AUTO_UPDATE_DOWNLOAD_IOS_UPDATES_AUTOMATICALLY"];
    v12 = [(NSBundle *)v10 localizedStringForKey:v11 value:&stru_10032F900 table:@"Localizable"];
    [(BuddyWelcomeController *)v9 addLinkButton:v12 action:"_updateManuallyPressed:"];
  }

  else
  {
    v13 = +[NSBundle mainBundle];
    v14 = [(NSBundle *)v13 localizedStringForKey:@"CONTINUE" value:&stru_10032F900 table:@"Localizable"];
    [(BuddyWelcomeController *)v5 addBoldButton:v14 action:"_updateAutomaticallyPressed:"];

    v15 = selfCopy;
    v10 = +[NSBundle mainBundle];
    v11 = [(NSBundle *)v10 localizedStringForKey:@"AUTO_UPDATE_DOWNLOAD_UPDATES_AUTOMATICALLY" value:&stru_10032F900 table:@"Localizable"];
    [(BuddyWelcomeController *)v15 addLinkButton:v11 action:"_updateManuallyPressed:"];
  }

  chronicle = [(BuddyAutoUpdateController *)selfCopy chronicle];
  [(BYChronicle *)chronicle recordFeatureShown:3];

  if (location[0])
  {
    (*(location[0] + 2))(location[0], 1);
  }

  objc_storeStrong(location, 0);
}

- (void)controllerWasPopped
{
  buddyPreferences = [(BuddyAutoUpdateController *)self buddyPreferences];
  [(BYPreferencesController *)buddyPreferences removeObjectForKey:@"AutoUpdatePresented"];

  paneFeatureAnalyticsManager = [(BuddyAutoUpdateController *)self paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager clearActionForFeature:1];

  paneFeatureAnalyticsManager2 = [(BuddyAutoUpdateController *)self paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)paneFeatureAnalyticsManager2 clearActionForFeature:2];
}

@end