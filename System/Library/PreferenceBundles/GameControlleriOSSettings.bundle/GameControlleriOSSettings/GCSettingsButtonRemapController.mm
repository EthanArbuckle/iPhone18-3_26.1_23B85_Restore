@interface GCSettingsButtonRemapController
- (id)newSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation GCSettingsButtonRemapController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    newSpecifiers = [(GCSettingsButtonRemapController *)self newSpecifiers];
    v6 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = newSpecifiers;

    v4 = *&self->PSListController_opaque[v3];
  }

  return v4;
}

- (id)newSpecifiers
{
  v3 = OBJC_IVAR___PSViewController__specifier;
  v4 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"ButtonRemapControllerValues"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(NSMutableArray);
    v18 = v4;
    v6 = v4;
    v7 = [*&self->PSListController_opaque[v3] propertyForKey:@"ButtonRemapControllerFooter"];
    if (v7)
    {
      v8 = +[PSSpecifier emptyGroupSpecifier];
      [v8 setProperty:v7 forKey:PSFooterTextGroupKey];
      [v5 addObject:v8];
    }

    v17 = v7;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v6;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        v13 = 0;
        do
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          v15 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:3 edit:0];
          [v15 setProperty:v14 forKey:@"ControllerElement"];
          [v5 addObject:v15];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v4 = v18;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v14.receiver = self;
  v14.super_class = GCSettingsButtonRemapController;
  pathCopy = path;
  v7 = [(GCSettingsButtonRemapController *)&v14 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(GCSettingsButtonRemapController *)self specifierAtIndexPath:pathCopy, v14.receiver, v14.super_class];

  v9 = [v8 propertyForKey:@"ControllerElement"];
  parentController = [(GCSettingsButtonRemapController *)self parentController];
  v11 = [parentController conformsToProtocol:&OBJC_PROTOCOL___GCSettingsRemapControllerDelegate];

  if (v11)
  {
    parentController2 = [(GCSettingsButtonRemapController *)self parentController];
    [parentController2 onLoadItemInRemapController:self item:v9 cell:v7];
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v12 = [(GCSettingsButtonRemapController *)self specifierAtIndexPath:pathCopy];
  v8 = [v12 propertyForKey:@"ControllerElement"];
  parentController = [(GCSettingsButtonRemapController *)self parentController];
  v10 = [parentController conformsToProtocol:&OBJC_PROTOCOL___GCSettingsRemapControllerDelegate];

  if (v10)
  {
    parentController2 = [(GCSettingsButtonRemapController *)self parentController];
    [parentController2 didSelectItemInRemapController:self item:v8];
  }

  [(GCSettingsButtonRemapController *)self reloadSpecifiers];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

@end