@interface TVSettingsAppAppearanceListItemsController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation TVSettingsAppAppearanceListItemsController

- (void)viewDidLoad
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"APP_APPEARANCE_SELECTION_TITLE" value:&stru_21328 table:@"TVSettings"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_21328;
  }

  [(TVSettingsAppAppearanceListItemsController *)self setTitle:v6];

  v7.receiver = self;
  v7.super_class = TVSettingsAppAppearanceListItemsController;
  [(TVSettingsAppAppearanceListItemsController *)&v7 viewDidLoad];
}

- (id)specifiers
{
  v18.receiver = self;
  v18.super_class = TVSettingsAppAppearanceListItemsController;
  specifiers = [(TVSettingsAppAppearanceListItemsController *)&v18 specifiers];
  v4 = OBJC_IVAR___PSListController__specifiers;
  v5 = *&self->super.PSListItemsController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->super.PSListItemsController_opaque[OBJC_IVAR___PSListController__specifiers] = specifiers;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *&self->super.PSListItemsController_opaque[v4];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = PSCellClassKey;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v14 + 1) + 8 * v11) setProperty:objc_opt_class() forKey:{v10, v14}];
        v11 = v11 + 1;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = *&self->super.PSListItemsController_opaque[v4];

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5.receiver = self;
  v5.super_class = TVSettingsAppAppearanceListItemsController;
  [(TVSettingsAppAppearanceListItemsController *)&v5 tableView:view didSelectRowAtIndexPath:path];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"TVSettingsAppAppearanceSettingDidChangeNotification" object:0];
}

@end