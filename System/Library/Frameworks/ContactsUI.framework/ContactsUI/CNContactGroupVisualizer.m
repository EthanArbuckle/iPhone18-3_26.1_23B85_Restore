@interface CNContactGroupVisualizer
+ (id)allContactsOnboardingViewController;
+ (id)allContactsOnboardingViewControllerLimitMaxContactsCount:(int)a3;
+ (id)allContactsSettingsViewController;
+ (id)allContactsSettingsViewControllerLimitMaxContactsCount:(int)a3;
+ (id)fullAccessPromptSettingsContactsController;
+ (id)hostingControllerForType:(int64_t)a3 contacts:(id)a4 limitMaxContactsCount:(int)a5;
+ (id)viewControllerForContacts:(id)a3;
+ (id)viewControllerForContacts:(id)a3 limitMaxContactsCount:(int)a4;
@end

@implementation CNContactGroupVisualizer

+ (id)hostingControllerForType:(int64_t)a3 contacts:(id)a4 limitMaxContactsCount:(int)a5
{
  v7 = a4;
  v8 = [_TtC10ContactsUI35CNContactGroupVisualizerViewWrapper alloc];
  if (a5 < 1)
  {
    v9 = [(CNContactGroupVisualizerViewWrapper *)v8 initWithType:a3 contacts:v7];
  }

  else
  {
    v9 = [(CNContactGroupVisualizerViewWrapper *)v8 initWithType:a3 contacts:v7 limitContactsCount:a5];
  }

  v10 = v9;

  v11 = [v10 hostingController];

  return v11;
}

+ (id)viewControllerForContacts:(id)a3 limitMaxContactsCount:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v6 = [objc_opt_class() hostingControllerForType:2 contacts:v5 limitMaxContactsCount:v4];

  return v6;
}

+ (id)viewControllerForContacts:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() viewControllerForContacts:v3 limitMaxContactsCount:0xFFFFFFFFLL];

  return v4;
}

+ (id)allContactsOnboardingViewControllerLimitMaxContactsCount:(int)a3
{
  v3 = *&a3;
  v4 = objc_opt_class();

  return [v4 hostingControllerForType:1 contacts:0 limitMaxContactsCount:v3];
}

+ (id)allContactsOnboardingViewController
{
  v2 = objc_opt_class();

  return [v2 allContactsOnboardingViewControllerLimitMaxContactsCount:0xFFFFFFFFLL];
}

+ (id)allContactsSettingsViewControllerLimitMaxContactsCount:(int)a3
{
  v3 = *&a3;
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