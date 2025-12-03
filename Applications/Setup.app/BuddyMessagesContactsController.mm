@interface BuddyMessagesContactsController
- (BOOL)controllerNeedsToRun;
- (BuddyMessagesContactsController)init;
- (void)continueTapped:(id)tapped;
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
  selfCopy = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = BuddyMessagesContactsController;
  [(BuddyDataUsageController *)&v4 viewDidLoad];
  buttonTray = [(BuddyMessagesContactsController *)selfCopy buttonTray];
  v7 = BYPrivacyMessagesIdentifier;
  v3 = [NSArray arrayWithObjects:&v7 count:1];
  [buttonTray setPrivacyLinkForBundles:v3];
}

- (void)continueTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  v3 = +[BYPreferencesController buddyPreferences];
  [v3 setObject:&__kCFBooleanTrue forKey:@"MessagesContactsPresented"];

  v4.receiver = selfCopy;
  v4.super_class = BuddyMessagesContactsController;
  [(BuddyDataUsageController *)&v4 continueTapped:selfCopy];
  objc_storeStrong(location, 0);
}

- (BOOL)controllerNeedsToRun
{
  selfCopy = self;
  v6 = a2;
  v5.receiver = self;
  v5.super_class = BuddyMessagesContactsController;
  if ([(BuddyDataUsageController *)&v5 controllerNeedsToRun])
  {
    existingSettings = [(BuddyDataUsageController *)selfCopy existingSettings];
    backupMetadata = [(BuddyExistingSettings *)existingSettings backupMetadata];
    v8 = ([backupMetadata messagesContactsPresented] ^ 1) & 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

@end