@interface HKHealthPrivacySettingsSourcesViewController
+ (id)tableViewSectionClasses;
- (HKHealthPrivacySettingsSourcesViewController)init;
- (PSController)parentController;
- (PSRootController)rootController;
- (id)_healthPrivacySubSettingViewControllerForResourceDictionary:(id)dictionary;
- (id)readPreferenceValue:(id)value;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)setPreferenceValue:(id)value specifier:(id)specifier;
- (void)showController:(id)controller;
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
  healthAppHiddenOrNotInstalled = [v7 healthAppHiddenOrNotInstalled];
  v9 = @"SOURCES_VIEW_CONTROLLER_TITLE_HEALTH";
  if (healthAppHiddenOrNotInstalled)
  {
    v9 = @"SOURCES_VIEW_CONTROLLER_TITLE_HEALTH_DATA";
  }

  v10 = v9;

  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 localizedStringForKey:v10 value:&stru_8350 table:0];

  [(HKHealthPrivacySettingsSourcesViewController *)v6 setTitle:v12];
  v13 = [UIView alloc];
  tableView = [(HKHealthPrivacySettingsSourcesViewController *)v6 tableView];
  [tableView frame];
  v15 = [v13 initWithFrame:{0.0, 0.0}];
  tableView2 = [(HKHealthPrivacySettingsSourcesViewController *)v6 tableView];
  [tableView2 setTableHeaderView:v15];

  return v6;
}

+ (id)tableViewSectionClasses
{
  v5.receiver = self;
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
  tableSections = [(HKHealthPrivacySettingsSourcesViewController *)self tableSections];
  v4 = [tableSections countByEnumeratingWithState:&v9 objects:v14 count:16];
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
          objc_enumerationMutation(tableSections);
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
      v5 = [tableSections countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  completionCopy = completion;
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained handleURL:lCopy withCompletion:completionCopy];

  v10 = [(HKHealthPrivacySettingsSourcesViewController *)self _healthPrivacySubSettingViewControllerForResourceDictionary:lCopy];

  v9 = v10;
  if (v10)
  {
    [(HKHealthPrivacySettingsSourcesViewController *)self showController:v10];
    v9 = v10;
  }
}

- (void)setPreferenceValue:(id)value specifier:(id)specifier
{
  specifierCopy = specifier;
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained setPreferenceValue:valueCopy specifier:specifierCopy];
}

- (id)readPreferenceValue:(id)value
{
  valueCopy = value;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  v6 = [WeakRetained readPreferenceValue:valueCopy];

  return v6;
}

- (void)showController:(id)controller
{
  controllerCopy = controller;
  WeakRetained = objc_loadWeakRetained(&self->_parentController);
  [WeakRetained showController:controllerCopy];
}

- (id)_healthPrivacySubSettingViewControllerForResourceDictionary:(id)dictionary
{
  v3 = [dictionary objectForKey:@"path"];
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