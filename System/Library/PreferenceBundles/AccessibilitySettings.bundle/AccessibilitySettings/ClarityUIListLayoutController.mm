@interface ClarityUIListLayoutController
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation ClarityUIListLayoutController

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = settingsLocString(@"LIST_LAYOUT_TITLE", @"ClarityUISettings");
    v6 = [PSSpecifier groupSpecifierWithName:v5];

    v7 = settingsLocString(@"LIST_LAYOUT_GRID", @"ClarityUISettings");
    v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    v9 = PSIDKey;
    [v8 setProperty:@"LIST_LAYOUT_GRID" forKey:PSIDKey];
    [v8 setProperty:CLFListLayoutGrid forKey:@"ListLayout"];
    v10 = settingsLocString(@"LIST_LAYOUT_STACK", @"ClarityUISettings");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:0 cell:3 edit:0];

    [v11 setProperty:@"LIST_LAYOUT_STACK" forKey:v9];
    [v11 setProperty:CLFListLayoutStack forKey:@"ListLayout"];
    v15[0] = v6;
    v15[1] = v8;
    v15[2] = v11;
    v12 = [NSArray arrayWithObjects:v15 count:3];
    v13 = *&self->AXUISettingsBaseListController_opaque[v3];
    *&self->AXUISettingsBaseListController_opaque[v3] = v12;

    v4 = *&self->AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v13.receiver = self;
  v13.super_class = ClarityUIListLayoutController;
  v6 = a4;
  v7 = [(ClarityUIListLayoutController *)&v13 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(ClarityUIListLayoutController *)self specifierAtIndexPath:v6, v13.receiver, v13.super_class];

  v9 = [v8 propertyForKey:@"ListLayout"];
  v10 = +[CLFSettings sharedInstance];
  v11 = [v10 listLayout];
  [v7 setChecked:{objc_msgSend(v11, "isEqualToString:", v9)}];

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = ClarityUIListLayoutController;
  v6 = a4;
  [(ClarityUIListLayoutController *)&v10 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(ClarityUIListLayoutController *)self specifierAtIndexPath:v6, v10.receiver, v10.super_class];
  v8 = [v7 propertyForKey:@"ListLayout"];
  v9 = +[CLFSettings sharedInstance];
  [v9 setListLayout:v8];

  [(ClarityUIListLayoutController *)self updateTableCheckedSelection:v6];
}

@end