@interface CreateEditProfileViewController
- (CreateEditProfileViewController)init;
- (id)_contentBlockerManagerForProfileIdentifier:(id)a3;
- (id)_fallbackColorForCurrentSymbol;
- (id)_newTabOverrideDescription;
- (id)_presetColorForCurrentSymbol;
- (id)_titleOfCurrentFavorites;
- (id)_webExtensionsControllerForProfileIdentifier:(id)a3;
- (id)specifiers;
- (void)_createNewFolderForFavorites;
- (void)_deleteDefunctCustomFavoritesFolderWithServerID:(id)a3;
- (void)_didSelectColorButton:(id)a3;
- (void)_didSelectIconButton:(id)a3;
- (void)_generateProfileSpecificBackgroundImageForProfile:(id)a3 isCreatingInitialDefaultProfile:(BOOL)a4 completionHandler:(id)a5;
- (void)_saveColorSelectionToProfile;
- (void)_saveIconToProfile;
- (void)_setValue:(id)a3 forSpecifier:(id)a4;
- (void)_showColorPickerPopover:(id)a3;
- (void)_showIconPickerPopover:(id)a3;
- (void)_updateColorSelection;
- (void)_updateTitle;
- (void)colorPickerCollectionViewController:(id)a3 didSelectColorAtIndex:(int64_t)a4;
- (void)deleteButtonTapped:(id)a3;
- (void)didSelectNewFolderInProfileFavoritesFolderPickerController:(id)a3;
- (void)doneButtonTapped:(id)a3;
- (void)postDistributedNotificationNamed:(__CFString *)a3;
- (void)profileFavoritesFolderPickerController:(id)a3 didSelectFolderWithServerID:(id)a4;
- (void)profileIconCollectionViewController:(id)a3 didSelectIconAtIndex:(int64_t)a4;
- (void)profileNameCellDidResignFirstResponder;
- (void)setSpecifier:(id)a3;
- (void)setUserInfo:(id)a3;
- (void)tabGroupManager:(id)a3 didUpdateProfileWithIdentifier:(id)a4 difference:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation CreateEditProfileViewController

- (CreateEditProfileViewController)init
{
  v30.receiver = self;
  v30.super_class = CreateEditProfileViewController;
  v2 = [(CreateEditProfileViewController *)&v30 init];
  if (v2)
  {
    v25 = +[WBProfile availableSymbolImageNames];
    v3 = +[NSMutableArray array];
    if (_SFDeviceIsPad())
    {
      v4 = 5;
    }

    else
    {
      v4 = 4;
    }

    v5 = [NSIndexSet indexSetWithIndexesInRange:0, v4];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __39__CreateEditProfileViewController_init__block_invoke;
    v27[3] = &unk_8A9F0;
    v6 = v2;
    v28 = v6;
    v24 = v3;
    v29 = v24;
    [v25 enumerateObjectsAtIndexes:v5 options:0 usingBlock:v27];

    v7 = objc_alloc_init(ProfileIconButton);
    v8 = v6[19];
    v6[19] = v7;

    [v6[19] setIconName:@"ellipsis"];
    [v6[19] addTarget:v6 action:"_showIconPickerPopover:" forControlEvents:0x2000];
    [v24 addObject:v6[19]];
    objc_storeStrong(v6 + 18, v3);
    v9 = [[UIStackView alloc] initWithArrangedSubviews:v6[18]];
    v10 = v6[17];
    v6[17] = v9;

    [v6[17] setDistribution:3];
    [v6[17] setAlignment:3];
    v26 = +[WBSCoreProfilesConstants orderedProfileColorOptions];
    v11 = +[NSMutableArray array];
    v12 = v6[28];
    v6[28] = v11;

    for (i = 0; ; ++i)
    {
      v14 = _SFDeviceIsPad() ? 5 : 4;
      if (i >= v14)
      {
        break;
      }

      v15 = objc_alloc_init(ColorPickerButton);
      v16 = [v26 objectAtIndexedSubscript:i];
      v17 = [UIColor safari_colorWithWBSNamedColorOption:v16];
      [(ColorPickerButton *)v15 setColor:v17];

      [(ColorPickerButton *)v15 addTarget:v6 action:"_didSelectColorButton:" forControlEvents:0x2000];
      [v6[28] addObject:v15];
    }

    v18 = objc_alloc_init(ColorPickerButton);
    v19 = v6[29];
    v6[29] = v18;

    [v6[29] setIsOverflowColorsButton:1];
    [v6[29] addTarget:v6 action:"_showColorPickerPopover:" forControlEvents:0x2000];
    [v6[28] addObject:v6[29]];
    v20 = [[UIStackView alloc] initWithArrangedSubviews:v6[28]];
    v21 = v6[27];
    v6[27] = v20;

    [v6[27] setDistribution:3];
    v22 = v6;
  }

  return v2;
}

void __39__CreateEditProfileViewController_init__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = objc_alloc_init(ProfileIconButton);
  [(ProfileIconButton *)v5 setTag:a3];
  [(ProfileIconButton *)v5 setIconName:v6];
  [(ProfileIconButton *)v5 addTarget:*(a1 + 32) action:"_didSelectIconButton:" forControlEvents:0x2000];
  [*(a1 + 40) addObject:v5];
}

- (id)specifiers
{
  v2 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v98 = OBJC_IVAR___PSListController__specifiers;
    v5 = SafariSettingsLocalizedString(@"Profile Name And Icon Setting Header", @"Profiles");
    v6 = [PSSpecifier groupSpecifierWithName:v5];
    nameAndIconGroupSpecifier = self->_nameAndIconGroupSpecifier;
    self->_nameAndIconGroupSpecifier = v6;

    v8 = [PSTextFieldSpecifier preferenceSpecifierNamed:0 target:self set:"_setValue:forSpecifier:" get:"_valueForSpecifier:" detail:0 cell:8 edit:0];
    nameSpecifier = self->_nameSpecifier;
    self->_nameSpecifier = v8;

    v10 = self->_nameSpecifier;
    v11 = objc_opt_class();
    v96 = PSCellClassKey;
    [(PSTextFieldSpecifier *)v10 setProperty:v11 forKey:?];
    v12 = self->_nameSpecifier;
    v13 = SafariSettingsLocalizedString(@"Name Title", @"Profiles");
    [(PSTextFieldSpecifier *)v12 setPlaceholder:v13];

    [(PSTextFieldSpecifier *)self->_nameSpecifier setKeyboardType:0 autoCaps:1 autoCorrection:1];
    objc_initWeak(&location, self);
    v14 = self->_nameSpecifier;
    v100[0] = _NSConcreteStackBlock;
    v100[1] = 3221225472;
    v100[2] = __45__CreateEditProfileViewController_specifiers__block_invoke;
    v100[3] = &unk_8AA18;
    objc_copyWeak(&v101, &location);
    v15 = [v100 copy];
    [(PSTextFieldSpecifier *)v14 setProperty:v15 forKey:@"SafariTextChangeHandler"];

    v16 = [[PSSpecifier alloc] initWithName:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    iconSpecifier = self->_iconSpecifier;
    self->_iconSpecifier = v16;

    [(PSSpecifier *)self->_iconSpecifier setProperty:objc_opt_class() forKey:v96];
    v18 = PSEnabledKey;
    [(PSSpecifier *)self->_iconSpecifier setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [(PSSpecifier *)self->_iconSpecifier setUserInfo:self->_symbolStackView];
    v19 = [(CreateEditProfileViewController *)self profile];
    v20 = [v19 identifier];
    v21 = [v20 isEqualToString:WBSDefaultProfileIdentifier];

    if (v21)
    {
      v22 = self->_nameAndIconGroupSpecifier;
      v23 = SafariSettingsLocalizedString(@"%@ (Default) cannot be deleted.", @"Profiles");
      v24 = [(CreateEditProfileViewController *)self profile];
      v25 = [v24 title];
      v26 = [NSString stringWithFormat:v23, v25];
      [(PSSpecifier *)v22 setProperty:v26 forKey:PSFooterTextGroupKey];
    }

    else
    {
      v27 = SafariSettingsLocalizedString(@"Profile Settings Header", @"Profiles");
      v28 = [PSSpecifier groupSpecifierWithName:v27];
      settingsGroupSpecifier = self->_settingsGroupSpecifier;
      self->_settingsGroupSpecifier = v28;

      v30 = [PSSpecifier alloc];
      v31 = SafariSettingsLocalizedString(@"Profile Favorites Folder Setting Title", @"Profiles");
      v32 = [v30 initWithName:v31 target:self set:0 get:"_titleOfCurrentFavorites" detail:objc_opt_class() cell:2 edit:0];
      favoritesSpecifier = self->_favoritesSpecifier;
      self->_favoritesSpecifier = v32;

      v106[0] = @"isCreatingNewProfile";
      v23 = [(CreateEditProfileViewController *)self profile];
      v34 = &__kCFBooleanFalse;
      if (!v23)
      {
        v34 = &__kCFBooleanTrue;
      }

      v106[1] = @"delegate";
      v107[0] = v34;
      v107[1] = self;
      v24 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:2];
      [(PSSpecifier *)self->_favoritesSpecifier setUserInfo:v24];
    }

    v35 = [[PSSpecifier alloc] initWithName:0 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    colorSpecifier = self->_colorSpecifier;
    self->_colorSpecifier = v35;

    [(PSSpecifier *)self->_colorSpecifier setProperty:objc_opt_class() forKey:v96];
    [(PSSpecifier *)self->_colorSpecifier setProperty:&__kCFBooleanTrue forKey:v18];
    [(PSSpecifier *)self->_colorSpecifier setUserInfo:self->_colorsStackView];
    if ((v21 & 1) == 0)
    {
      v37 = +[WBSManagedNewTabPageController sharedController];
      v38 = [v37 managedNewTabPageState];

      if (v38)
      {
        v39 = [PSSpecifier groupSpecifierWithID:@"NEW_TABS_OPEN_WITH"];
        newTabsGroupSpecifier = self->_newTabsGroupSpecifier;
        self->_newTabsGroupSpecifier = v39;

        v41 = self->_newTabsGroupSpecifier;
        v42 = _WBSLocalizedString();
        [(PSSpecifier *)v41 setProperty:v42 forKey:PSFooterTextGroupKey];
      }

      else
      {
        v42 = self->_newTabsGroupSpecifier;
        self->_newTabsGroupSpecifier = 0;
      }

      v43 = [PSSpecifier alloc];
      v44 = SafariSettingsLocalizedString(@"Profile Open New Tabs Setting Title", @"Profiles");
      if (v38)
      {
        v45 = 0;
        v46 = -1;
      }

      else
      {
        v45 = objc_opt_class();
        v46 = 2;
      }

      v47 = [v43 initWithName:v44 target:self set:0 get:"_newTabOverrideDescription" detail:v45 cell:v46 edit:0];
      newTabsSpecifier = self->_newTabsSpecifier;
      self->_newTabsSpecifier = v47;

      if (v38)
      {
        [(PSSpecifier *)self->_newTabsSpecifier setProperty:&__kCFBooleanFalse forKey:v18];
      }

      v104[0] = @"profileID";
      v49 = [(CreateEditProfileViewController *)self profile];
      v50 = [v49 identifierForExtensions];
      v51 = v50;
      v52 = &stru_8BB60;
      if (v50)
      {
        v52 = v50;
      }

      v104[1] = @"delegate";
      v105[0] = v52;
      v105[1] = self;
      v53 = [NSDictionary dictionaryWithObjects:v105 forKeys:v104 count:2];
      [(PSSpecifier *)self->_newTabsSpecifier setUserInfo:v53];
    }

    v54 = [(CreateEditProfileViewController *)self profile];
    v55 = v54 == 0;

    if ((v55 | v21))
    {
      v99 = 0;
    }

    else
    {
      v56 = [(CreateEditProfileViewController *)self profile];
      v57 = [v56 identifierForExtensions];

      v58 = [(CreateEditProfileViewController *)self _webExtensionsControllerForProfileIdentifier:v57];
      v59 = [(CreateEditProfileViewController *)self _contentBlockerManagerForProfileIdentifier:v57];
      v60 = [v58 extensions];
      v61 = [v60 count];
      v62 = [v59 extensions];
      LODWORD(v61) = &v61[[v62 count]] > &dword_4 + 2;

      if (v61)
      {
        v63 = [PSSpecifier groupSpecifierWithName:0];
        extensionsGroupSpecifier = self->_extensionsGroupSpecifier;
        self->_extensionsGroupSpecifier = v63;

        v65 = [PSSpecifier alloc];
        v66 = SafariSettingsLocalizedString(@"Manage Extensions", @"Extensions");
        v67 = [v65 initWithName:v66 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
        manageExtensionsSpecifier = self->_manageExtensionsSpecifier;
        self->_manageExtensionsSpecifier = v67;

        v99 = 0;
        [(PSSpecifier *)self->_manageExtensionsSpecifier setUserInfo:v57];
      }

      else
      {
        v69 = [[SafariExtensionsProfileSettingsController alloc] initWithProfileIdentifier:v57];
        v99 = [(SafariExtensionsProfileSettingsController *)v69 specifiers];
      }

      v70 = [PSSpecifier groupSpecifierWithName:0];
      deleteProfileGroupSpecifier = self->_deleteProfileGroupSpecifier;
      self->_deleteProfileGroupSpecifier = v70;

      v72 = [PSSpecifier alloc];
      v73 = SafariSettingsLocalizedString(@"Delete Profile Title", @"Profiles");
      v74 = [v72 initWithName:v73 target:self set:0 get:0 detail:0 cell:13 edit:0];
      deleteProfileSpecifier = self->_deleteProfileSpecifier;
      self->_deleteProfileSpecifier = v74;

      [(PSSpecifier *)self->_deleteProfileSpecifier setProperty:objc_opt_class() forKey:v96];
      [(PSSpecifier *)self->_deleteProfileSpecifier setButtonAction:"deleteButtonTapped:"];
    }

    v95 = self->_nameSpecifier;
    v97 = self->_nameAndIconGroupSpecifier;
    v94 = self->_iconSpecifier;
    v76 = self->_colorSpecifier;
    v77 = self->_settingsGroupSpecifier;
    v78 = self->_favoritesSpecifier;
    v79 = self->_newTabsGroupSpecifier;
    v80 = self->_newTabsSpecifier;
    v81 = self->_extensionsGroupSpecifier;
    v82 = self->_manageExtensionsSpecifier;
    v83 = +[NSNull null];
    v84 = [NSArray safari_arrayWithObjectsUnlessNil:v97, v95, v94, v76, v77, v78, v79, v80, v81, v82, v83];
    v85 = *&self->super.PSListController_opaque[v98];
    *&self->super.PSListController_opaque[v98] = v84;

    if (v99)
    {
      v86 = [*&self->super.PSListController_opaque[v98] arrayByAddingObjectsFromArray:v99];
      v87 = *&self->super.PSListController_opaque[v98];
      *&self->super.PSListController_opaque[v98] = v86;
    }

    if (self->_deleteProfileGroupSpecifier)
    {
      v88 = *&self->super.PSListController_opaque[v98];
      v89 = self->_deleteProfileSpecifier;
      v103[0] = self->_deleteProfileGroupSpecifier;
      v103[1] = v89;
      v90 = [NSArray arrayWithObjects:v103 count:2];
      v91 = [v88 arrayByAddingObjectsFromArray:v90];
      v92 = *&self->super.PSListController_opaque[v98];
      *&self->super.PSListController_opaque[v98] = v91;
    }

    [(CreateEditProfileViewController *)self reload];
    v3 = *&self->super.PSListController_opaque[v98];

    objc_destroyWeak(&v101);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __45__CreateEditProfileViewController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 text];
    [WeakRetained _setValue:v4 forSpecifier:WeakRetained[34]];
  }
}

- (void)_setValue:(id)a3 forSpecifier:(id)a4
{
  v7 = a3;
  -[UIBarButtonItem setEnabled:](self->_doneButton, "setEnabled:", [v7 length] != 0);
  v5 = [v7 copy];
  profileTitle = self->_profileTitle;
  self->_profileTitle = v5;

  [(CreateEditProfileViewController *)self _updateTitle];
}

- (void)setSpecifier:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = CreateEditProfileViewController;
  [(CreateEditProfileViewController *)&v6 setSpecifier:v4];
  if (v4)
  {
    v5 = [v4 userInfo];
    [(CreateEditProfileViewController *)self setUserInfo:v5];
  }
}

- (id)_webExtensionsControllerForProfileIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[SafariSettingsController extensionsProfilesDataSource];
  v5 = [v4 profileServerIDToWebExtensionsControllers];
  v6 = [v5 objectForKeyedSubscript:v3];

  return v6;
}

- (id)_contentBlockerManagerForProfileIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[SafariSettingsController extensionsProfilesDataSource];
  v5 = [v4 profileServerIDToContentBlockerManagers];
  v6 = [v5 objectForKeyedSubscript:v3];

  return v6;
}

- (id)_newTabOverrideDescription
{
  v3 = [(CreateEditProfileViewController *)self profile];

  if (v3)
  {
    v4 = [(CreateEditProfileViewController *)self profile];
    v5 = [v4 identifierForExtensions];
    v6 = [(CreateEditProfileViewController *)self _webExtensionsControllerForProfileIdentifier:v5];

    v7 = [SafariNewTabOverrideSettingsController topLevelDetailStringWithWebExtensionsController:v6];
  }

  else
  {
    v8 = +[WBSManagedNewTabPageController sharedController];
    v9 = [v8 managedNewTabPageState];

    if (v9)
    {
      v6 = [(CreateEditProfileViewController *)self _webExtensionsControllerForProfileIdentifier:WBSDefaultProfileIdentifier];
      v7 = [SafariNewTabOverrideSettingsController topLevelDetailStringWithWebExtensionsController:v6];
    }

    else
    {
      v10 = [(PSSpecifier *)self->_newTabsSpecifier userInfo];
      v11 = WBSNewTabTopLevelStringKey;
      v12 = [v10 safari_stringForKey:WBSNewTabTopLevelStringKey];
      v13 = [v12 length];

      if (v13)
      {
        v6 = [(PSSpecifier *)self->_newTabsSpecifier userInfo];
        [v6 objectForKeyedSubscript:v11];
      }

      else
      {
        v6 = [(CreateEditProfileViewController *)self _webExtensionsControllerForProfileIdentifier:WBSDefaultProfileIdentifier];
        [SafariNewTabOverrideSettingsController topLevelDetailStringWithWebExtensionsController:v6];
      }
      v7 = ;
    }
  }

  v14 = v7;

  return v14;
}

- (void)setUserInfo:(id)a3
{
  v10 = a3;
  objc_storeStrong(&self->_userInfo, a3);
  v5 = [(SafariProfileSettingsUserInfo *)self->_userInfo profile];
  v6 = [v5 customFavoritesFolderServerID];
  customFavoritesFolderServerID = self->_customFavoritesFolderServerID;
  self->_customFavoritesFolderServerID = v6;

  v8 = [v5 title];
  profileTitle = self->_profileTitle;
  self->_profileTitle = v8;
}

- (void)profileNameCellDidResignFirstResponder
{
  v3 = [(CreateEditProfileViewController *)self profile];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:WBSDefaultProfileIdentifier];

  if (([(NSString *)self->_profileTitle length]!= 0) | v5 & 1)
  {
    v6 = [(CreateEditProfileViewController *)self tabGroupManager];
    v7 = [(CreateEditProfileViewController *)self profile];
    v8 = [v7 identifier];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __73__CreateEditProfileViewController_profileNameCellDidResignFirstResponder__block_invoke;
    v16[3] = &unk_8AA40;
    v16[4] = self;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __73__CreateEditProfileViewController_profileNameCellDidResignFirstResponder__block_invoke_2;
    v14[3] = &unk_8AA68;
    v14[4] = self;
    v15 = v5;
    v9 = [v6 updateProfileWithIdentifier:v8 persist:1 usingBlock:v16 completionHandler:v14];
  }

  else
  {
    v10 = [(CreateEditProfileViewController *)self profile];
    v11 = [v10 title];
    profileTitle = self->_profileTitle;
    self->_profileTitle = v11;

    [(CreateEditProfileViewController *)self _updateTitle];
    nameAndIconGroupSpecifier = self->_nameAndIconGroupSpecifier;

    [(CreateEditProfileViewController *)self reloadSpecifier:nameAndIconGroupSpecifier];
  }
}

id __73__CreateEditProfileViewController_profileNameCellDidResignFirstResponder__block_invoke(uint64_t a1, void *a2)
{
  if (*(*(a1 + 32) + 192))
  {
    v2 = *(*(a1 + 32) + 192);
  }

  else
  {
    v2 = &stru_8BB60;
  }

  return [a2 setTitle:v2];
}

void __73__CreateEditProfileViewController_profileNameCellDidResignFirstResponder__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    obja = [*(a1 + 32) delegate];
    [obja createEditProfileViewControllerDidChangeProfilesData:*(a1 + 32)];

    [*(a1 + 32) postDistributedNotificationNamed:WBProfilesChangedNotification];
    if (*(a1 + 40) == 1)
    {
      v3 = [*(a1 + 32) profile];
      obj = [v3 title];

      if (([obj isEqualToString:*(*(a1 + 32) + 192)] & 1) == 0)
      {
        objc_storeStrong((*(a1 + 32) + 192), obj);
        [*(a1 + 32) _updateTitle];
      }

      v4 = *(*(a1 + 32) + 264);
      v5 = SafariSettingsLocalizedString(@"%@ (Default) cannot be deleted.", @"Profiles");
      v6 = [*(a1 + 32) profile];
      v7 = [v6 title];
      v8 = [NSString stringWithFormat:v5, v7];
      [v4 setProperty:v8 forKey:PSFooterTextGroupKey];

      [*(a1 + 32) reloadSpecifier:*(*(a1 + 32) + 264)];
    }
  }
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = CreateEditProfileViewController;
  [(CreateEditProfileViewController *)&v13 viewDidLoad];
  v3 = [(CreateEditProfileViewController *)self view];
  [v3 setAccessibilityIdentifier:@"ProfilesSettingsCreateEditView"];

  [(CreateEditProfileViewController *)self _updateTitle];
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneButtonTapped:"];
  doneButton = self->_doneButton;
  self->_doneButton = v4;

  [(UIBarButtonItem *)self->_doneButton setEnabled:self->_profileTitle != 0];
  v6 = [(CreateEditProfileViewController *)self profile];

  if (!v6)
  {
    self->_selectedIconIndex = 0;
    v7 = [(NSArray *)self->_iconButtons firstObject];
    selectedIconButton = self->_selectedIconButton;
    self->_selectedIconButton = v7;

    [(ProfileIconButton *)self->_selectedIconButton setSelected:1];
    v9 = self->_doneButton;
    v10 = [(CreateEditProfileViewController *)self navigationItem];
    [v10 setRightBarButtonItem:v9];

    v11 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelButtonTapped:"];
    v12 = [(CreateEditProfileViewController *)self navigationItem];
    [v12 setLeftBarButtonItem:v11];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v7 = a4;
  v8 = [(CreateEditProfileViewController *)self specifierAtIndexPath:a5];
  v9 = v8;
  if (v8 == self->_iconSpecifier)
  {
    v10 = [(CreateEditProfileViewController *)self profile];
    v13 = [v10 symbolImageName];

    if (v13)
    {
      v14 = +[WBProfile availableSymbolImageNames];
      v15 = [v10 symbolImageName];
      v16 = [v14 indexOfObject:v15];

      [(ProfileIconButton *)self->_selectedIconButton setSelected:0];
      IsPad = _SFDeviceIsPad();
      v18 = 4;
      if (IsPad)
      {
        v18 = 5;
      }

      if (v16 >= v18)
      {
        objc_storeStrong(&self->_selectedIconButton, self->_customIconButton);
        selectedIconButton = self->_selectedIconButton;
        v20 = [v10 symbolImageName];
        v28 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle2 scale:1];
        v29 = [UIImage _systemImageNamed:v20 withConfiguration:v28];
        [(ProfileIconButton *)selectedIconButton setImage:v29 forState:0];
      }

      else
      {
        v19 = [(NSArray *)self->_iconButtons objectAtIndexedSubscript:v16];
        v20 = self->_selectedIconButton;
        self->_selectedIconButton = v19;
      }

      [(ProfileIconButton *)self->_selectedIconButton setSelected:1];
      self->_selectedIconIndex = v16;
    }
  }

  else
  {
    if (v8 == self->_deleteProfileSpecifier)
    {
      v10 = +[UIColor redColor];
      v11 = [v7 textLabel];
      [v11 setTextColor:v10];
LABEL_15:

      goto LABEL_25;
    }

    if (v8 == self->_colorSpecifier)
    {
      v21 = [(CreateEditProfileViewController *)self profile];
      v22 = [v21 color];
      v10 = [v22 colorName];

      if (v10)
      {
        v23 = +[WBSCoreProfilesConstants orderedProfileColorOptions];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = __79__CreateEditProfileViewController_tableView_willDisplayCell_forRowAtIndexPath___block_invoke;
        v34[3] = &unk_8AA90;
        v35 = v10;
        v24 = [v23 indexOfObjectPassingTest:v34];

        if (v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24;
        }

        self->_selectedColorIndex = v25;
        v26 = v35;
      }

      else
      {
        v30 = [(CreateEditProfileViewController *)self _fallbackColorForCurrentSymbol];
        v31 = +[WBSCoreProfilesConstants orderedProfileColorOptions];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = __79__CreateEditProfileViewController_tableView_willDisplayCell_forRowAtIndexPath___block_invoke_2;
        v32[3] = &unk_8AA90;
        v26 = v30;
        v33 = v26;
        self->_selectedColorIndex = [v31 indexOfObjectPassingTest:v32];
      }

      [(CreateEditProfileViewController *)self _updateColorSelection];
    }

    else
    {
      v10 = [(PSSpecifier *)v8 userInfo];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [(PSSpecifier *)v9 userInfo];
        if ([v11 isEnabled])
        {
          v12 = 3;
        }

        else
        {
          v12 = 0;
        }

        [v7 setAccessoryType:v12];
        goto LABEL_15;
      }
    }
  }

LABEL_25:
}

id __79__CreateEditProfileViewController_tableView_willDisplayCell_forRowAtIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 colorName];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

id __79__CreateEditProfileViewController_tableView_willDisplayCell_forRowAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 colorName];
  v4 = [*(a1 + 32) colorName];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CreateEditProfileViewController *)self indexForIndexPath:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  }

  v10 = [v9 userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = [v9 userInfo];
    v12 = [v11 isEnabled];
    v13 = [v6 cellForRowAtIndexPath:v7];
    v14 = v13;
    if (v12)
    {
      v15 = 0;
    }

    else
    {
      v15 = 3;
    }

    [v13 setAccessoryType:v15];

    if ([v11 isEnabled])
    {
      [v11 disable];
      [(CreateEditProfileViewController *)self postDistributedNotificationNamed:@"com.apple.mobilesafari.SafariSettingsChangedExtensionSettings"];
      v16 = [(CreateEditProfileViewController *)self profile];
      v17 = [v16 identifierForExtensions];
      v18 = [(CreateEditProfileViewController *)self _webExtensionsControllerForProfileIdentifier:v17];

      v23 = v18;
      v19 = [v11 composedIdentifier];
      v20 = [v18 tabOverridePreferencesManager];
      v21 = +[NSUserDefaults safari_browserDefaults];
      v22 = [v20 extensionComposedIdentifierForNewTabPreferenceInDefaults:v21];

      if ([v19 isEqualToString:v22])
      {
        [(CreateEditProfileViewController *)self reloadSpecifier:self->_newTabsSpecifier];
      }
    }

    else
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = __69__CreateEditProfileViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v25[3] = &unk_8AAB8;
      v25[4] = self;
      [v11 enableWithPresentingViewController:self completionHandler:v25];
    }

    v24.receiver = self;
    v24.super_class = CreateEditProfileViewController;
    [(SafariSettingsListController *)&v24 tableView:v6 didSelectRowAtIndexPath:v7];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = CreateEditProfileViewController;
    [(SafariSettingsListController *)&v26 tableView:v6 didSelectRowAtIndexPath:v7];
  }
}

- (void)doneButtonTapped:(id)a3
{
  if ([(CreateEditProfileViewController *)self _shouldCreateNewFolderForFavorites])
  {
    if (!+[WebBookmarkCollection lockSync])
    {
      v5 = [PSConfirmationSpecifier preferenceSpecifierNamed:&stru_8BB60 target:self set:0 get:0 detail:0 cell:-1 edit:0];
      v25[0] = PSConfirmationTitleKey;
      v19 = SafariSettingsLocalizedString(@"Profile Favorites Folder Setting Title", @"Profiles");
      v26[0] = v19;
      v25[1] = PSConfirmationPromptKey;
      v20 = SafariSettingsLocalizedString(@"Bookmarks are being synced", @"Safari");
      v26[1] = v20;
      v25[2] = PSConfirmationOKKey;
      v21 = SafariSettingsLocalizedString(@"OK", @"Safari");
      v26[2] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
      [v5 setupWithDictionary:v22];

      [(CreateEditProfileViewController *)self showConfirmationViewForSpecifier:v5 useAlert:1];
      objc_storeStrong(&self->_customFavoritesFolderServerID, WBSCloudBookmarkListRecordNameFavoritesBar);
      [(CreateEditProfileViewController *)self reloadSpecifier:self->_favoritesSpecifier];
      goto LABEL_14;
    }

    [(CreateEditProfileViewController *)self _createNewFolderForFavorites];
    +[WebBookmarkCollection unlockSync];
  }

  if (self->_selectedIconIndex)
  {
    v4 = +[WBProfile availableSymbolImageNames];
    v5 = [v4 objectAtIndexedSubscript:self->_selectedIconIndex];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(CreateEditProfileViewController *)self tabGroupManager];
  v7 = [WBMutableProfile alloc];
  profileTitle = self->_profileTitle;
  customFavoritesFolderServerID = self->_customFavoritesFolderServerID;
  v10 = [v6 deviceIdentifier];
  v11 = [v7 initWithTitle:profileTitle symbolImageName:v5 favoritesFolderServerID:customFavoritesFolderServerID deviceIdentifier:v10];

  selectedColorIndex = self->_selectedColorIndex;
  if (selectedColorIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = [(CreateEditProfileViewController *)self _fallbackColorForCurrentSymbol];
    v14 = v13;
  }

  else
  {
    v14 = +[WBSCoreProfilesConstants orderedProfileColorOptions];
    v13 = [v14 objectAtIndexedSubscript:self->_selectedColorIndex];
  }

  [v11 setColor:v13];
  if (selectedColorIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  v15 = [(CreateEditProfileViewController *)self tabGroupManager];
  v16 = [v15 hasMultipleProfiles];

  v17 = [v11 copy];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __52__CreateEditProfileViewController_doneButtonTapped___block_invoke;
  v23[3] = &unk_8AAE0;
  v23[4] = self;
  v24 = v16 ^ 1;
  [v6 appendProfile:v17 completionHandler:v23];

  v18 = [(CreateEditProfileViewController *)self delegate];
  [v18 createEditProfileViewControllerDidChangeProfilesData:self];

  [(CreateEditProfileViewController *)self dismissViewControllerAnimated:1 completion:0];
LABEL_14:
}

void __52__CreateEditProfileViewController_doneButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v28 = [v3 identifierForExtensions];
    v5 = +[SafariSettingsController extensionsProfilesDataSource];
    v6 = [v5 profileServerIDToWebExtensionsControllers];
    v7 = WBSDefaultProfileIdentifier;
    v8 = [v6 objectForKeyedSubscript:WBSDefaultProfileIdentifier];

    v29 = v8;
    v9 = [v5 profileServerIDToWebExtensionsControllers];
    v10 = [v9 objectForKeyedSubscript:v28];

    [v10 copyEnabledExtensionStateFromExtensionsController:v8];
    v11 = [v5 profileServerIDToContentBlockerManagers];
    v12 = [v11 objectForKeyedSubscript:v7];

    v27 = v12;
    v13 = [v5 profileServerIDToContentBlockerManagers];
    v14 = [v13 objectForKeyedSubscript:v28];

    [v14 copyEnabledExtensionStateFromContentBlockerManager:v12];
    v15 = +[NSUserDefaults safari_browserDefaults];
    v16 = [*(*(a1 + 32) + 312) userInfo];
    v17 = [v16 safari_stringForKey:WBSWebExtensionComposedIdentifierKey];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v20 = [v29 tabOverridePreferencesManager];
      v19 = [v20 extensionComposedIdentifierForNewTabPreferenceInDefaults:v15];
    }

    v21 = [v10 tabOverridePreferencesManager];
    [v21 setNewTabBehaviorWithExtensionComposedIdentifier:v19 inDefaults:v15];

    v22 = +[WBSCloudExtensionStateManager sharedManager];
    [v22 localExtensionStateDidChange];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = __52__CreateEditProfileViewController_doneButtonTapped___block_invoke_2;
    v30[3] = &unk_8AAB8;
    v30[4] = *(a1 + 32);
    v23 = objc_retainBlock(v30);
    v24 = *(a1 + 32);
    v25 = [v4 identifier];
    if (*(a1 + 40))
    {
      v26 = v23;
    }

    else
    {
      v26 = 0;
    }

    [v24 _generateProfileSpecificBackgroundImageForProfile:v25 isCreatingInitialDefaultProfile:0 completionHandler:v26];

    [*(a1 + 32) postDistributedNotificationNamed:WBProfilesChangedNotification];
  }
}

- (void)postDistributedNotificationNamed:(__CFString *)a3
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, a3, 0, 0, 1u);
}

- (void)deleteButtonTapped:(id)a3
{
  if (+[SafariSettingsController isHistoryClearingEnabled])
  {
    v4 = SafariSettingsLocalizedString(@"Delete Profile Title", @"Profiles");
    v5 = SafariSettingsLocalizedString(@"Delete Profile Explanation", @"Profiles");
    v6 = [UIAlertController alertControllerWithTitle:v4 message:v5 preferredStyle:0];

    v7 = SafariSettingsLocalizedString(@"Cancel Delete Profile", @"Profiles");
    v8 = [UIAlertAction actionWithTitle:v7 style:1 handler:0];

    [v6 addAction:v8];
    v9 = SafariSettingsLocalizedString(@"Confirm Delete Profile", @"Profiles");
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __54__CreateEditProfileViewController_deleteButtonTapped___block_invoke_2;
    v18[3] = &unk_8AB50;
    v18[4] = self;
    v10 = [UIAlertAction actionWithTitle:v9 style:2 handler:v18];

    [v6 addAction:v10];
    [(CreateEditProfileViewController *)self presentViewController:v6 animated:1 completion:0];
  }

  else
  {
    if (+[SafariSettingsController isScreenTimePasscodeEnabled])
    {
      v11 = SafariSettingsLocalizedString(@"Unable To Delete Profile Title", @"Profiles");
      v12 = _WBSLocalizedString();
      v17 = [UIAlertController alertControllerWithTitle:v11 message:v12 preferredStyle:1, 0];

      v13 = SafariSettingsLocalizedString(@"Screen Time Settings", @"Profiles");
      v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:&__block_literal_global_15];
      [v17 addAction:v14];
    }

    else
    {
      v13 = SafariSettingsLocalizedString(@"Unable To Delete Profile Title", @"Profiles");
      v14 = _WBSLocalizedString();
      v17 = [UIAlertController alertControllerWithTitle:v13 message:v14 preferredStyle:1, 0];
    }

    v15 = SafariSettingsLocalizedString(@"OK", @"Safari");
    v16 = [UIAlertAction actionWithTitle:v15 style:1 handler:0];
    [v17 addAction:v16];

    [(CreateEditProfileViewController *)self presentViewController:v17 animated:1 completion:0];
  }
}

void __54__CreateEditProfileViewController_deleteButtonTapped___block_invoke(id a1, UIAlertAction *a2)
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v2 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.ScreenTime/"];
  [v3 openSensitiveURL:v2 withOptions:0];
}

void __54__CreateEditProfileViewController_deleteButtonTapped___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) profile];
  v27 = [v2 customFavoritesFolderServerID];

  v3 = [*(a1 + 32) profile];
  v4 = [v3 identifier];

  v5 = [*(a1 + 32) tabGroupManager];
  v6 = [v5 tabCollection];
  v7 = [v6 windowStates];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v9)
  {
    v10 = *v33;
    v11 = WBSDefaultProfileIdentifier;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v14 = [v13 activeProfileIdentifier];
        v15 = [v14 isEqualToString:v4];

        if (v15)
        {
          [v13 setActiveProfileIdentifier:v11];
          v16 = [v13 localTabGroup];
          v17 = [v16 uuid];
          [v13 setActiveTabGroupUUID:v17];

          v18 = [*(a1 + 32) tabGroupManager];
          [v18 saveWindowState:v13];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v9);
  }

  v19 = [*(a1 + 32) tabGroupManager];
  v20 = [*(a1 + 32) profile];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = __54__CreateEditProfileViewController_deleteButtonTapped___block_invoke_3;
  v28[3] = &unk_8AB28;
  v21 = v4;
  v22 = *(a1 + 32);
  v29 = v21;
  v30 = v22;
  v23 = v27;
  v31 = v23;
  [v19 removeProfile:v20 completionHandler:v28];

  v24 = [*(a1 + 32) delegate];
  [v24 createEditProfileViewControllerDidChangeProfilesData:*(a1 + 32)];

  v25 = [*(a1 + 32) navigationController];
  v26 = [v25 popViewControllerAnimated:1];
}

id __54__CreateEditProfileViewController_deleteButtonTapped___block_invoke_3(uint64_t a1)
{
  v2 = +[WBSIgnoredSiriSuggestedSitesController sharedController];
  [v2 removeIgnoredSiriSuggestedSitesInProfile:*(a1 + 32)];

  [*(a1 + 40) _deleteDefunctCustomFavoritesFolderWithServerID:*(a1 + 48)];
  [*(a1 + 40) postDistributedNotificationNamed:WBProfilesChangedNotification];
  v3 = *(a1 + 32);

  return [SafariWebsiteDataDataSource deleteAllDataForProfileWithIdentifier:v3];
}

- (void)_deleteDefunctCustomFavoritesFolderWithServerID:(id)a3
{
  v4 = a3;
  if ([v4 length] && (objc_msgSend(v4, "isEqualToString:", WBSCloudBookmarkListRecordNameFavoritesBar) & 1) == 0)
  {
    v5 = +[WebBookmarkCollection safariBookmarkCollection];
    v6 = [v5 favoritesFolder];
    v7 = [v6 serverID];
    v8 = [v4 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      v9 = [v5 bookmarkIDForServerID:v4 excludeDeletedBookmarks:1];
      if (v9 != 0x7FFFFFFF)
      {
        v19 = [v5 listWithID:v9];
        if (v19 && ![v19 bookmarkCount])
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v10 = [(CreateEditProfileViewController *)self tabGroupManager];
          v11 = [v10 profiles];

          v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v12)
          {
            v13 = *v21;
            while (2)
            {
              for (i = 0; i != v12; i = i + 1)
              {
                if (*v21 != v13)
                {
                  objc_enumerationMutation(v11);
                }

                v15 = [*(*(&v20 + 1) + 8 * i) customFavoritesFolderServerID];
                v16 = [v15 isEqualToString:v4];

                if (v16)
                {

                  goto LABEL_18;
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

          if (+[WebBookmarkCollection lockSync])
          {
            v17 = [v5 bookmarkWithID:v9];
            [v5 deleteBookmark:v17];

            +[WebBookmarkCollection unlockSync];
          }

          else
          {
            v18 = WBS_LOG_CHANNEL_PREFIXSafariProfiles();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              [CreateEditProfileViewController _deleteDefunctCustomFavoritesFolderWithServerID:v18];
            }
          }
        }

LABEL_18:
      }
    }
  }
}

- (void)_didSelectIconButton:(id)a3
{
  v8 = a3;
  if ([v8 tag] != self->_selectedIconIndex)
  {
    [(CreateEditProfileViewController *)self reloadSpecifier:self->_nameSpecifier];
    [(ProfileIconButton *)self->_selectedIconButton setSelected:0];
    customIconButton = self->_customIconButton;
    v6 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle2 scale:2];
    v7 = [UIImage _systemImageNamed:@"ellipsis" withConfiguration:v6];
    [(ProfileIconButton *)customIconButton setImage:v7 forState:0];

    self->_selectedIconIndex = [v8 tag];
    [v8 setSelected:1];
    objc_storeStrong(&self->_selectedIconButton, a3);
    [(CreateEditProfileViewController *)self _saveIconToProfile];
  }
}

- (void)_showIconPickerPopover:(id)a3
{
  v29 = +[WBProfile availableSymbolImageNames];
  if (_SFDeviceIsPad())
  {
    v4 = 5;
  }

  else
  {
    v4 = 4;
  }

  v5 = [v29 count];
  IsPad = _SFDeviceIsPad();
  v7 = -5;
  if (!IsPad)
  {
    v7 = -4;
  }

  v8 = [v29 subarrayWithRange:{v4, &v5[v7]}];
  profileIconCollectionViewController = self->_profileIconCollectionViewController;
  if (!profileIconCollectionViewController)
  {
    v10 = [[ProfileIconCollectionViewController alloc] initWithIcons:v8];
    v11 = self->_profileIconCollectionViewController;
    self->_profileIconCollectionViewController = v10;

    [(ProfileIconCollectionViewController *)self->_profileIconCollectionViewController setDelegate:self];
    v12 = [(ProfileIconCollectionViewController *)self->_profileIconCollectionViewController view];
    [v12 setFrame:{0.0, 0.0, 100.0, 100.0}];

    v13 = [(ProfileIconCollectionViewController *)self->_profileIconCollectionViewController view];
    [v13 layoutIfNeeded];

    profileIconCollectionViewController = self->_profileIconCollectionViewController;
  }

  [(ProfileIconCollectionViewController *)profileIconCollectionViewController setModalPresentationStyle:7];
  selectedIconIndex = self->_selectedIconIndex;
  v15 = _SFDeviceIsPad();
  v16 = 4;
  if (v15)
  {
    v16 = 5;
  }

  if (selectedIconIndex >= v16)
  {
    v18 = self->_selectedIconIndex;
    v19 = _SFDeviceIsPad();
    v20 = -5;
    if (!v19)
    {
      v20 = -4;
    }

    v17 = v20 + v18;
  }

  else
  {
    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(ProfileIconCollectionViewController *)self->_profileIconCollectionViewController setSelectedIndex:v17];
  v21 = [(ProfileIconCollectionViewController *)self->_profileIconCollectionViewController view];
  v22 = [NSIndexPath indexPathForRow:0 inSection:0];
  v23 = [v21 layoutAttributesForItemAtIndexPath:v22];
  [v23 frame];
  v25 = v24;

  [v8 count];
  _SFCeilingFloatToPixels();
  [(ProfileIconCollectionViewController *)self->_profileIconCollectionViewController setPreferredContentSize:10.0 + 10.0 + (v25 + 2.0 * 2.0) * 6.0, v26];
  v27 = self->_profileIconCollectionViewController;
  v28 = [[_SFUIViewPopoverSourceInfo alloc] initWithView:self->_customIconButton];
  [(CreateEditProfileViewController *)self _presentModalViewController:v27 fromPopoverSource:v28 useAdaptivePresentationInCompact:0 animated:1 completion:0];
}

- (void)_saveIconToProfile
{
  v3 = [(CreateEditProfileViewController *)self profile];

  if (v3)
  {
    v4 = [(CreateEditProfileViewController *)self tabGroupManager];
    v5 = [(CreateEditProfileViewController *)self profile];
    v6 = [v5 identifier];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __53__CreateEditProfileViewController__saveIconToProfile__block_invoke;
    v14[3] = &unk_8AA40;
    v14[4] = self;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __53__CreateEditProfileViewController__saveIconToProfile__block_invoke_2;
    v13[3] = &unk_8AB78;
    v13[4] = self;
    v7 = [v4 updateProfileWithIdentifier:v6 persist:1 usingBlock:v14 completionHandler:v13];
  }

  v8 = [(CreateEditProfileViewController *)self profile];
  if (v8)
  {
  }

  else if (!self->_hasManuallyPickedColor)
  {
    v9 = [(CreateEditProfileViewController *)self _presetColorForCurrentSymbol];
    v10 = +[WBSCoreProfilesConstants orderedProfileColorOptions];
    if (v9)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = __53__CreateEditProfileViewController__saveIconToProfile__block_invoke_3;
      v11[3] = &unk_8AA90;
      v12 = v9;
      self->_selectedColorIndex = [v10 indexOfObjectPassingTest:v11];

      v10 = v12;
    }

    else
    {
      self->_selectedColorIndex = arc4random_uniform([v10 count] - 1) + 1;
    }

    [(CreateEditProfileViewController *)self _updateColorSelection];
    [(CreateEditProfileViewController *)self _saveColorSelectionToProfile];
  }
}

void __53__CreateEditProfileViewController__saveIconToProfile__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[WBProfile availableSymbolImageNames];
  v4 = [v3 objectAtIndexedSubscript:*(*(a1 + 32) + 168)];
  [v5 setSymbolImageName:v4];
}

void *__53__CreateEditProfileViewController__saveIconToProfile__block_invoke_2(void *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = result[4];
    v4 = [v3 profile];
    v5 = [v4 identifier];
    [v3 _generateProfileSpecificBackgroundImageForProfile:v5 isCreatingInitialDefaultProfile:0 completionHandler:0];

    v6 = [v2[4] delegate];
    [v6 createEditProfileViewControllerDidChangeProfilesData:v2[4]];

    v7 = v2[4];
    v8 = WBProfilesChangedNotification;

    return [v7 postDistributedNotificationNamed:v8];
  }

  return result;
}

id __53__CreateEditProfileViewController__saveIconToProfile__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 colorName];
  v4 = [*(a1 + 32) colorName];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)_didSelectColorButton:(id)a3
{
  v4 = a3;
  self->_hasManuallyPickedColor = 1;
  v6 = v4;
  v5 = [(NSMutableArray *)self->_colorButtons indexOfObject:?];
  if (v5 != self->_selectedColorIndex)
  {
    [(CreateEditProfileViewController *)self reloadSpecifier:self->_nameSpecifier];
    self->_selectedColorIndex = v5;
    [(CreateEditProfileViewController *)self _updateColorSelection];
    [(CreateEditProfileViewController *)self _saveColorSelectionToProfile];
  }
}

- (void)_showColorPickerPopover:(id)a3
{
  v30 = a3;
  v4 = +[WBSCoreProfilesConstants orderedProfileColorOptions];
  if (_SFDeviceIsPad())
  {
    v5 = 5;
  }

  else
  {
    v5 = 4;
  }

  v6 = [v4 count];
  IsPad = _SFDeviceIsPad();
  v8 = -5;
  if (!IsPad)
  {
    v8 = -4;
  }

  v9 = [v4 subarrayWithRange:{v5, &v6[v8]}];
  colorCollectionViewController = self->_colorCollectionViewController;
  if (!colorCollectionViewController)
  {
    v11 = [[ColorPickerCollectionViewController alloc] initWithColors:v9];
    v12 = self->_colorCollectionViewController;
    self->_colorCollectionViewController = v11;

    [(ColorPickerCollectionViewController *)self->_colorCollectionViewController setDelegate:self];
    colorCollectionViewController = self->_colorCollectionViewController;
  }

  [(ColorPickerCollectionViewController *)colorCollectionViewController setModalPresentationStyle:7];
  selectedColorIndex = self->_selectedColorIndex;
  v14 = _SFDeviceIsPad();
  v15 = 4;
  if (v14)
  {
    v15 = 5;
  }

  if (selectedColorIndex >= v15)
  {
    v17 = self->_selectedColorIndex;
    v18 = _SFDeviceIsPad();
    v19 = -5;
    if (!v18)
    {
      v19 = -4;
    }

    v16 = v19 + v17;
  }

  else
  {
    v16 = 0x7FFFFFFFFFFFFFFFLL;
  }

  [(ColorPickerCollectionViewController *)self->_colorCollectionViewController setSelectedIndex:v16];
  v20 = [(NSMutableArray *)self->_colorButtons firstObject];
  [v20 intrinsicContentSize];
  v22 = v21;

  [v9 count];
  _SFCeilingFloatToPixels();
  v24 = v23;
  v25 = [(NSMutableArray *)self->_colorButtons firstObject];
  [v25 intrinsicContentSize];
  v27 = 10.0 + 10.0 + v24 * (v26 + 5.0 * 2.0);

  [(ColorPickerCollectionViewController *)self->_colorCollectionViewController setPreferredContentSize:10.0 + 10.0 + (v22 + 5.0 * 2.0) * 4.0, v27];
  v28 = self->_colorCollectionViewController;
  v29 = [[_SFUIViewPopoverSourceInfo alloc] initWithView:v30];
  [(CreateEditProfileViewController *)self _presentModalViewController:v28 fromPopoverSource:v29 useAdaptivePresentationInCompact:0 animated:1 completion:0];
}

- (void)profileFavoritesFolderPickerController:(id)a3 didSelectFolderWithServerID:(id)a4
{
  v6 = a4;
  customFavoritesFolderServerID = self->_customFavoritesFolderServerID;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_customFavoritesFolderServerID, a4);
    v8 = [(CreateEditProfileViewController *)self tabGroupManager];
    v9 = [(CreateEditProfileViewController *)self profile];
    v10 = [v9 identifier];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __102__CreateEditProfileViewController_profileFavoritesFolderPickerController_didSelectFolderWithServerID___block_invoke;
    v13[3] = &unk_8AA40;
    v14 = v6;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __102__CreateEditProfileViewController_profileFavoritesFolderPickerController_didSelectFolderWithServerID___block_invoke_2;
    v12[3] = &unk_8AB78;
    v12[4] = self;
    v11 = [v8 updateProfileWithIdentifier:v10 persist:1 usingBlock:v13 completionHandler:v12];

    [(CreateEditProfileViewController *)self reloadSpecifier:self->_favoritesSpecifier];
  }
}

id *__102__CreateEditProfileViewController_profileFavoritesFolderPickerController_didSelectFolderWithServerID___block_invoke_2(id *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [result[4] delegate];
    [v3 createEditProfileViewControllerDidChangeProfilesData:v2[4]];

    v4 = v2[4];
    v5 = WBProfilesChangedNotification;

    return [v4 postDistributedNotificationNamed:v5];
  }

  return result;
}

- (void)didSelectNewFolderInProfileFavoritesFolderPickerController:(id)a3
{
  customFavoritesFolderServerID = self->_customFavoritesFolderServerID;
  self->_customFavoritesFolderServerID = 0;

  favoritesSpecifier = self->_favoritesSpecifier;

  [(CreateEditProfileViewController *)self reloadSpecifier:favoritesSpecifier];
}

- (void)tabGroupManager:(id)a3 didUpdateProfileWithIdentifier:(id)a4 difference:(id)a5
{
  v16 = a3;
  v7 = a4;
  v8 = [(CreateEditProfileViewController *)self profile];
  v9 = [v8 identifier];
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    v11 = [v16 profileWithIdentifier:v7];
    [(SafariProfileSettingsUserInfo *)self->_userInfo setProfile:v11];
    v12 = [v11 title];
    profileTitle = self->_profileTitle;
    self->_profileTitle = v12;

    v14 = [(SafariProfileSettingsUserInfo *)self->_userInfo profile];
    v15 = [v14 customFavoritesFolderServerID];

    if (v15)
    {
      objc_storeStrong(&self->_customFavoritesFolderServerID, v15);
    }

    [(CreateEditProfileViewController *)self reloadSpecifiers];
    [(CreateEditProfileViewController *)self _updateTitle];
  }
}

- (void)colorPickerCollectionViewController:(id)a3 didSelectColorAtIndex:(int64_t)a4
{
  [(CreateEditProfileViewController *)self reloadSpecifier:self->_nameSpecifier];
  self->_hasManuallyPickedColor = 1;
  IsPad = _SFDeviceIsPad();
  v7 = 4;
  if (IsPad)
  {
    v7 = 5;
  }

  self->_selectedColorIndex = v7 + a4;
  [(CreateEditProfileViewController *)self _updateColorSelection];

  [(CreateEditProfileViewController *)self _saveColorSelectionToProfile];
}

- (void)_updateTitle
{
  v3 = [(CreateEditProfileViewController *)self profile];
  if (v3)
  {
    v4 = SafariSettingsLocalizedString(@"Profile Settings Title Prefix", @"Profiles");
    v5 = [NSString stringWithFormat:@"%@ — %@", v4, self->_profileTitle];
  }

  else
  {
    v5 = SafariSettingsLocalizedString(@"New Profile Title", @"Profiles");
    v4 = v5;
  }

  [(CreateEditProfileViewController *)self setTitle:v5];
  if (v3)
  {
  }

  if ([(CreateEditProfileViewController *)self _shouldCreateNewFolderForFavorites])
  {
    favoritesSpecifier = self->_favoritesSpecifier;

    [(CreateEditProfileViewController *)self reloadSpecifier:favoritesSpecifier];
  }
}

- (id)_titleOfCurrentFavorites
{
  if ([(CreateEditProfileViewController *)self _shouldCreateNewFolderForFavorites])
  {
    v3 = [(NSString *)self->_profileTitle safari_stringByTrimmingWhitespace];
    if ([v3 length])
    {
      v4 = v3;
      v3 = v4;
    }

    else
    {
      v4 = SafariSettingsLocalizedString(@"Titlebar Button Name for Creating New Folder", @"Profiles");
    }

    v9 = v4;
    goto LABEL_12;
  }

  v3 = +[WebBookmarkCollection safariBookmarkCollection];
  v5 = [v3 favoritesFolder];
  customFavoritesFolderServerID = self->_customFavoritesFolderServerID;
  if (customFavoritesFolderServerID)
  {
    v7 = [v3 bookmarkWithServerID:customFavoritesFolderServerID excludeDeletedBookmarks:1];
    v8 = v7;
    if (v7 && ([v7 isEqual:v5] & 1) == 0)
    {
      v9 = [v8 title];

      goto LABEL_9;
    }
  }

  v9 = SafariSettingsLocalizedString(@"Favorites", @"Safari");
LABEL_9:

LABEL_12:

  return v9;
}

- (void)_createNewFolderForFavorites
{
  v11 = +[WebBookmarkCollection safariBookmarkCollection];
  v3 = [WebBookmark alloc];
  v4 = [v11 rootBookmark];
  v5 = [v3 initFolderWithParentID:objc_msgSend(v4 collectionType:{"identifier"), 0}];

  [v5 setTitle:self->_profileTitle];
  [v11 saveBookmark:v5];
  v6 = [v5 serverID];

  if (!v6)
  {
    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];
    [v11 setServerID:v8 forBookmark:v5];
  }

  v9 = [v5 serverID];
  customFavoritesFolderServerID = self->_customFavoritesFolderServerID;
  self->_customFavoritesFolderServerID = v9;
}

- (void)_generateProfileSpecificBackgroundImageForProfile:(id)a3 isCreatingInitialDefaultProfile:(BOOL)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = +[WBSStartPageBackgroundManager defaultManager];
  v11 = [(__CFString *)v8 isEqualToString:WBSDefaultProfileIdentifier];
  v12 = v11 ^ 1;
  v13 = &stru_8BB60;
  if (!v11)
  {
    v13 = v8;
  }

  v14 = v13;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __135__CreateEditProfileViewController__generateProfileSpecificBackgroundImageForProfile_isCreatingInitialDefaultProfile_completionHandler___block_invoke;
  v19[3] = &unk_8AC80;
  v15 = v10;
  v20 = v15;
  v16 = v8;
  v25 = v12;
  v26 = a4;
  v21 = v16;
  v22 = self;
  v23 = v14;
  v17 = v9;
  v24 = v17;
  v18 = v14;
  [v15 getHasGeneratedBackgroundImage:v18 forProfileWithIdentifier:v16 completionHandler:v19];
}

void __135__CreateEditProfileViewController__generateProfileSpecificBackgroundImageForProfile_isCreatingInitialDefaultProfile_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if ([*(a1 + 32) hasProfileSpecificBackgroundImage:*(a1 + 40)])
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 0;
  }

  if (!v4)
  {
    if ((*(a1 + 72) & 1) != 0 || ([*(a1 + 32) hasGlobalBackgroundImage] ? (v5 = a2 == 0) : (v5 = 0), !v5))
    {
      if (*(a1 + 73))
      {
        v6 = +[WBSCoreProfilesConstants defaultPersonalProfileSymbolImage];
      }

      else
      {
        v7 = +[WBProfile availableSymbolImageNames];
        v6 = [v7 objectAtIndexedSubscript:*(*(a1 + 48) + 168)];
      }

      if (*(a1 + 73) == 1)
      {
        v8 = +[WBSCoreProfilesConstants defaultPersonalProfileColor];
      }

      else
      {
        v9 = +[WBSCoreProfilesConstants orderedProfileColorOptions];
        v8 = [v9 objectAtIndexedSubscript:*(*(a1 + 48) + 240)];
      }

      v10 = *(a1 + 32);
      v11 = *(a1 + 56);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = __135__CreateEditProfileViewController__generateProfileSpecificBackgroundImageForProfile_isCreatingInitialDefaultProfile_completionHandler___block_invoke_2;
      v14[3] = &unk_8AC58;
      v15 = v10;
      v16 = *(a1 + 56);
      v19 = *(a1 + 72);
      v13 = *(a1 + 40);
      v12 = v13.i64[0];
      v17 = vextq_s8(v13, v13, 8uLL);
      v18 = *(a1 + 64);
      [v15 generateProfileSpecificBackgroundImageWithSymbol:v6 forProfile:v11 withColor:v8 completionHandler:v14];
    }
  }
}

void __135__CreateEditProfileViewController__generateProfileSpecificBackgroundImageForProfile_isCreatingInitialDefaultProfile_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __135__CreateEditProfileViewController__generateProfileSpecificBackgroundImageForProfile_isCreatingInitialDefaultProfile_completionHandler___block_invoke_3;
    v9[3] = &unk_8AC30;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v13 = *(a1 + 72);
    v8 = *(a1 + 48);
    v6 = *(&v8 + 1);
    *&v7 = v4;
    *(&v7 + 1) = v5;
    v10 = v7;
    v11 = v8;
    v12 = *(a1 + 64);
    [v4 cacheImageFromURL:v3 completion:v9];
  }
}

void __135__CreateEditProfileViewController__generateProfileSpecificBackgroundImageForProfile_isCreatingInitialDefaultProfile_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __135__CreateEditProfileViewController__generateProfileSpecificBackgroundImageForProfile_isCreatingInitialDefaultProfile_completionHandler___block_invoke_4;
    block[3] = &unk_8AC08;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12 = *(a1 + 72);
    v7 = *(a1 + 48);
    v5 = *(&v7 + 1);
    *&v6 = v3;
    *(&v6 + 1) = v4;
    v9 = v6;
    v10 = v7;
    v11 = *(a1 + 64);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void __135__CreateEditProfileViewController__generateProfileSpecificBackgroundImageForProfile_isCreatingInitialDefaultProfile_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __135__CreateEditProfileViewController__generateProfileSpecificBackgroundImageForProfile_isCreatingInitialDefaultProfile_completionHandler___block_invoke_5;
  v6[3] = &unk_8ABE0;
  v5 = *(a1 + 56);
  v6[4] = *(a1 + 48);
  v7 = v5;
  v8 = *(a1 + 64);
  [v2 processImageForIdentifier:v3 isGeneratedImage:1 withinProfile:v4 completionHandler:v6];
}

void __135__CreateEditProfileViewController__generateProfileSpecificBackgroundImageForProfile_isCreatingInitialDefaultProfile_completionHandler___block_invoke_5(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __135__CreateEditProfileViewController__generateProfileSpecificBackgroundImageForProfile_isCreatingInitialDefaultProfile_completionHandler___block_invoke_6;
  block[3] = &unk_8ABE0;
  v2 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v4 = v2;
  v5 = *(a1 + 48);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t __135__CreateEditProfileViewController__generateProfileSpecificBackgroundImageForProfile_isCreatingInitialDefaultProfile_completionHandler___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) postDistributedNotificationNamed:WBSStartPageBackgroundAppearanceDidChangeNotification];
  v2 = [*(a1 + 32) tabGroupManager];
  v3 = [v2 updateProfileWithIdentifier:*(a1 + 40) persist:1 usingBlock:&__block_literal_global_195 completionHandler:0];

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_saveColorSelectionToProfile
{
  v3 = [(CreateEditProfileViewController *)self tabGroupManager];
  v4 = [(CreateEditProfileViewController *)self profile];
  v5 = [v4 identifier];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __63__CreateEditProfileViewController__saveColorSelectionToProfile__block_invoke;
  v8[3] = &unk_8AA40;
  v8[4] = self;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __63__CreateEditProfileViewController__saveColorSelectionToProfile__block_invoke_2;
  v7[3] = &unk_8AB78;
  v7[4] = self;
  v6 = [v3 updateProfileWithIdentifier:v5 persist:1 usingBlock:v8 completionHandler:v7];
}

void __63__CreateEditProfileViewController__saveColorSelectionToProfile__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = +[WBSCoreProfilesConstants orderedProfileColorOptions];
  v4 = *(a1 + 32);
  v5 = v4[30];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 _fallbackColorForCurrentSymbol];
  }

  else
  {
    [v3 objectAtIndexedSubscript:v5];
  }
  v6 = ;
  [v7 setColor:v6];
}

void *__63__CreateEditProfileViewController__saveColorSelectionToProfile__block_invoke_2(void *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = result[4];
    v4 = [v3 profile];
    v5 = [v4 identifier];
    [v3 _generateProfileSpecificBackgroundImageForProfile:v5 isCreatingInitialDefaultProfile:0 completionHandler:0];

    v6 = [v2[4] delegate];
    [v6 createEditProfileViewControllerDidChangeProfilesData:v2[4]];

    v7 = v2[4];
    v8 = WBProfilesChangedNotification;

    return [v7 postDistributedNotificationNamed:v8];
  }

  return result;
}

- (void)_updateColorSelection
{
  _SFDeviceIsPad();
  v3 = 0;
  do
  {
    v4 = v3 == self->_selectedColorIndex;
    v5 = [(NSMutableArray *)self->_colorButtons objectAtIndexedSubscript:v3];
    [v5 setSelected:v4];

    ++v3;
    if (_SFDeviceIsPad())
    {
      v6 = 5;
    }

    else
    {
      v6 = 4;
    }
  }

  while (v3 < v6);
  selectedColorIndex = self->_selectedColorIndex;
  IsPad = _SFDeviceIsPad();
  v9 = 4;
  if (IsPad)
  {
    v9 = 5;
  }

  overflowColorButton = self->_overflowColorButton;
  if (selectedColorIndex >= v9)
  {
    [(ColorPickerButton *)overflowColorButton setSelected:1];
    v12 = +[WBSCoreProfilesConstants orderedProfileColorOptions];
    v13 = [v12 objectAtIndexedSubscript:self->_selectedColorIndex];
    v14 = [UIColor safari_colorWithWBSNamedColorOption:v13];
    [(ColorPickerButton *)self->_overflowColorButton setColor:v14];

    v15 = self->_selectedColorIndex;
    v16 = _SFDeviceIsPad();
    v17 = -5;
    if (!v16)
    {
      v17 = -4;
    }

    v11 = v17 + v15;
  }

  else
  {
    [(ColorPickerButton *)overflowColorButton setSelected:0];
    [(ColorPickerButton *)self->_overflowColorButton setColor:0];
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  colorCollectionViewController = self->_colorCollectionViewController;

  [(ColorPickerCollectionViewController *)colorCollectionViewController setSelectedIndex:v11];
}

- (id)_fallbackColorForCurrentSymbol
{
  v3 = +[WBSCoreProfilesConstants orderedProfileColorOptions];
  v4 = [v3 objectAtIndexedSubscript:0];

  if (self->_selectedIconIndex)
  {
    v5 = [(CreateEditProfileViewController *)self _presetColorForCurrentSymbol];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    v8 = v7;

    v4 = v8;
  }

  return v4;
}

- (id)_presetColorForCurrentSymbol
{
  v3 = +[WBSStartPageBackgroundManager defaultManager];
  v4 = +[WBProfile availableSymbolImageNames];
  v5 = [v4 objectAtIndexedSubscript:self->_selectedIconIndex];
  v6 = [v3 presetIconColorForSymbol:v5];

  return v6;
}

- (void)profileIconCollectionViewController:(id)a3 didSelectIconAtIndex:(int64_t)a4
{
  v6 = a3;
  [(CreateEditProfileViewController *)self reloadSpecifier:self->_nameSpecifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __92__CreateEditProfileViewController_profileIconCollectionViewController_didSelectIconAtIndex___block_invoke;
  v7[3] = &unk_8ACA8;
  v7[4] = self;
  v7[5] = a4;
  [v6 dismissViewControllerAnimated:1 completion:v7];
}

id __92__CreateEditProfileViewController_profileIconCollectionViewController_didSelectIconAtIndex___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  IsPad = _SFDeviceIsPad();
  v4 = 4;
  if (IsPad)
  {
    v4 = 5;
  }

  *(*(a1 + 32) + 168) = v4 + v2;
  v5 = *(*(a1 + 32) + 152);
  v6 = +[WBProfile availableSymbolImageNames];
  v7 = [v6 objectAtIndexedSubscript:*(*(a1 + 32) + 168)];
  v8 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle2 scale:1];
  v9 = [UIImage _systemImageNamed:v7 withConfiguration:v8];
  [v5 setImage:v9 forState:0];

  [*(*(a1 + 32) + 176) setSelected:0];
  objc_storeStrong((*(a1 + 32) + 176), *(*(a1 + 32) + 152));
  [*(*(a1 + 32) + 176) setSelected:1];
  v10 = *(a1 + 32);

  return [v10 _saveIconToProfile];
}

@end