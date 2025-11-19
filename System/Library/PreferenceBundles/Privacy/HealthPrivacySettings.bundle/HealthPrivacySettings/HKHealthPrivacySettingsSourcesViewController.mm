@interface HKHealthPrivacySettingsSourcesViewController
+ (id)tableViewSectionClasses;
- (HKHealthPrivacySettingsSourcesViewController)init;
- (PSController)parentController;
- (PSRootController)rootController;
- (id)_healthPrivacySubSettingViewControllerForResourceDictionary:(id)a3;
- (id)readPreferenceValue:(id)a3;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)setPreferenceValue:(id)a3 specifier:(id)a4;
- (void)showController:(id)a3;
- (void)viewDidLoad;
@end

@implementation HKHealthPrivacySettingsSourcesViewController

- (HKHealthPrivacySettingsSourcesViewController)init
{
  v3 = [HKHealthPrivacySettingsProfile alloc];
  v4 = objc_alloc_init(HKHealthStore);
  v5 = [(HKHealthPrivacySettingsProfile *)v3 initWithHealthStore:v4];

  v18.receiver = self;
  v18.super_class = HKHealthPrivacySettingsSourcesViewController;
  v6 = [(HKHealthPrivacySettingsSourcesViewController *)&v18 initWithProfile:v5 usingInsetStyling:1];
  v7 = +[_HKBehavior sharedBehavior];
  v8 = [v7 healthAppHiddenOrNotInstalled];
  v9 = @"SOURCES_VIEW_CONTROLLER_TITLE_HEALTH";
  if (v8)
  {
    v9 = @"SOURCES_VIEW_CONTROLLER_TITLE_HEALTH_DATA";
  }

  v10 = v9;

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:v10 value:&stru_8350 table:0];

  [(HKHealthPrivacySettingsSourcesViewController *)v6 setTitle:v12];
  v13 = [UIView alloc];
  v14 = [(HKHealthPrivacySettingsSourcesViewController *)v6 tableView];
  [v14 frame];
  v15 = [v13 initWithFrame:{0.0, 0.0}];
  v16 = [(HKHealthPrivacySettingsSourcesViewController *)v6 tableView];
  [v16 setTableHeaderView:v15];

  return v6;
}

+ (id)tableViewSectionClasses
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___HKHealthPrivacySettingsSourcesViewController;
  v2 = objc_msgSendSuper2(&v5, "tableViewSectionClasses");
  v3 = [v2 mutableCopy];

  [v3 removeObject:objc_opt_class()];
  [v3 insertObject:objc_opt_class() atIndex:0];
  [v3 insertObject:objc_opt_class() atIndex:1];

  return v3;
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = HKHealthPrivacySettingsSourcesViewController;
  [(HKHealthPrivacySettingsSourcesViewController *)&v13 viewDidLoad];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [(HKHealthPrivacySettingsSourcesViewController *)self tableSections];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 setParentViewController:self];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 setParentViewController:self];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained handleURL:v7 withCompletion:v6];

  v10 = [(HKHealthPrivacySettingsSourcesViewController *)self _healthPrivacySubSettingViewControllerForResourceDictionary:v7];

  v9 = v10;
  if (v10)
  {
    [(HKHealthPrivacySettingsSourcesViewController *)self showController:v10];
    v9 = v10;
  }
}

- (void)setPreferenceValue:(id)a3 specifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained setPreferenceValue:v7 specifier:v6];
}

- (id)readPreferenceValue:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  v6 = [WeakRetained readPreferenceValue:v4];

  return v6;
}

- (void)showController:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained showController:v4];
}

- (id)_healthPrivacySubSettingViewControllerForResourceDictionary:(id)a3
{
  v3 = [a3 objectForKey:@"path"];
  if ([v3 isEqualToString:@"HEADPHONE_AUDIO_LEVELS"])
  {
    v4 = objc_alloc_init(HKHealthPrivacyHeadphoneLevelsViewController);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PSController)parentController
{
  WeakRetained = objc_loadWeakRetained(&self->_parentController);

  return WeakRetained;
}

- (PSRootController)rootController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootController);

  return WeakRetained;
}

@end