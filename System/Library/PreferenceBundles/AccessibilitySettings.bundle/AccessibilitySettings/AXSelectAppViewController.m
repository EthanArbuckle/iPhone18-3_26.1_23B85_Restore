@interface AXSelectAppViewController
- (id)makeSpecifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_generateUnselectedAppSpecifiers;
- (void)_removeSelectedAndHiddenAppSpecfiers;
- (void)_showHiddenApps:(id)a3;
- (void)applicationDidResume;
- (void)setSelectedApps:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation AXSelectAppViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXSelectAppViewController;
  [(AXSelectAppViewController *)&v6 viewDidLoad];
  v3 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:self action:"cancelButtonClicked:"];
  v4 = [(AXSelectAppViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_handleAppDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];
}

- (void)applicationDidResume
{
  v3.receiver = self;
  v3.super_class = AXSelectAppViewController;
  [(AXSelectAppViewController *)&v3 applicationDidResume];
  [(AXSelectAppViewController *)self setNeedsSpecifierRefresh];
  [(AXSelectAppViewController *)self reloadSpecifiers];
}

- (void)setSelectedApps:(id)a3
{
  objc_storeStrong(&self->_selectedApps, a3);
  [(AXSelectAppViewController *)self setNeedsSpecifierRefresh];

  [(AXSelectAppViewController *)self reloadSpecifiers];
}

- (id)makeSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  if (_os_feature_enabled_impl() && !self->_showsHiddenApps)
  {
    v4 = [PSSpecifier groupSpecifierWithName:0];
    [v3 addObject:v4];
    v5 = settingsLocString(@"PROTECTED_APPS_SHOW_HIDDEN_TITLE", @"Accessibility");
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:13 edit:0];

    [v6 setButtonAction:"_showHiddenApps:"];
    [v6 setIdentifier:@"PROTECTED_APPS_SHOW_HIDDEN_TITLE"];
    [v3 addObject:v6];
  }

  v7 = [PSSpecifier groupSpecifierWithID:@"PER_APP_APPS_GROUP"];
  [v3 addObject:v7];
  [(AXSelectAppViewController *)self _generateUnselectedAppSpecifiers];
  [v3 axSafelyAddObjectsFromArray:self->_appSpecifiers];

  return v3;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AXSelectAppViewController *)self specifierForIndexPath:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 identifier];
    v11 = [v10 isEqualToString:@"PROTECTED_APPS_SHOW_HIDDEN_TITLE"];

    if (v11)
    {
      v14.receiver = self;
      v14.super_class = AXSelectAppViewController;
      [(AXSelectAppViewController *)&v14 tableView:v6 didSelectRowAtIndexPath:v7];
    }

    else
    {
      v12 = [(AXSelectAppViewController *)self parentController];
      [v12 addAppSpecifier:v9];
      v13 = [(AXSelectAppViewController *)self navigationController];
      [v13 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v18.receiver = self;
  v18.super_class = AXSelectAppViewController;
  v6 = a4;
  v7 = [(AXSelectAppViewController *)&v18 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(AXSelectAppViewController *)self specifierForIndexPath:v6, v18.receiver, v18.super_class];

  v9 = [v8 propertyForKey:PSIconImageKey];
  if (v9)
  {
    v10 = kISImageDescriptorTableUIName;
    v11 = v7;
    v12 = [ISImageDescriptor imageDescriptorNamed:v10];
    [v12 continuousCornerRadius];
    v14 = v13;

    v15 = [v11 iconImageView];
    [v15 _setContinuousCornerRadius:v14];

    v16 = [v11 iconImageView];

    [v16 setClipsToBounds:1];
  }

  return v7;
}

- (void)_generateUnselectedAppSpecifiers
{
  v3 = objc_alloc_init(NSMutableArray);
  appSpecifiers = self->_appSpecifiers;
  self->_appSpecifiers = v3;

  AXGenerateAppAndServiceNameSpecifiers(self, self->_appSpecifiers);

  [(AXSelectAppViewController *)self _removeSelectedAndHiddenAppSpecfiers];
}

- (void)_removeSelectedAndHiddenAppSpecfiers
{
  v16 = _os_feature_enabled_impl();
  v3 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_appSpecifiers;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * v7);
        v9 = [v8 propertyForKey:@"BundleIdentifier"];
        if (!v9)
        {
          goto LABEL_11;
        }

        v10 = [(AXSelectAppViewController *)self selectedApps];
        v11 = [v10 objectForKey:v9];
        if (((v11 == 0) & v16) != 1)
        {
          v12 = v11;

          if (!v12)
          {
            goto LABEL_12;
          }

LABEL_11:
          [v3 addObject:v8];
          goto LABEL_12;
        }

        if (self->_showsHiddenApps)
        {

          goto LABEL_12;
        }

        v13 = AXIsHiddenAppWithBundleId();

        if (v13)
        {
          goto LABEL_11;
        }

LABEL_12:

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      v5 = v14;
    }

    while (v14);
  }

  [(NSMutableArray *)self->_appSpecifiers removeObjectsInArray:v3];
}

- (void)_showHiddenApps:(id)a3
{
  v4 = [(AXSelectAppViewController *)self parentController];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __45__AXSelectAppViewController__showHiddenApps___block_invoke;
  v5[3] = &unk_2564C0;
  v5[4] = self;
  [v4 showHiddenAppsWithCompletion:v5];
}

id __45__AXSelectAppViewController__showHiddenApps___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setShowsHiddenApps:1];
  v2 = *(a1 + 32);

  return [v2 reloadSpecifiers];
}

@end