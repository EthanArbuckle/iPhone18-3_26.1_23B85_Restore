@interface BuddyAutoUpdateController
+ (void)clearAutoDownloadWithUpdateSetting:(id)a3;
+ (void)setAutoDownloadWithUpdateEnabled:(BOOL)a3 presented:(BOOL)a4 buddyPreferences:(id)a5;
- (BOOL)controllerNeedsToRun;
- (BuddyAutoUpdateController)init;
- (void)_enableAutomaticDownload:(BOOL)a3 enableAutomaticUpdate:(BOOL)a4;
- (void)_updateAutomaticallyPressed:(id)a3;
- (void)_updateManuallyPressed:(id)a3;
- (void)controllerWasPopped;
- (void)performExtendedInitializationWithCompletion:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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
  v9 = self;
  v8 = a2;
  v7.receiver = self;
  v7.super_class = BuddyAutoUpdateController;
  [(BuddyAutoUpdateController *)&v7 viewDidLoad];
  v2 = +[NSBundle mainBundle];
  v3 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"AUTO_UPDATE_BACK_TITLE"];
  v4 = [(NSBundle *)v2 localizedStringForKey:v3 value:&stru_10032F900 table:@"Localizable"];
  v5 = [(BuddyAutoUpdateController *)v9 navigationItem];
  [v5 setBackButtonTitle:v4];

  v6 = [(BuddyAutoUpdateController *)v9 buddy_animationController:@"Update"];
  [(BuddyAutoUpdateController *)v9 setAnimationController:v6];
}

- (void)viewWillAppear:(BOOL)a3
{
  v7 = self;
  v6 = a2;
  v5 = a3;
  v4.receiver = self;
  v4.super_class = BuddyAutoUpdateController;
  [(BuddyAutoUpdateController *)&v4 viewWillAppear:a3];
  v3 = [(BuddyAutoUpdateController *)v7 animationController];
  [(OBAnimationController *)v3 startAnimation];
}

+ (void)setAutoDownloadWithUpdateEnabled:(BOOL)a3 presented:(BOOL)a4 buddyPreferences:(id)a5
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  location = 0;
  objc_storeStrong(&location, a5);
  v5 = location;
  v6 = [NSNumber numberWithBool:v9];
  [v5 setObject:v6 forKey:@"AutoUpdatePresented"];

  v7 = [BYSUManagerClient createWithQueue:0 clientType:1];
  [v7 enableAutomaticDownload:v10];
  [v7 enableAutomaticUpdateV2:v10];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
}

+ (void)clearAutoDownloadWithUpdateSetting:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [objc_opt_class() setAutoDownloadWithUpdateEnabled:0 presented:0 buddyPreferences:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_enableAutomaticDownload:(BOOL)a3 enableAutomaticUpdate:(BOOL)a4
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = [BYSUManagerClient createWithQueue:0 clientType:1];
  [v10 enableAutomaticDownload:v12];
  [v10 enableAutomaticUpdateV2:v11];
  v4 = [(BuddyAutoUpdateController *)v14 settingsManager];
  [(BFFSettingsManager *)v4 setAutoDownloadEnabled:v12];

  v5 = [(BuddyAutoUpdateController *)v14 settingsManager];
  [(BFFSettingsManager *)v5 setAutoUpdateEnabled:v11];

  v6 = [(BuddyAutoUpdateController *)v14 paneFeatureAnalyticsManager];
  v7 = [NSNumber numberWithBool:v12];
  [(BYPaneFeatureAnalyticsManager *)v6 recordActionWithValue:v7 forFeature:2];

  v8 = [(BuddyAutoUpdateController *)v14 paneFeatureAnalyticsManager];
  v9 = [NSNumber numberWithBool:v11];
  [(BYPaneFeatureAnalyticsManager *)v8 recordActionWithValue:v9 forFeature:1];

  objc_storeStrong(&v10, 0);
}

- (void)_updateAutomaticallyPressed:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyAutoUpdateController *)v6 _enableAutomaticDownload:1 enableAutomaticUpdate:1];
  v3 = [(BuddyAutoUpdateController *)v6 buddyPreferences];
  [(BYPreferencesController *)v3 setObject:&__kCFBooleanTrue forKey:@"AutoUpdatePresented"];

  v4 = [(BuddyWelcomeController *)v6 delegate];
  [(BFFFlowItemDelegate *)v4 flowItemDone:v6];

  objc_storeStrong(location, 0);
}

- (void)_updateManuallyPressed:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(BuddyAutoUpdateController *)v6 _enableAutomaticDownload:1 enableAutomaticUpdate:0];
  v3 = [(BuddyAutoUpdateController *)v6 buddyPreferences];
  [(BYPreferencesController *)v3 setObject:&__kCFBooleanTrue forKey:@"AutoUpdatePresented"];

  v4 = [(BuddyWelcomeController *)v6 delegate];
  [(BFFFlowItemDelegate *)v4 flowItemDone:v6];

  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v2 = [(BuddyAutoUpdateController *)self buddyPreferences:a2];
  v3 = [(BYPreferencesController *)v2 BOOLForKey:@"AutoUpdatePresented"]^ 1;

  return v3 & 1;
}

- (void)performExtendedInitializationWithCompletion:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(BuddyAutoUpdateController *)v18 capabilities];
  v4 = [(BYCapabilities *)v3 mgHasGreenTea];

  v5 = v18;
  if (v4)
  {
    v6 = +[NSBundle mainBundle];
    v7 = [UIDevice modelSpecificLocalizedStringKeyForKey:@"AUTO_UPDATE_INSTALL_UPDATES_AUTOMATICALLY"];
    v8 = [(NSBundle *)v6 localizedStringForKey:v7 value:&stru_10032F900 table:@"Localizable"];
    [(BuddyWelcomeController *)v5 addBoldButton:v8 action:"_updateAutomaticallyPressed:"];

    v9 = v18;
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

    v15 = v18;
    v10 = +[NSBundle mainBundle];
    v11 = [(NSBundle *)v10 localizedStringForKey:@"AUTO_UPDATE_DOWNLOAD_UPDATES_AUTOMATICALLY" value:&stru_10032F900 table:@"Localizable"];
    [(BuddyWelcomeController *)v15 addLinkButton:v11 action:"_updateManuallyPressed:"];
  }

  v16 = [(BuddyAutoUpdateController *)v18 chronicle];
  [(BYChronicle *)v16 recordFeatureShown:3];

  if (location[0])
  {
    (*(location[0] + 2))(location[0], 1);
  }

  objc_storeStrong(location, 0);
}

- (void)controllerWasPopped
{
  v2 = [(BuddyAutoUpdateController *)self buddyPreferences];
  [(BYPreferencesController *)v2 removeObjectForKey:@"AutoUpdatePresented"];

  v3 = [(BuddyAutoUpdateController *)self paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)v3 clearActionForFeature:1];

  v4 = [(BuddyAutoUpdateController *)self paneFeatureAnalyticsManager];
  [(BYPaneFeatureAnalyticsManager *)v4 clearActionForFeature:2];
}

@end