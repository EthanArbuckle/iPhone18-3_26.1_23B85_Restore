@interface BuddyMessagesContactsController
- (BOOL)controllerNeedsToRun;
- (BuddyMessagesContactsController)init;
- (void)continueTapped:(id)a3;
- (void)viewDidLoad;
@end

@implementation BuddyMessagesContactsController

- (BuddyMessagesContactsController)init
{
  location = self;
  v11[1] = a2;
  v2 = +[UIScreen mainScreen];
  [(UIScreen *)v2 scale];
  v11[0] = [UIImage _applicationIconImageForBundleIdentifier:@"com.apple.MobileSMS" format:2 scale:?];

  v3 = location;
  v4 = +[NSBundle mainBundle];
  v5 = [(NSBundle *)v4 localizedStringForKey:@"MESSAGES_CONTACTS_TITLE" value:&stru_10032F900 table:@"Localizable"];
  v6 = +[NSBundle mainBundle];
  v7 = [(NSBundle *)v6 localizedStringForKey:@"MESSAGES_CONTACTS_DETAIL" value:&stru_10032F900 table:@"Localizable"];
  location = 0;
  v10.receiver = v3;
  v10.super_class = BuddyMessagesContactsController;
  location = [(BuddyMessagesContactsController *)&v10 initWithTitle:v5 detailText:v7 icon:v11[0]];
  objc_storeStrong(&location, location);

  v8 = location;
  objc_storeStrong(v11, 0);
  objc_storeStrong(&location, 0);
  return v8;
}

- (void)viewDidLoad
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = BuddyMessagesContactsController;
  [(BuddyDataUsageController *)&v4 viewDidLoad];
  v2 = [(BuddyMessagesContactsController *)v6 buttonTray];
  v7 = BYPrivacyMessagesIdentifier;
  v3 = [NSArray arrayWithObjects:&v7 count:1];
  [v2 setPrivacyLinkForBundles:v3];
}

- (void)continueTapped:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = +[BYPreferencesController buddyPreferences];
  [v3 setObject:&__kCFBooleanTrue forKey:@"MessagesContactsPresented"];

  v4.receiver = v6;
  v4.super_class = BuddyMessagesContactsController;
  [(BuddyDataUsageController *)&v4 continueTapped:v6];
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  v7 = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyMessagesContactsController;
  if ([(BuddyDataUsageController *)&v5 controllerNeedsToRun])
  {
    v2 = [(BuddyDataUsageController *)v7 existingSettings];
    v3 = [(BuddyExistingSettings *)v2 backupMetadata];
    v8 = ([v3 messagesContactsPresented] ^ 1) & 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

@end