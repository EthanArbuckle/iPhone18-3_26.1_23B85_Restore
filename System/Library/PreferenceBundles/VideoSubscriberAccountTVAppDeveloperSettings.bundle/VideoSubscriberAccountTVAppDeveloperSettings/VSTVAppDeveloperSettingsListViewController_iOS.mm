@interface VSTVAppDeveloperSettingsListViewController_iOS
- (id)specifiers;
- (void)viewDidLoad;
@end

@implementation VSTVAppDeveloperSettingsListViewController_iOS

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = VSTVAppDeveloperSettingsListViewController_iOS;
  [(VSTVAppDeveloperSettingsListViewController_iOS *)&v5 viewDidLoad];
  specifier = [(VSTVAppDeveloperSettingsListViewController_iOS *)self specifier];
  v4 = [specifier propertyForKey:@"VSTVAppDeveloperSettingsAccountDetailsListKey"];
  [(VSTVAppDeveloperSettingsListViewController_iOS *)self setListItems:v4];

  [(VSTVAppDeveloperSettingsListViewController_iOS *)self reloadSpecifiers];
}

- (id)specifiers
{
  selfCopy = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    listItems = [(VSTVAppDeveloperSettingsListViewController_iOS *)self listItems];
    v5 = [listItems count];

    if (v5)
    {
      v20 = v3;
      v23 = objc_alloc_init(NSMutableArray);
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = [(VSTVAppDeveloperSettingsListViewController_iOS *)selfCopy listItems];
      v6 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v6)
      {
        v7 = v6;
        v22 = *v25;
        v8 = PSCopyableCellKey;
        v9 = PSAllowMultilineTitleKey;
        v10 = PSEnabledKey;
        v11 = PSTableCellHeightKey;
        do
        {
          v12 = 0;
          do
          {
            if (*v25 != v22)
            {
              objc_enumerationMutation(obj);
            }

            [PSSpecifier preferenceSpecifierNamed:*(*(&v24 + 1) + 8 * v12) target:selfCopy set:0 get:0 detail:0 cell:-1 edit:0];
            v14 = v13 = selfCopy;
            [v14 setProperty:&__kCFBooleanTrue forKey:v8];
            [v14 setProperty:&__kCFBooleanTrue forKey:v9];
            [v14 setProperty:&__kCFBooleanTrue forKey:v10];
            v15 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
            [v14 setProperty:v15 forKey:v11];

            [v23 addObject:v14];
            selfCopy = v13;
            v12 = v12 + 1;
          }

          while (v7 != v12);
          v7 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v7);
      }

      v16 = [v23 copy];
      v3 = v20;
      v17 = *&selfCopy->PSListController_opaque[v20];
      *&selfCopy->PSListController_opaque[v20] = v16;
    }
  }

  v18 = *&selfCopy->PSListController_opaque[v3];

  return v18;
}

@end