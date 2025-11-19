@interface SCATProfilesController
- (BOOL)_isSelectedProfile:(id)a3;
- (BOOL)_shouldAllowEditing;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (SCATProfilesController)initWithDelegate:(id)a3;
- (SCATProfilesControllerDelegate)delegate;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_addProfileButtonSelected:(id)a3;
- (void)_configureEditButton;
- (void)_deleteProfilesButtonTapped:(id)a3;
- (void)_enableAddProfileButton:(BOOL)a3;
- (void)confirmationViewAcceptedForSpecifier:(id)a3;
- (void)removeDataForSpecifier:(id)a3;
- (void)setEditable:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation SCATProfilesController

- (SCATProfilesController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SCATProfilesController;
  v5 = [(SCATProfilesController *)&v8 init];
  if (v5)
  {
    v6 = [[SCATAlertCoordinator alloc] initWithViewController:v5];
    [(SCATProfilesController *)v5 setSwitchAlertCoordinator:v6];

    [(SCATProfilesController *)v5 setDelegate:v4];
  }

  return v5;
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsEditableViewController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v27 = OBJC_IVAR___PSListController__specifiers;
    v4 = AXParameterizedLocalizedString();
    v28 = self;
    v5 = [(SCATProfilesController *)self navigationItem];
    [v5 setTitle:v4];

    v6 = objc_opt_new();
    v7 = AXParameterizedLocalizedString();
    v8 = [PSSpecifier groupSpecifierWithID:@"ProfilesGroupIdentifier" name:v7];

    v9 = v6;
    v26 = v8;
    [v6 addObject:v8];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v10 = +[AXSettings sharedInstance];
    v11 = [v10 switchControlProfiles];

    v12 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v30;
      v15 = PSCellClassKey;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          v18 = [v17 name];
          v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:0 set:0 get:0 detail:0 cell:3 edit:0];

          [v19 setProperty:v17 forKey:@"ProfileKey"];
          [v19 setProperty:objc_opt_class() forKey:v15];
          [v9 addObject:v19];
        }

        v13 = [v11 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    v20 = AXParameterizedLocalizedString();
    [v26 setObject:v20 forKeyedSubscript:PSFooterTextGroupKey];

    v21 = [PSSpecifier groupSpecifierWithID:@"AddProfileGroupIdentifier"];
    [v9 addObject:v21];
    v22 = AXParameterizedLocalizedString();
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:v28 set:0 get:0 detail:0 cell:13 edit:0];

    [v23 setIdentifier:@"AddProfileIdentifier"];
    [v23 setButtonAction:"_addProfileButtonSelected:"];
    [v9 addObject:v23];
    [(SCATProfilesController *)v28 setAddProfileSpecifier:v23];
    v24 = *&v28->AXUISettingsEditableViewController_opaque[v27];
    *&v28->AXUISettingsEditableViewController_opaque[v27] = v9;

    v3 = *&v28->AXUISettingsEditableViewController_opaque[v27];
  }

  return v3;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SCATProfilesController;
  [(SCATProfilesController *)&v4 viewDidLoad];
  v3 = [(SCATProfilesController *)self table];
  [v3 setAllowsSelectionDuringEditing:1];
}

- (void)setEditable:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SCATProfilesController;
  [(SCATProfilesController *)&v5 setEditable:?];
  [(SCATProfilesController *)self _enableAddProfileButton:!v3];
}

- (void)_configureEditButton
{
  if ([(SCATProfilesController *)self _shouldAllowEditing])
  {

    [(SCATProfilesController *)self setEditingButtonHidden:0 animated:1];
  }

  else
  {
    [(SCATProfilesController *)self setEditingButtonHidden:1 animated:1];

    [(SCATProfilesController *)self setEditable:0];
  }
}

- (BOOL)_shouldAllowEditing
{
  v2 = +[AXSettings sharedInstance];
  v3 = [v2 switchControlProfiles];
  v4 = [v3 count] > 1;

  return v4;
}

- (BOOL)_isSelectedProfile:(id)a3
{
  v3 = [a3 uuid];
  v4 = +[AXSettings sharedInstance];
  v5 = [v4 switchControlSelectedProfile];
  v6 = [v5 uuid];
  v7 = [v3 isEqual:v6];

  return v7;
}

- (void)_enableAddProfileButton:(BOOL)a3
{
  v3 = a3;
  v5 = [(SCATProfilesController *)self addProfileSpecifier];
  v6 = [NSNumber numberWithBool:v3];
  [v5 setProperty:v6 forKey:PSEnabledKey];

  v7 = [(SCATProfilesController *)self addProfileSpecifier];
  [(SCATProfilesController *)self reloadSpecifier:v7 animated:1];
}

- (void)_addProfileButtonSelected:(id)a3
{
  v4 = a3;
  [(SCATProfilesController *)self setEditable:0];
  v5 = objc_alloc_init(AXSCATProfile);
  objc_initWeak(&location, self);
  v6 = [(SCATProfilesController *)self switchAlertCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __52__SCATProfilesController__addProfileButtonSelected___block_invoke;
  v8[3] = &unk_257960;
  v7 = v5;
  v9 = v7;
  objc_copyWeak(&v10, &location);
  [v6 showProfileNamingAlertWithProfile:v7 renaming:0 message:0 successHandler:v8 cancelHandler:0];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __52__SCATProfilesController__addProfileButtonSelected___block_invoke(uint64_t a1)
{
  SCATAddProfileToSettings();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifiers];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 _configureEditButton];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = SCATProfilesController;
  v6 = a4;
  v7 = [(SCATProfilesController *)&v11 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(SCATProfilesController *)self specifierAtIndexPath:v6, v11.receiver, v11.super_class];

  v9 = [v8 propertyForKey:@"ProfileKey"];
  [v7 setChecked:{-[SCATProfilesController _isSelectedProfile:](self, "_isSelectedProfile:", v9)}];

  return v7;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(SCATProfilesController *)self specifierForIndexPath:a4];
  v5 = [v4 propertyForKey:@"ProfileKey"];
  v6 = v5 != 0;

  return v6;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SCATProfilesController *)self specifierForIndexPath:v7];
  v9 = [v8 propertyForKey:@"ProfileKey"];
  v10 = v9;
  if (v9 && ([v9 isDefault] & 1) == 0)
  {
    if ([(SCATProfilesController *)self isEditing])
    {
      objc_initWeak(&location, self);
      v11 = [(SCATProfilesController *)self switchAlertCoordinator];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __60__SCATProfilesController_tableView_didSelectRowAtIndexPath___block_invoke;
      v14[3] = &unk_257960;
      v15 = v10;
      objc_copyWeak(&v16, &location);
      [v11 showProfileNamingAlertWithProfile:v15 renaming:1 message:0 successHandler:v14 cancelHandler:0];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      v12 = +[AXSettings sharedInstance];
      [v12 setSwitchControlSelectedProfile:v10];

      [(SCATProfilesController *)self updateTableCheckedSelection:v7];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SCATProfilesController;
    [(SCATProfilesController *)&v13 tableView:v6 didSelectRowAtIndexPath:v7];
  }

  [v6 deselectRowAtIndexPath:v7 animated:1];
}

void __60__SCATProfilesController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  SCATUpdateProfileToSettings();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifiers];
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(SCATProfilesController *)self specifierForIndexPath:a4];
  v5 = [v4 propertyForKey:@"ProfileKey"];
  v6 = v5;
  v7 = v5 && ![v5 isDefault];

  return v7;
}

- (BOOL)tableView:(id)a3 canMoveRowAtIndexPath:(id)a4
{
  v4 = [(SCATProfilesController *)self specifierAtIndexPath:a4];
  v5 = [v4 propertyForKey:@"ProfileKey"];
  v6 = v5 != 0;

  return v6;
}

- (id)tableView:(id)a3 targetIndexPathForMoveFromRowAtIndexPath:(id)a4 toProposedIndexPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(SCATProfilesController *)self specifierAtIndexPath:v7];
  v10 = [(SCATProfilesController *)self specifierAtIndexPath:v8];
  v11 = [v9 propertyForKey:@"ProfileKey"];
  if (!v11 || (v12 = v11, [v10 propertyForKey:@"ProfileKey"], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v14 = v8, !v13))
  {
    v14 = v7;
  }

  v15 = v14;

  return v14;
}

- (void)tableView:(id)a3 moveRowAtIndexPath:(id)a4 toIndexPath:(id)a5
{
  v26 = a4;
  v7 = a5;
  v8 = OBJC_IVAR___PSListController__specifiers;
  v9 = [*&self->AXUISettingsEditableViewController_opaque[OBJC_IVAR___PSListController__specifiers] mutableCopy];
  v10 = [(SCATProfilesController *)self specifierAtIndexPath:v26];
  v11 = [(SCATProfilesController *)self specifierAtIndexPath:v7];
  v12 = v11;
  if (v10 && v11 && v10 != v11)
  {
    v13 = [v9 indexOfObject:v10];
    v14 = [v9 indexOfObject:v12];
    v15 = v13 == 0x7FFFFFFFFFFFFFFFLL || v14 == 0x7FFFFFFFFFFFFFFFLL;
    if (!v15 && v13 != v14)
    {
      v17 = +[AXSettings sharedInstance];
      v18 = [v17 switchControlProfiles];
      v19 = [v18 mutableCopy];

      v20 = [v26 row];
      if (v20 < [v19 count])
      {
        v21 = [v7 row];
        if (v21 < [v19 count])
        {
          v22 = [v19 objectAtIndexedSubscript:{objc_msgSend(v26, "row")}];
          [v19 removeObjectAtIndex:{objc_msgSend(v26, "row")}];
          [v19 insertObject:v22 atIndex:{objc_msgSend(v7, "row")}];
          v23 = +[AXSettings sharedInstance];
          [v23 setSwitchControlProfiles:v19];
        }
      }

      [v9 removeObjectAtIndex:v13];
      v24 = [v9 indexOfObject:v12];
      if (v13 > v24)
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 + 1;
      }

      [v9 insertObject:v10 atIndex:v25];
      objc_storeStrong(&self->AXUISettingsEditableViewController_opaque[v8], v9);
    }
  }
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([(SCATProfilesController *)self isEditing])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = [(SCATProfilesController *)self specifierForIndexPath:v5];
    v8 = [v7 propertyForKey:@"ProfileKey"];
    v6 = ![(SCATProfilesController *)self _isSelectedProfile:v8];
  }

  return v6;
}

- (void)removeDataForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:@"ProfileKey"];
  v5 = [(SCATProfilesController *)self _isSelectedProfile:v4];
  SCATRemoveProfileFromSettings();
  if (v5)
  {
    v6 = +[AXSettings sharedInstance];
    v7 = [v6 switchControlProfiles];
    v8 = [v7 firstObject];

    v9 = +[AXSettings sharedInstance];
    [v9 setSwitchControlSelectedProfile:v8];

    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

- (void)_deleteProfilesButtonTapped:(id)a3
{
  v8 = objc_alloc_init(PSConfirmationSpecifier);
  v4 = AXParameterizedLocalizedString();
  [v8 setTitle:v4];

  v5 = AXParameterizedLocalizedString();
  [v8 setPrompt:v5];

  v6 = AXParameterizedLocalizedString();
  [v8 setCancelButton:v6];

  v7 = AXParameterizedLocalizedString();
  [v8 setOkButton:v7];

  [v8 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  [(SCATProfilesController *)self showConfirmationViewForSpecifier:v8];
}

- (void)confirmationViewAcceptedForSpecifier:(id)a3
{
  v4 = +[AXSettings sharedInstance];
  [v4 removeAllSwitchControlProfiles];

  v5 = +[AXSettings sharedInstance];
  [v5 setSwitchControlSelectedProfile:0];

  [(SCATProfilesController *)self reloadSpecifiers];
}

- (SCATProfilesControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end