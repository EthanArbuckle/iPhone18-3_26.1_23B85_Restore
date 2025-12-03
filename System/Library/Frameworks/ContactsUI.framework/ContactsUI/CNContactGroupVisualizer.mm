@interface CNContactGroupVisualizer
+ (id)allContactsOnboardingViewController;
+ (id)allContactsOnboardingViewControllerLimitMaxContactsCount:(int)count;
+ (id)allContactsSettingsViewController;
+ (id)allContactsSettingsViewControllerLimitMaxContactsCount:(int)count;
+ (id)fullAccessPromptSettingsContactsController;
+ (id)hostingControllerForType:(int64_t)type contacts:(id)contacts limitMaxContactsCount:(int)count;
+ (id)viewControllerForContacts:(id)contacts;
+ (id)viewControllerForContacts:(id)contacts limitMaxContactsCount:(int)count;
@end

@implementation CNContactGroupVisualizer

+ (id)hostingControllerForType:(int64_t)type contacts:(id)contacts limitMaxContactsCount:(int)count
{
  contactsCopy = contacts;
  v8 = [_TtC10ContactsUI35CNContactGroupVisualizerViewWrapper alloc];
  if (count < 1)
  {
    v9 = [(CNContactGroupVisualizerViewWrapper *)v8 initWithType:type contacts:contactsCopy];
  }

  else
  {
    v9 = [(CNContactGroupVisualizerViewWrapper *)v8 initWithType:type contacts:contactsCopy limitContactsCount:count];
  }

  v10 = v9;

  hostingController = [v10 hostingController];

  return hostingController;
}

+ (id)viewControllerForContacts:(id)contacts limitMaxContactsCount:(int)count
{
  v4 = *&count;
  contactsCopy = contacts;
  v6 = [objc_opt_class() hostingControllerForType:2 contacts:contactsCopy limitMaxContactsCount:v4];

  return v6;
}

+ (id)viewControllerForContacts:(id)contacts
{
  contactsCopy = contacts;
  v4 = [objc_opt_class() viewControllerForContacts:contactsCopy limitMaxContactsCount:0xFFFFFFFFLL];

  return v4;
}

+ (id)allContactsOnboardingViewControllerLimitMaxContactsCount:(int)count
{
  v3 = *&count;
  v4 = objc_opt_class();

  return [v4 hostingControllerForType:1 contacts:0 limitMaxContactsCount:v3];
}

+ (id)allContactsOnboardingViewController
{
  v2 = objc_opt_class();

  return [v2 allContactsOnboardingViewControllerLimitMaxContactsCount:0xFFFFFFFFLL];
}

+ (id)allContactsSettingsViewControllerLimitMaxContactsCount:(int)count
{
  v3 = *&count;
  v4 = objc_opt_class();

  return [v4 hostingControllerForType:0 contacts:0 limitMaxContactsCount:v3];
}

+ (id)fullAccessPromptSettingsContactsController
{
  v2 = objc_opt_class();

  return [v2 hostingControllerForType:3 contacts:0 limitMaxContactsCount:28];
}

+ (id)allContactsSettingsViewController
{
  v2 = objc_opt_class();

  return [v2 allContactsSettingsViewControllerLimitMaxContactsCount:0xFFFFFFFFLL];
}

@end