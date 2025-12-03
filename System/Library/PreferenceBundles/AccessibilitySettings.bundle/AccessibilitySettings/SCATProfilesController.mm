@interface SCATProfilesController
- (BOOL)_isSelectedProfile:(id)profile;
- (BOOL)_shouldAllowEditing;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (SCATProfilesController)initWithDelegate:(id)delegate;
- (SCATProfilesControllerDelegate)delegate;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_addProfileButtonSelected:(id)selected;
- (void)_configureEditButton;
- (void)_deleteProfilesButtonTapped:(id)tapped;
- (void)_enableAddProfileButton:(BOOL)button;
- (void)confirmationViewAcceptedForSpecifier:(id)specifier;
- (void)removeDataForSpecifier:(id)specifier;
- (void)setEditable:(BOOL)editable;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)viewDidLoad;
@end

@implementation SCATProfilesController

- (SCATProfilesController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = SCATProfilesController;
  v5 = [(SCATProfilesController *)&v8 init];
  if (v5)
  {
    v6 = [[SCATAlertCoordinator alloc] initWithViewController:v5];
    [(SCATProfilesController *)v5 setSwitchAlertCoordinator:v6];

    [(SCATProfilesController *)v5 setDelegate:delegateCopy];
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
    selfCopy = self;
    navigationItem = [(SCATProfilesController *)self navigationItem];
    [navigationItem setTitle:v4];

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
    switchControlProfiles = [v10 switchControlProfiles];

    v12 = [switchControlProfiles countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(switchControlProfiles);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          name = [v17 name];
          v19 = [PSSpecifier preferenceSpecifierNamed:name target:0 set:0 get:0 detail:0 cell:3 edit:0];

          [v19 setProperty:v17 forKey:@"ProfileKey"];
          [v19 setProperty:objc_opt_class() forKey:v15];
          [v9 addObject:v19];
        }

        v13 = [switchControlProfiles countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v13);
    }

    v20 = AXParameterizedLocalizedString();
    [v26 setObject:v20 forKeyedSubscript:PSFooterTextGroupKey];

    v21 = [PSSpecifier groupSpecifierWithID:@"AddProfileGroupIdentifier"];
    [v9 addObject:v21];
    v22 = AXParameterizedLocalizedString();
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:selfCopy set:0 get:0 detail:0 cell:13 edit:0];

    [v23 setIdentifier:@"AddProfileIdentifier"];
    [v23 setButtonAction:"_addProfileButtonSelected:"];
    [v9 addObject:v23];
    [(SCATProfilesController *)selfCopy setAddProfileSpecifier:v23];
    v24 = *&selfCopy->AXUISettingsEditableViewController_opaque[v27];
    *&selfCopy->AXUISettingsEditableViewController_opaque[v27] = v9;

    v3 = *&selfCopy->AXUISettingsEditableViewController_opaque[v27];
  }

  return v3;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = SCATProfilesController;
  [(SCATProfilesController *)&v4 viewDidLoad];
  table = [(SCATProfilesController *)self table];
  [table setAllowsSelectionDuringEditing:1];
}

- (void)setEditable:(BOOL)editable
{
  editableCopy = editable;
  v5.receiver = self;
  v5.super_class = SCATProfilesController;
  [(SCATProfilesController *)&v5 setEditable:?];
  [(SCATProfilesController *)self _enableAddProfileButton:!editableCopy];
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
  switchControlProfiles = [v2 switchControlProfiles];
  v4 = [switchControlProfiles count] > 1;

  return v4;
}

- (BOOL)_isSelectedProfile:(id)profile
{
  uuid = [profile uuid];
  v4 = +[AXSettings sharedInstance];
  switchControlSelectedProfile = [v4 switchControlSelectedProfile];
  uuid2 = [switchControlSelectedProfile uuid];
  v7 = [uuid isEqual:uuid2];

  return v7;
}

- (void)_enableAddProfileButton:(BOOL)button
{
  buttonCopy = button;
  addProfileSpecifier = [(SCATProfilesController *)self addProfileSpecifier];
  v6 = [NSNumber numberWithBool:buttonCopy];
  [addProfileSpecifier setProperty:v6 forKey:PSEnabledKey];

  addProfileSpecifier2 = [(SCATProfilesController *)self addProfileSpecifier];
  [(SCATProfilesController *)self reloadSpecifier:addProfileSpecifier2 animated:1];
}

- (void)_addProfileButtonSelected:(id)selected
{
  selectedCopy = selected;
  [(SCATProfilesController *)self setEditable:0];
  v5 = objc_alloc_init(AXSCATProfile);
  objc_initWeak(&location, self);
  switchAlertCoordinator = [(SCATProfilesController *)self switchAlertCoordinator];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __52__SCATProfilesController__addProfileButtonSelected___block_invoke;
  v8[3] = &unk_257960;
  v7 = v5;
  v9 = v7;
  objc_copyWeak(&v10, &location);
  [switchAlertCoordinator showProfileNamingAlertWithProfile:v7 renaming:0 message:0 successHandler:v8 cancelHandler:0];

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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = SCATProfilesController;
  pathCopy = path;
  v7 = [(SCATProfilesController *)&v11 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(SCATProfilesController *)self specifierAtIndexPath:pathCopy, v11.receiver, v11.super_class];

  v9 = [v8 propertyForKey:@"ProfileKey"];
  [v7 setChecked:{-[SCATProfilesController _isSelectedProfile:](self, "_isSelectedProfile:", v9)}];

  return v7;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(SCATProfilesController *)self specifierForIndexPath:path];
  v5 = [v4 propertyForKey:@"ProfileKey"];
  v6 = v5 != 0;

  return v6;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(SCATProfilesController *)self specifierForIndexPath:pathCopy];
  v9 = [v8 propertyForKey:@"ProfileKey"];
  v10 = v9;
  if (v9 && ([v9 isDefault] & 1) == 0)
  {
    if ([(SCATProfilesController *)self isEditing])
    {
      objc_initWeak(&location, self);
      switchAlertCoordinator = [(SCATProfilesController *)self switchAlertCoordinator];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __60__SCATProfilesController_tableView_didSelectRowAtIndexPath___block_invoke;
      v14[3] = &unk_257960;
      v15 = v10;
      objc_copyWeak(&v16, &location);
      [switchAlertCoordinator showProfileNamingAlertWithProfile:v15 renaming:1 message:0 successHandler:v14 cancelHandler:0];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    else
    {
      v12 = +[AXSettings sharedInstance];
      [v12 setSwitchControlSelectedProfile:v10];

      [(SCATProfilesController *)self updateTableCheckedSelection:pathCopy];
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = SCATProfilesController;
    [(SCATProfilesController *)&v13 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }

  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

void __60__SCATProfilesController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  SCATUpdateProfileToSettings();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained reloadSpecifiers];
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(SCATProfilesController *)self specifierForIndexPath:path];
  v5 = [v4 propertyForKey:@"ProfileKey"];
  v6 = v5;
  v7 = v5 && ![v5 isDefault];

  return v7;
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  v4 = [(SCATProfilesController *)self specifierAtIndexPath:path];
  v5 = [v4 propertyForKey:@"ProfileKey"];
  v6 = v5 != 0;

  return v6;
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v9 = [(SCATProfilesController *)self specifierAtIndexPath:pathCopy];
  v10 = [(SCATProfilesController *)self specifierAtIndexPath:indexPathCopy];
  v11 = [v9 propertyForKey:@"ProfileKey"];
  if (!v11 || (v12 = v11, [v10 propertyForKey:@"ProfileKey"], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v14 = indexPathCopy, !v13))
  {
    v14 = pathCopy;
  }

  v15 = v14;

  return v14;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  indexPathCopy = indexPath;
  v8 = OBJC_IVAR___PSListController__specifiers;
  v9 = [*&self->AXUISettingsEditableViewController_opaque[OBJC_IVAR___PSListController__specifiers] mutableCopy];
  v10 = [(SCATProfilesController *)self specifierAtIndexPath:pathCopy];
  v11 = [(SCATProfilesController *)self specifierAtIndexPath:indexPathCopy];
  v12 = v11;
  if (v10 && v11 && v10 != v11)
  {
    v13 = [v9 indexOfObject:v10];
    v14 = [v9 indexOfObject:v12];
    v15 = v13 == 0x7FFFFFFFFFFFFFFFLL || v14 == 0x7FFFFFFFFFFFFFFFLL;
    if (!v15 && v13 != v14)
    {
      v17 = +[AXSettings sharedInstance];
      switchControlProfiles = [v17 switchControlProfiles];
      v19 = [switchControlProfiles mutableCopy];

      v20 = [pathCopy row];
      if (v20 < [v19 count])
      {
        v21 = [indexPathCopy row];
        if (v21 < [v19 count])
        {
          v22 = [v19 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
          [v19 removeObjectAtIndex:{objc_msgSend(pathCopy, "row")}];
          [v19 insertObject:v22 atIndex:{objc_msgSend(indexPathCopy, "row")}];
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

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([(SCATProfilesController *)self isEditing])
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = [(SCATProfilesController *)self specifierForIndexPath:pathCopy];
    v8 = [v7 propertyForKey:@"ProfileKey"];
    v6 = ![(SCATProfilesController *)self _isSelectedProfile:v8];
  }

  return v6;
}

- (void)removeDataForSpecifier:(id)specifier
{
  v4 = [specifier propertyForKey:@"ProfileKey"];
  v5 = [(SCATProfilesController *)self _isSelectedProfile:v4];
  SCATRemoveProfileFromSettings();
  if (v5)
  {
    v6 = +[AXSettings sharedInstance];
    switchControlProfiles = [v6 switchControlProfiles];
    firstObject = [switchControlProfiles firstObject];

    v9 = +[AXSettings sharedInstance];
    [v9 setSwitchControlSelectedProfile:firstObject];

    AXPerformBlockAsynchronouslyOnMainThread();
  }
}

- (void)_deleteProfilesButtonTapped:(id)tapped
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

- (void)confirmationViewAcceptedForSpecifier:(id)specifier
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