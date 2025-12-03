@interface CreateEditProfileViewController
- (CreateEditProfileViewController)init;
- (id)_contentBlockerManagerForProfileIdentifier:(id)identifier;
- (id)_fallbackColorForCurrentSymbol;
- (id)_newTabOverrideDescription;
- (id)_presetColorForCurrentSymbol;
- (id)_titleOfCurrentFavorites;
- (id)_webExtensionsControllerForProfileIdentifier:(id)identifier;
- (id)specifiers;
- (void)_createNewFolderForFavorites;
- (void)_deleteDefunctCustomFavoritesFolderWithServerID:(id)d;
- (void)_didSelectColorButton:(id)button;
- (void)_didSelectIconButton:(id)button;
- (void)_generateProfileSpecificBackgroundImageForProfile:(id)profile isCreatingInitialDefaultProfile:(BOOL)defaultProfile completionHandler:(id)handler;
- (void)_saveColorSelectionToProfile;
- (void)_saveIconToProfile;
- (void)_setValue:(id)value forSpecifier:(id)specifier;
- (void)_showColorPickerPopover:(id)popover;
- (void)_showIconPickerPopover:(id)popover;
- (void)_updateColorSelection;
- (void)_updateTitle;
- (void)colorPickerCollectionViewController:(id)controller didSelectColorAtIndex:(int64_t)index;
- (void)deleteButtonTapped:(id)tapped;
- (void)didSelectNewFolderInProfileFavoritesFolderPickerController:(id)controller;
- (void)doneButtonTapped:(id)tapped;
- (void)postDistributedNotificationNamed:(__CFString *)named;
- (void)profileFavoritesFolderPickerController:(id)controller didSelectFolderWithServerID:(id)d;
- (void)profileIconCollectionViewController:(id)controller didSelectIconAtIndex:(int64_t)index;
- (void)profileNameCellDidResignFirstResponder;
- (void)setSpecifier:(id)specifier;
- (void)setUserInfo:(id)info;
- (void)tabGroupManager:(id)manager didUpdateProfileWithIdentifier:(id)identifier difference:(id)difference;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
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
    profile = [(CreateEditProfileViewController *)self profile];
    identifier = [profile identifier];
    v21 = [identifier isEqualToString:WBSDefaultProfileIdentifier];

    if (v21)
    {
      v22 = self->_nameAndIconGroupSpecifier;
      profile3 = SafariSettingsLocalizedString(@"%@ (Default) cannot be deleted.", @"Profiles");
      profile2 = [(CreateEditProfileViewController *)self profile];
      title = [profile2 title];
      v26 = [NSString stringWithFormat:profile3, title];
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
      profile3 = [(CreateEditProfileViewController *)self profile];
      v34 = &__kCFBooleanFalse;
      if (!profile3)
      {
        v34 = &__kCFBooleanTrue;
      }

      v106[1] = @"delegate";
      v107[0] = v34;
      v107[1] = self;
      profile2 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:2];
      [(PSSpecifier *)self->_favoritesSpecifier setUserInfo:profile2];
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
      managedNewTabPageState = [v37 managedNewTabPageState];

      if (managedNewTabPageState)
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
      if (managedNewTabPageState)
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

      if (managedNewTabPageState)
      {
        [(PSSpecifier *)self->_newTabsSpecifier setProperty:&__kCFBooleanFalse forKey:v18];
      }

      v104[0] = @"profileID";
      profile4 = [(CreateEditProfileViewController *)self profile];
      identifierForExtensions = [profile4 identifierForExtensions];
      v51 = identifierForExtensions;
      v52 = &stru_8BB60;
      if (identifierForExtensions)
      {
        v52 = identifierForExtensions;
      }

      v104[1] = @"delegate";
      v105[0] = v52;
      v105[1] = self;
      v53 = [NSDictionary dictionaryWithObjects:v105 forKeys:v104 count:2];
      [(PSSpecifier *)self->_newTabsSpecifier setUserInfo:v53];
    }

    profile5 = [(CreateEditProfileViewController *)self profile];
    v55 = profile5 == 0;

    if ((v55 | v21))
    {
      specifiers = 0;
    }

    else
    {
      profile6 = [(CreateEditProfileViewController *)self profile];
      identifierForExtensions2 = [profile6 identifierForExtensions];

      v58 = [(CreateEditProfileViewController *)self _webExtensionsControllerForProfileIdentifier:identifierForExtensions2];
      v59 = [(CreateEditProfileViewController *)self _contentBlockerManagerForProfileIdentifier:identifierForExtensions2];
      extensions = [v58 extensions];
      v61 = [extensions count];
      extensions2 = [v59 extensions];
      LODWORD(v61) = &v61[[extensions2 count]] > &dword_4 + 2;

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

        specifiers = 0;
        [(PSSpecifier *)self->_manageExtensionsSpecifier setUserInfo:identifierForExtensions2];
      }

      else
      {
        v69 = [[SafariExtensionsProfileSettingsController alloc] initWithProfileIdentifier:identifierForExtensions2];
        specifiers = [(SafariExtensionsProfileSettingsController *)v69 specifiers];
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

    if (specifiers)
    {
      v86 = [*&self->super.PSListController_opaque[v98] arrayByAddingObjectsFromArray:specifiers];
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

- (void)_setValue:(id)value forSpecifier:(id)specifier
{
  valueCopy = value;
  -[UIBarButtonItem setEnabled:](self->_doneButton, "setEnabled:", [valueCopy length] != 0);
  v5 = [valueCopy copy];
  profileTitle = self->_profileTitle;
  self->_profileTitle = v5;

  [(CreateEditProfileViewController *)self _updateTitle];
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v6.receiver = self;
  v6.super_class = CreateEditProfileViewController;
  [(CreateEditProfileViewController *)&v6 setSpecifier:specifierCopy];
  if (specifierCopy)
  {
    userInfo = [specifierCopy userInfo];
    [(CreateEditProfileViewController *)self setUserInfo:userInfo];
  }
}

- (id)_webExtensionsControllerForProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[SafariSettingsController extensionsProfilesDataSource];
  profileServerIDToWebExtensionsControllers = [v4 profileServerIDToWebExtensionsControllers];
  v6 = [profileServerIDToWebExtensionsControllers objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (id)_contentBlockerManagerForProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[SafariSettingsController extensionsProfilesDataSource];
  profileServerIDToContentBlockerManagers = [v4 profileServerIDToContentBlockerManagers];
  v6 = [profileServerIDToContentBlockerManagers objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (id)_newTabOverrideDescription
{
  profile = [(CreateEditProfileViewController *)self profile];

  if (profile)
  {
    profile2 = [(CreateEditProfileViewController *)self profile];
    identifierForExtensions = [profile2 identifierForExtensions];
    userInfo2 = [(CreateEditProfileViewController *)self _webExtensionsControllerForProfileIdentifier:identifierForExtensions];

    v7 = [SafariNewTabOverrideSettingsController topLevelDetailStringWithWebExtensionsController:userInfo2];
  }

  else
  {
    v8 = +[WBSManagedNewTabPageController sharedController];
    managedNewTabPageState = [v8 managedNewTabPageState];

    if (managedNewTabPageState)
    {
      userInfo2 = [(CreateEditProfileViewController *)self _webExtensionsControllerForProfileIdentifier:WBSDefaultProfileIdentifier];
      v7 = [SafariNewTabOverrideSettingsController topLevelDetailStringWithWebExtensionsController:userInfo2];
    }

    else
    {
      userInfo = [(PSSpecifier *)self->_newTabsSpecifier userInfo];
      v11 = WBSNewTabTopLevelStringKey;
      v12 = [userInfo safari_stringForKey:WBSNewTabTopLevelStringKey];
      v13 = [v12 length];

      if (v13)
      {
        userInfo2 = [(PSSpecifier *)self->_newTabsSpecifier userInfo];
        [userInfo2 objectForKeyedSubscript:v11];
      }

      else
      {
        userInfo2 = [(CreateEditProfileViewController *)self _webExtensionsControllerForProfileIdentifier:WBSDefaultProfileIdentifier];
        [SafariNewTabOverrideSettingsController topLevelDetailStringWithWebExtensionsController:userInfo2];
      }
      v7 = ;
    }
  }

  v14 = v7;

  return v14;
}

- (void)setUserInfo:(id)info
{
  infoCopy = info;
  objc_storeStrong(&self->_userInfo, info);
  profile = [(SafariProfileSettingsUserInfo *)self->_userInfo profile];
  customFavoritesFolderServerID = [profile customFavoritesFolderServerID];
  customFavoritesFolderServerID = self->_customFavoritesFolderServerID;
  self->_customFavoritesFolderServerID = customFavoritesFolderServerID;

  title = [profile title];
  profileTitle = self->_profileTitle;
  self->_profileTitle = title;
}

- (void)profileNameCellDidResignFirstResponder
{
  profile = [(CreateEditProfileViewController *)self profile];
  identifier = [profile identifier];
  v5 = [identifier isEqualToString:WBSDefaultProfileIdentifier];

  if (([(NSString *)self->_profileTitle length]!= 0) | v5 & 1)
  {
    tabGroupManager = [(CreateEditProfileViewController *)self tabGroupManager];
    profile2 = [(CreateEditProfileViewController *)self profile];
    identifier2 = [profile2 identifier];
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
    v9 = [tabGroupManager updateProfileWithIdentifier:identifier2 persist:1 usingBlock:v16 completionHandler:v14];
  }

  else
  {
    profile3 = [(CreateEditProfileViewController *)self profile];
    title = [profile3 title];
    profileTitle = self->_profileTitle;
    self->_profileTitle = title;

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
  view = [(CreateEditProfileViewController *)self view];
  [view setAccessibilityIdentifier:@"ProfilesSettingsCreateEditView"];

  [(CreateEditProfileViewController *)self _updateTitle];
  v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneButtonTapped:"];
  doneButton = self->_doneButton;
  self->_doneButton = v4;

  [(UIBarButtonItem *)self->_doneButton setEnabled:self->_profileTitle != 0];
  profile = [(CreateEditProfileViewController *)self profile];

  if (!profile)
  {
    self->_selectedIconIndex = 0;
    firstObject = [(NSArray *)self->_iconButtons firstObject];
    selectedIconButton = self->_selectedIconButton;
    self->_selectedIconButton = firstObject;

    [(ProfileIconButton *)self->_selectedIconButton setSelected:1];
    v9 = self->_doneButton;
    navigationItem = [(CreateEditProfileViewController *)self navigationItem];
    [navigationItem setRightBarButtonItem:v9];

    v11 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"cancelButtonTapped:"];
    navigationItem2 = [(CreateEditProfileViewController *)self navigationItem];
    [navigationItem2 setLeftBarButtonItem:v11];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v8 = [(CreateEditProfileViewController *)self specifierAtIndexPath:path];
  v9 = v8;
  if (v8 == self->_iconSpecifier)
  {
    profile = [(CreateEditProfileViewController *)self profile];
    symbolImageName = [profile symbolImageName];

    if (symbolImageName)
    {
      v14 = +[WBProfile availableSymbolImageNames];
      symbolImageName2 = [profile symbolImageName];
      v16 = [v14 indexOfObject:symbolImageName2];

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
        symbolImageName3 = [profile symbolImageName];
        v28 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle2 scale:1];
        v29 = [UIImage _systemImageNamed:symbolImageName3 withConfiguration:v28];
        [(ProfileIconButton *)selectedIconButton setImage:v29 forState:0];
      }

      else
      {
        v19 = [(NSArray *)self->_iconButtons objectAtIndexedSubscript:v16];
        symbolImageName3 = self->_selectedIconButton;
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
      profile = +[UIColor redColor];
      textLabel = [cellCopy textLabel];
      [textLabel setTextColor:profile];
LABEL_15:

      goto LABEL_25;
    }

    if (v8 == self->_colorSpecifier)
    {
      profile2 = [(CreateEditProfileViewController *)self profile];
      color = [profile2 color];
      profile = [color colorName];

      if (profile)
      {
        v23 = +[WBSCoreProfilesConstants orderedProfileColorOptions];
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = __79__CreateEditProfileViewController_tableView_willDisplayCell_forRowAtIndexPath___block_invoke;
        v34[3] = &unk_8AA90;
        v35 = profile;
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
        _fallbackColorForCurrentSymbol = [(CreateEditProfileViewController *)self _fallbackColorForCurrentSymbol];
        v31 = +[WBSCoreProfilesConstants orderedProfileColorOptions];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = __79__CreateEditProfileViewController_tableView_willDisplayCell_forRowAtIndexPath___block_invoke_2;
        v32[3] = &unk_8AA90;
        v26 = _fallbackColorForCurrentSymbol;
        v33 = v26;
        self->_selectedColorIndex = [v31 indexOfObjectPassingTest:v32];
      }

      [(CreateEditProfileViewController *)self _updateColorSelection];
    }

    else
    {
      profile = [(PSSpecifier *)v8 userInfo];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        textLabel = [(PSSpecifier *)v9 userInfo];
        if ([textLabel isEnabled])
        {
          v12 = 3;
        }

        else
        {
          v12 = 0;
        }

        [cellCopy setAccessoryType:v12];
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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(CreateEditProfileViewController *)self indexForIndexPath:pathCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  }

  userInfo = [v9 userInfo];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userInfo2 = [v9 userInfo];
    isEnabled = [userInfo2 isEnabled];
    v13 = [viewCopy cellForRowAtIndexPath:pathCopy];
    v14 = v13;
    if (isEnabled)
    {
      v15 = 0;
    }

    else
    {
      v15 = 3;
    }

    [v13 setAccessoryType:v15];

    if ([userInfo2 isEnabled])
    {
      [userInfo2 disable];
      [(CreateEditProfileViewController *)self postDistributedNotificationNamed:@"com.apple.mobilesafari.SafariSettingsChangedExtensionSettings"];
      profile = [(CreateEditProfileViewController *)self profile];
      identifierForExtensions = [profile identifierForExtensions];
      v18 = [(CreateEditProfileViewController *)self _webExtensionsControllerForProfileIdentifier:identifierForExtensions];

      v23 = v18;
      composedIdentifier = [userInfo2 composedIdentifier];
      tabOverridePreferencesManager = [v18 tabOverridePreferencesManager];
      v21 = +[NSUserDefaults safari_browserDefaults];
      v22 = [tabOverridePreferencesManager extensionComposedIdentifierForNewTabPreferenceInDefaults:v21];

      if ([composedIdentifier isEqualToString:v22])
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
      [userInfo2 enableWithPresentingViewController:self completionHandler:v25];
    }

    v24.receiver = self;
    v24.super_class = CreateEditProfileViewController;
    [(SafariSettingsListController *)&v24 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }

  else
  {
    v26.receiver = self;
    v26.super_class = CreateEditProfileViewController;
    [(SafariSettingsListController *)&v26 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

- (void)doneButtonTapped:(id)tapped
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

  tabGroupManager = [(CreateEditProfileViewController *)self tabGroupManager];
  v7 = [WBMutableProfile alloc];
  profileTitle = self->_profileTitle;
  customFavoritesFolderServerID = self->_customFavoritesFolderServerID;
  deviceIdentifier = [tabGroupManager deviceIdentifier];
  v11 = [v7 initWithTitle:profileTitle symbolImageName:v5 favoritesFolderServerID:customFavoritesFolderServerID deviceIdentifier:deviceIdentifier];

  selectedColorIndex = self->_selectedColorIndex;
  if (selectedColorIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    _fallbackColorForCurrentSymbol = [(CreateEditProfileViewController *)self _fallbackColorForCurrentSymbol];
    v14 = _fallbackColorForCurrentSymbol;
  }

  else
  {
    v14 = +[WBSCoreProfilesConstants orderedProfileColorOptions];
    _fallbackColorForCurrentSymbol = [v14 objectAtIndexedSubscript:self->_selectedColorIndex];
  }

  [v11 setColor:_fallbackColorForCurrentSymbol];
  if (selectedColorIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
  }

  tabGroupManager2 = [(CreateEditProfileViewController *)self tabGroupManager];
  hasMultipleProfiles = [tabGroupManager2 hasMultipleProfiles];

  v17 = [v11 copy];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __52__CreateEditProfileViewController_doneButtonTapped___block_invoke;
  v23[3] = &unk_8AAE0;
  v23[4] = self;
  v24 = hasMultipleProfiles ^ 1;
  [tabGroupManager appendProfile:v17 completionHandler:v23];

  delegate = [(CreateEditProfileViewController *)self delegate];
  [delegate createEditProfileViewControllerDidChangeProfilesData:self];

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

- (void)postDistributedNotificationNamed:(__CFString *)named
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, named, 0, 0, 1u);
}

- (void)deleteButtonTapped:(id)tapped
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

- (void)_deleteDefunctCustomFavoritesFolderWithServerID:(id)d
{
  dCopy = d;
  if ([dCopy length] && (objc_msgSend(dCopy, "isEqualToString:", WBSCloudBookmarkListRecordNameFavoritesBar) & 1) == 0)
  {
    v5 = +[WebBookmarkCollection safariBookmarkCollection];
    favoritesFolder = [v5 favoritesFolder];
    serverID = [favoritesFolder serverID];
    v8 = [dCopy isEqualToString:serverID];

    if ((v8 & 1) == 0)
    {
      v9 = [v5 bookmarkIDForServerID:dCopy excludeDeletedBookmarks:1];
      if (v9 != 0x7FFFFFFF)
      {
        v19 = [v5 listWithID:v9];
        if (v19 && ![v19 bookmarkCount])
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          tabGroupManager = [(CreateEditProfileViewController *)self tabGroupManager];
          profiles = [tabGroupManager profiles];

          v12 = [profiles countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v12)
          {
            v13 = *v21;
            while (2)
            {
              for (i = 0; i != v12; i = i + 1)
              {
                if (*v21 != v13)
                {
                  objc_enumerationMutation(profiles);
                }

                customFavoritesFolderServerID = [*(*(&v20 + 1) + 8 * i) customFavoritesFolderServerID];
                v16 = [customFavoritesFolderServerID isEqualToString:dCopy];

                if (v16)
                {

                  goto LABEL_18;
                }
              }

              v12 = [profiles countByEnumeratingWithState:&v20 objects:v24 count:16];
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

- (void)_didSelectIconButton:(id)button
{
  buttonCopy = button;
  if ([buttonCopy tag] != self->_selectedIconIndex)
  {
    [(CreateEditProfileViewController *)self reloadSpecifier:self->_nameSpecifier];
    [(ProfileIconButton *)self->_selectedIconButton setSelected:0];
    customIconButton = self->_customIconButton;
    v6 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleTitle2 scale:2];
    v7 = [UIImage _systemImageNamed:@"ellipsis" withConfiguration:v6];
    [(ProfileIconButton *)customIconButton setImage:v7 forState:0];

    self->_selectedIconIndex = [buttonCopy tag];
    [buttonCopy setSelected:1];
    objc_storeStrong(&self->_selectedIconButton, button);
    [(CreateEditProfileViewController *)self _saveIconToProfile];
  }
}

- (void)_showIconPickerPopover:(id)popover
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
    view = [(ProfileIconCollectionViewController *)self->_profileIconCollectionViewController view];
    [view setFrame:{0.0, 0.0, 100.0, 100.0}];

    view2 = [(ProfileIconCollectionViewController *)self->_profileIconCollectionViewController view];
    [view2 layoutIfNeeded];

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
  view3 = [(ProfileIconCollectionViewController *)self->_profileIconCollectionViewController view];
  v22 = [NSIndexPath indexPathForRow:0 inSection:0];
  v23 = [view3 layoutAttributesForItemAtIndexPath:v22];
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
  profile = [(CreateEditProfileViewController *)self profile];

  if (profile)
  {
    tabGroupManager = [(CreateEditProfileViewController *)self tabGroupManager];
    profile2 = [(CreateEditProfileViewController *)self profile];
    identifier = [profile2 identifier];
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
    v7 = [tabGroupManager updateProfileWithIdentifier:identifier persist:1 usingBlock:v14 completionHandler:v13];
  }

  profile3 = [(CreateEditProfileViewController *)self profile];
  if (profile3)
  {
  }

  else if (!self->_hasManuallyPickedColor)
  {
    _presetColorForCurrentSymbol = [(CreateEditProfileViewController *)self _presetColorForCurrentSymbol];
    v10 = +[WBSCoreProfilesConstants orderedProfileColorOptions];
    if (_presetColorForCurrentSymbol)
    {
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = __53__CreateEditProfileViewController__saveIconToProfile__block_invoke_3;
      v11[3] = &unk_8AA90;
      v12 = _presetColorForCurrentSymbol;
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

- (void)_didSelectColorButton:(id)button
{
  buttonCopy = button;
  self->_hasManuallyPickedColor = 1;
  v6 = buttonCopy;
  v5 = [(NSMutableArray *)self->_colorButtons indexOfObject:?];
  if (v5 != self->_selectedColorIndex)
  {
    [(CreateEditProfileViewController *)self reloadSpecifier:self->_nameSpecifier];
    self->_selectedColorIndex = v5;
    [(CreateEditProfileViewController *)self _updateColorSelection];
    [(CreateEditProfileViewController *)self _saveColorSelectionToProfile];
  }
}

- (void)_showColorPickerPopover:(id)popover
{
  popoverCopy = popover;
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
  firstObject = [(NSMutableArray *)self->_colorButtons firstObject];
  [firstObject intrinsicContentSize];
  v22 = v21;

  [v9 count];
  _SFCeilingFloatToPixels();
  v24 = v23;
  firstObject2 = [(NSMutableArray *)self->_colorButtons firstObject];
  [firstObject2 intrinsicContentSize];
  v27 = 10.0 + 10.0 + v24 * (v26 + 5.0 * 2.0);

  [(ColorPickerCollectionViewController *)self->_colorCollectionViewController setPreferredContentSize:10.0 + 10.0 + (v22 + 5.0 * 2.0) * 4.0, v27];
  v28 = self->_colorCollectionViewController;
  v29 = [[_SFUIViewPopoverSourceInfo alloc] initWithView:popoverCopy];
  [(CreateEditProfileViewController *)self _presentModalViewController:v28 fromPopoverSource:v29 useAdaptivePresentationInCompact:0 animated:1 completion:0];
}

- (void)profileFavoritesFolderPickerController:(id)controller didSelectFolderWithServerID:(id)d
{
  dCopy = d;
  customFavoritesFolderServerID = self->_customFavoritesFolderServerID;
  if ((WBSIsEqual() & 1) == 0)
  {
    objc_storeStrong(&self->_customFavoritesFolderServerID, d);
    tabGroupManager = [(CreateEditProfileViewController *)self tabGroupManager];
    profile = [(CreateEditProfileViewController *)self profile];
    identifier = [profile identifier];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __102__CreateEditProfileViewController_profileFavoritesFolderPickerController_didSelectFolderWithServerID___block_invoke;
    v13[3] = &unk_8AA40;
    v14 = dCopy;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __102__CreateEditProfileViewController_profileFavoritesFolderPickerController_didSelectFolderWithServerID___block_invoke_2;
    v12[3] = &unk_8AB78;
    v12[4] = self;
    v11 = [tabGroupManager updateProfileWithIdentifier:identifier persist:1 usingBlock:v13 completionHandler:v12];

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

- (void)didSelectNewFolderInProfileFavoritesFolderPickerController:(id)controller
{
  customFavoritesFolderServerID = self->_customFavoritesFolderServerID;
  self->_customFavoritesFolderServerID = 0;

  favoritesSpecifier = self->_favoritesSpecifier;

  [(CreateEditProfileViewController *)self reloadSpecifier:favoritesSpecifier];
}

- (void)tabGroupManager:(id)manager didUpdateProfileWithIdentifier:(id)identifier difference:(id)difference
{
  managerCopy = manager;
  identifierCopy = identifier;
  profile = [(CreateEditProfileViewController *)self profile];
  identifier = [profile identifier];
  v10 = [identifierCopy isEqualToString:identifier];

  if (v10)
  {
    v11 = [managerCopy profileWithIdentifier:identifierCopy];
    [(SafariProfileSettingsUserInfo *)self->_userInfo setProfile:v11];
    title = [v11 title];
    profileTitle = self->_profileTitle;
    self->_profileTitle = title;

    profile2 = [(SafariProfileSettingsUserInfo *)self->_userInfo profile];
    customFavoritesFolderServerID = [profile2 customFavoritesFolderServerID];

    if (customFavoritesFolderServerID)
    {
      objc_storeStrong(&self->_customFavoritesFolderServerID, customFavoritesFolderServerID);
    }

    [(CreateEditProfileViewController *)self reloadSpecifiers];
    [(CreateEditProfileViewController *)self _updateTitle];
  }
}

- (void)colorPickerCollectionViewController:(id)controller didSelectColorAtIndex:(int64_t)index
{
  [(CreateEditProfileViewController *)self reloadSpecifier:self->_nameSpecifier];
  self->_hasManuallyPickedColor = 1;
  IsPad = _SFDeviceIsPad();
  v7 = 4;
  if (IsPad)
  {
    v7 = 5;
  }

  self->_selectedColorIndex = v7 + index;
  [(CreateEditProfileViewController *)self _updateColorSelection];

  [(CreateEditProfileViewController *)self _saveColorSelectionToProfile];
}

- (void)_updateTitle
{
  profile = [(CreateEditProfileViewController *)self profile];
  if (profile)
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
  if (profile)
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
    safari_stringByTrimmingWhitespace = [(NSString *)self->_profileTitle safari_stringByTrimmingWhitespace];
    if ([safari_stringByTrimmingWhitespace length])
    {
      v4 = safari_stringByTrimmingWhitespace;
      safari_stringByTrimmingWhitespace = v4;
    }

    else
    {
      v4 = SafariSettingsLocalizedString(@"Titlebar Button Name for Creating New Folder", @"Profiles");
    }

    title = v4;
    goto LABEL_12;
  }

  safari_stringByTrimmingWhitespace = +[WebBookmarkCollection safariBookmarkCollection];
  favoritesFolder = [safari_stringByTrimmingWhitespace favoritesFolder];
  customFavoritesFolderServerID = self->_customFavoritesFolderServerID;
  if (customFavoritesFolderServerID)
  {
    v7 = [safari_stringByTrimmingWhitespace bookmarkWithServerID:customFavoritesFolderServerID excludeDeletedBookmarks:1];
    v8 = v7;
    if (v7 && ([v7 isEqual:favoritesFolder] & 1) == 0)
    {
      title = [v8 title];

      goto LABEL_9;
    }
  }

  title = SafariSettingsLocalizedString(@"Favorites", @"Safari");
LABEL_9:

LABEL_12:

  return title;
}

- (void)_createNewFolderForFavorites
{
  v11 = +[WebBookmarkCollection safariBookmarkCollection];
  v3 = [WebBookmark alloc];
  rootBookmark = [v11 rootBookmark];
  v5 = [v3 initFolderWithParentID:objc_msgSend(rootBookmark collectionType:{"identifier"), 0}];

  [v5 setTitle:self->_profileTitle];
  [v11 saveBookmark:v5];
  serverID = [v5 serverID];

  if (!serverID)
  {
    v7 = +[NSUUID UUID];
    uUIDString = [v7 UUIDString];
    [v11 setServerID:uUIDString forBookmark:v5];
  }

  serverID2 = [v5 serverID];
  customFavoritesFolderServerID = self->_customFavoritesFolderServerID;
  self->_customFavoritesFolderServerID = serverID2;
}

- (void)_generateProfileSpecificBackgroundImageForProfile:(id)profile isCreatingInitialDefaultProfile:(BOOL)defaultProfile completionHandler:(id)handler
{
  profileCopy = profile;
  handlerCopy = handler;
  v10 = +[WBSStartPageBackgroundManager defaultManager];
  v11 = [(__CFString *)profileCopy isEqualToString:WBSDefaultProfileIdentifier];
  v12 = v11 ^ 1;
  v13 = &stru_8BB60;
  if (!v11)
  {
    v13 = profileCopy;
  }

  v14 = v13;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __135__CreateEditProfileViewController__generateProfileSpecificBackgroundImageForProfile_isCreatingInitialDefaultProfile_completionHandler___block_invoke;
  v19[3] = &unk_8AC80;
  v15 = v10;
  v20 = v15;
  v16 = profileCopy;
  v25 = v12;
  defaultProfileCopy = defaultProfile;
  v21 = v16;
  selfCopy = self;
  v23 = v14;
  v17 = handlerCopy;
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
  tabGroupManager = [(CreateEditProfileViewController *)self tabGroupManager];
  profile = [(CreateEditProfileViewController *)self profile];
  identifier = [profile identifier];
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
  v6 = [tabGroupManager updateProfileWithIdentifier:identifier persist:1 usingBlock:v8 completionHandler:v7];
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
    _presetColorForCurrentSymbol = [(CreateEditProfileViewController *)self _presetColorForCurrentSymbol];
    v6 = _presetColorForCurrentSymbol;
    if (_presetColorForCurrentSymbol)
    {
      v7 = _presetColorForCurrentSymbol;
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

- (void)profileIconCollectionViewController:(id)controller didSelectIconAtIndex:(int64_t)index
{
  controllerCopy = controller;
  [(CreateEditProfileViewController *)self reloadSpecifier:self->_nameSpecifier];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __92__CreateEditProfileViewController_profileIconCollectionViewController_didSelectIconAtIndex___block_invoke;
  v7[3] = &unk_8ACA8;
  v7[4] = self;
  v7[5] = index;
  [controllerCopy dismissViewControllerAnimated:1 completion:v7];
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