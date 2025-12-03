@interface AXCaptioningThemeController
- (AXCaptioningThemeController)initWithNibName:(id)name bundle:(id)bundle;
- (BOOL)_profileOverridesStyle:(__CFString *)style;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (id)_videoOverridesStyle:(id)style;
- (id)specifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)_addEditButton;
- (void)_donePressed;
- (void)_editPressed;
- (void)_resetActiveProfileToDefault;
- (void)_setVideoOverridesStyle:(id)style specifier:(id)specifier;
- (void)_themeCountChanged:(id)changed;
- (void)dealloc;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AXCaptioningThemeController

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = AXCaptioningThemeController;
  [(AXCaptioningThemeController *)&v4 dealloc];
}

- (AXCaptioningThemeController)initWithNibName:(id)name bundle:(id)bundle
{
  v8.receiver = self;
  v8.super_class = AXCaptioningThemeController;
  v4 = [(AXCaptionStyleChooserController *)&v8 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_themeCountChanged:" name:@"AXThemeCountChangedNotification" object:0];

    v6 = v4;
  }

  return v4;
}

- (void)_themeCountChanged:(id)changed
{
  v4 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] = 0;

  [(AXCaptioningThemeController *)self setCustomProfiles:0];
  [(AXCaptioningThemeController *)self setDefaultProfiles:0];

  [(AXCaptioningThemeController *)self reloadSpecifiers];
}

- (id)specifiers
{
  selfCopy = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    editableVisibleSpecifiers = self->_editableVisibleSpecifiers;
    if (editableVisibleSpecifiers)
    {
      v5 = [(NSMutableArray *)editableVisibleSpecifiers mutableCopy];
      v6 = *&selfCopy->super.AXUISettingsBaseListController_opaque[v3];
      *&selfCopy->super.AXUISettingsBaseListController_opaque[v3] = v5;
    }

    else
    {
      v32 = OBJC_IVAR___PSListController__specifiers;
      v34 = selfCopy;
      v36 = objc_alloc_init(NSMutableArray);
      v52 = 0;
      v53 = &v52;
      v54 = 0x3032000000;
      v55 = __Block_byref_object_copy__4;
      v56 = __Block_byref_object_dispose__4;
      v57 = +[NSMutableArray array];
      v46 = 0;
      v47 = &v46;
      v48 = 0x3032000000;
      v49 = __Block_byref_object_copy__4;
      v50 = __Block_byref_object_dispose__4;
      v51 = +[NSMutableArray array];
      v7 = MACaptionAppearancePrefCopyProfileIDs();
      v33 = [v7 sortedArrayUsingComparator:&__block_literal_global_52];

      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = __41__AXCaptioningThemeController_specifiers__block_invoke_2;
      v45[3] = &unk_258508;
      v45[4] = selfCopy;
      v45[5] = &v46;
      v45[6] = &v52;
      [v33 enumerateObjectsUsingBlock:v45];
      v8 = [PSSpecifier preferenceSpecifierNamed:0 target:selfCopy set:0 get:0 detail:0 cell:11 edit:0];
      [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
      [v8 setProperty:@"PreviewCell" forKey:PSKeyNameKey];
      [v36 addObject:v8];
      v35 = [PSSpecifier preferenceSpecifierNamed:&stru_25D420 target:selfCopy set:0 get:0 detail:0 cell:0 edit:0];

      [v35 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
      [v36 addObject:v35];
      active = MACaptionAppearancePrefCopyActiveProfileID();
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v10 = v53[5];
      v11 = [v10 countByEnumeratingWithState:&v41 objects:v59 count:16];
      if (v11)
      {
        v12 = *v42;
        v13 = PSRadioGroupCheckedSpecifierKey;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v42 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v41 + 1) + 8 * i);
            [v36 addObject:v15];
            v16 = [v15 propertyForKey:@"CaptionProfileID"];
            v17 = [v16 isEqualToString:active];

            if (v17)
            {
              [v35 setProperty:v15 forKey:v13];
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v41 objects:v59 count:16];
        }

        while (v11);
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v18 = v47[5];
      v19 = [v18 countByEnumeratingWithState:&v37 objects:v58 count:16];
      if (v19)
      {
        v20 = *v38;
        v21 = PSRadioGroupCheckedSpecifierKey;
        do
        {
          for (j = 0; j != v19; j = j + 1)
          {
            if (*v38 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v37 + 1) + 8 * j);
            [v36 addObject:v23];
            v24 = [v23 propertyForKey:@"CaptionProfileID"];
            v25 = [v24 isEqualToString:active];

            if (v25)
            {
              [v35 setProperty:v23 forKey:v21];
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v37 objects:v58 count:16];
        }

        while (v19);
      }

      v26 = settingsLocString(@"create.new.theme", @"Captioning");
      v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:v34 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

      [v27 setProperty:@"CreateNewStyle" forKey:PSIDKey];
      [v36 addObject:v27];
      [(AXCaptioningThemeController *)v34 setCustomProfiles:v47[5]];
      [(AXCaptioningThemeController *)v34 setDefaultProfiles:v53[5]];
      v28 = *&v34->super.AXUISettingsBaseListController_opaque[v32];
      *&v34->super.AXUISettingsBaseListController_opaque[v32] = v36;
      v29 = v36;

      _Block_object_dispose(&v46, 8);
      _Block_object_dispose(&v52, 8);

      selfCopy = v34;
      v3 = v32;
    }
  }

  v30 = *&selfCopy->super.AXUISettingsBaseListController_opaque[v3];

  return v30;
}

int64_t __41__AXCaptioningThemeController_specifiers__block_invoke(id a1, id a2, id a3)
{
  v3 = a3;
  v4 = MACaptionAppearancePrefCopyProfileOrder();
  v5 = MACaptionAppearancePrefCopyProfileOrder();

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = [v4 compare:v5];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

void __41__AXCaptioningThemeController_specifiers__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  if (([v7 isEqualToString:@"MACaptionProfile-ContentProvided"] & 1) == 0)
  {
    v3 = MACaptionAppearancePrefCopyProfileName();
    v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:*(a1 + 32) set:0 get:0 detail:0 cell:4 edit:0];
    [v4 setProperty:v3 forKey:PSTitleKey];
    [v4 setProperty:v7 forKey:@"CaptionProfileID"];
    [v4 setProperty:&__kCFBooleanTrue forKey:@"IsCaptionProfile"];
    [v4 setCellType:3];
    IsProfileEditable = MACaptionAppearancePrefIsProfileEditable();
    v6 = 40;
    if (!IsProfileEditable)
    {
      v6 = 48;
    }

    [*(*(*(a1 + v6) + 8) + 40) addObject:v4];
  }
}

- (void)_resetActiveProfileToDefault
{
  if (AXCaptionResetDefaultActiveProfile())
  {

    [(AXCaptioningThemeController *)self reload];
  }
}

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = AXCaptioningThemeController;
  [(AXCaptionStyleChooserController *)&v9 viewDidLoad];
  active = MACaptionAppearancePrefCopyActiveProfileID();
  v4 = MACaptionAppearancePrefCopyProfileIDs();
  v5 = v4;
  if (!active || ([v4 containsObject:active] & 1) == 0)
  {
    [(AXCaptioningThemeController *)self _resetActiveProfileToDefault];
  }

  table = [(AXCaptioningThemeController *)self table];
  v7 = objc_opt_class();
  v8 = +[AXCaptionPreviewCell cellReuseIdentifier];
  [table registerClass:v7 forCellReuseIdentifier:v8];
}

- (BOOL)_profileOverridesStyle:(__CFString *)style
{
  v3 = MACaptionAppearancePrefCopyVideoOverrideForegroundColor();
  v4 = MACaptionAppearancePrefCopyVideoOverrideBackgroundColor();
  v5 = MACaptionAppearancePrefCopyVideoOverrideWindowColor();
  v6 = MACaptionAppearancePrefCopyVideoOverrideForegroundOpacity();
  v7 = MACaptionAppearancePrefCopyVideoOverrideBackgroundOpacity();
  v8 = MACaptionAppearancePrefCopyVideoOverrideWindowOpacity();
  v9 = MACaptionAppearancePrefCopyVideoOverrideRelativeCharSize();
  v10 = MACaptionAppearancePrefCopyVideoOverrideTextEdgeStyle();
  v11 = MACaptionAppearancePrefCopyVideoOverrideFontForStyle();
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v3 == kCFBooleanTrue && v4 == kCFBooleanTrue && v5 == kCFBooleanTrue && v6 == kCFBooleanTrue && v7 == kCFBooleanTrue && v8 == kCFBooleanTrue && v9 == kCFBooleanTrue && v10 == kCFBooleanTrue && v11 == kCFBooleanTrue;
}

- (id)_videoOverridesStyle:(id)style
{
  active = MACaptionAppearancePrefCopyActiveProfileID();
  if ([(AXCaptioningThemeController *)self _profileOverridesStyle:active])
  {
    v5 = &__kCFBooleanTrue;
  }

  else
  {
    v5 = &__kCFBooleanFalse;
  }

  return v5;
}

- (void)_setVideoOverridesStyle:(id)style specifier:(id)specifier
{
  styleCopy = style;
  active = MACaptionAppearancePrefCopyActiveProfileID();
  [styleCopy BOOLValue];
  MACaptionAppearancePrefSetVideoOverrideForegroundColor();
  [styleCopy BOOLValue];
  MACaptionAppearancePrefSetVideoOverrideBackgroundColor();
  [styleCopy BOOLValue];
  MACaptionAppearancePrefSetVideoOverrideWindowColor();
  [styleCopy BOOLValue];
  MACaptionAppearancePrefSetVideoOverrideForegroundOpacity();
  [styleCopy BOOLValue];
  MACaptionAppearancePrefSetVideoOverrideBackgroundOpacity();
  [styleCopy BOOLValue];
  MACaptionAppearancePrefSetVideoOverrideWindowOpacity();
  [styleCopy BOOLValue];
  MACaptionAppearancePrefSetVideoOverrideRelativeCharSize();
  [styleCopy BOOLValue];
  MACaptionAppearancePrefSetVideoOverrideTextEdgeStyle();
  for (i = 0; i != 8; ++i)
  {
    [styleCopy BOOLValue];
    MACaptionAppearancePrefSetVideoOverrideFontForStyle();
  }

  if (active)
  {
    CFRelease(active);
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = AXCaptioningThemeController;
  pathCopy = path;
  viewCopy = view;
  [(AXCaptioningThemeController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [viewCopy cellForRowAtIndexPath:{pathCopy, v11.receiver, v11.super_class}];

  if ([v8 isCaptionProfile])
  {
    specifier = [v8 specifier];
    v10 = [specifier propertyForKey:@"CaptionProfileID"];
    [(AXCaptioningThemeController *)self _selectProfile:v10];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = AXCaptioningThemeController;
  [(AXCaptioningThemeController *)&v14 viewWillAppear:appear];
  [(AXCaptioningThemeController *)self _addEditButton];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  table = [(AXCaptioningThemeController *)self table];
  visibleCells = [table visibleCells];

  v6 = [visibleCells countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(visibleCells);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          AXPerformBlockOnMainThreadAfterDelay();
        }
      }

      v7 = [visibleCells countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

void __46__AXCaptioningThemeController_viewWillAppear___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) captionPreviewView];
  [v1 updateSubtitle];
}

- (void)_addEditButton
{
  customProfiles = [(AXCaptioningThemeController *)self customProfiles];
  v4 = [customProfiles count];

  if (v4)
  {
    if (([*&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] isEditing] & 1) == 0)
    {
      v7 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:2 target:self action:"_editPressed"];
      navigationItem = [(AXCaptioningThemeController *)self navigationItem];
      [navigationItem setRightBarButtonItem:v7];
    }
  }

  else
  {
    navigationItem2 = [(AXCaptioningThemeController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:0];

    [(AXCaptioningThemeController *)self setEditing:0 animated:1];
  }
}

- (void)_editPressed
{
  [(AXCaptioningThemeController *)self setEditing:1 animated:1];
  v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:self action:"_donePressed"];
  navigationItem = [(AXCaptioningThemeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v4];
}

- (void)_donePressed
{
  [(AXCaptioningThemeController *)self setEditing:0 animated:1];

  [(AXCaptioningThemeController *)self _addEditButton];
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  self->_isEditingTable = editing;
  [(AXCaptioningThemeController *)self _manageHiddenSpecifiers:animated editing:editing];
  v7 = OBJC_IVAR___PSListController__table;
  [*&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] beginUpdates];
  v8.receiver = self;
  v8.super_class = AXCaptioningThemeController;
  [(AXCaptioningThemeController *)&v8 setEditing:editingCopy animated:animatedCopy];
  [*&self->super.AXUISettingsBaseListController_opaque[v7] endUpdates];
  [*&self->super.AXUISettingsBaseListController_opaque[v7] setEditing:editingCopy animated:animatedCopy];
  [*&self->super.AXUISettingsBaseListController_opaque[v7] reloadData];
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(AXCaptioningThemeController *)self specifierAtIndexPath:path];
  v5 = [v4 propertyForKey:PSIDKey];
  v6 = [v4 propertyForKey:PSCellClassKey];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    LOBYTE(v8) = 1;
  }

  else if ([v5 isEqualToString:@"VideoOverridesStyleSwitch"])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    v8 = [v5 isEqualToString:@"VideoOverridesStyleGroup"] ^ 1;
  }

  return v8;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  section = [pathCopy section];
  if (section < [viewCopy numberOfSections])
  {
    v11 = [pathCopy row];
    if (v11 < [viewCopy numberOfRowsInSection:{objc_msgSend(pathCopy, "section")}])
    {
      if (style == 1)
      {
        v26 = [(AXCaptioningThemeController *)self specifierAtIndexPath:pathCopy];
        v12 = [v26 propertyForKey:@"CaptionProfileID"];
        active = MACaptionAppearancePrefCopyActiveProfileID();
        v25 = v12;
        MACaptionAppearancePrefRemoveProfile();
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v13 = MACaptionAppearancePrefCopyProfileIDs();
        v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v28;
          v17 = 1;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v28 != v16)
              {
                objc_enumerationMutation(v13);
              }

              if (MACaptionAppearancePrefIsProfileEditable())
              {
                [NSNumber numberWithInteger:v17];
                MACaptionAppearancePrefSetProfileOrder();
                ++v17;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v15);
        }

        v20 = active;
        v19 = v25;
        if ([v25 isEqualToString:active])
        {
          [(AXCaptioningThemeController *)self _resetActiveProfileToDefault];
        }

        [(AXCaptioningThemeController *)self removeSpecifier:v26 animated:1, active, v25];
        customProfiles = [(AXCaptioningThemeController *)self customProfiles];
        [customProfiles removeObject:v26];

        [(AXCaptionStyleChooserController *)self scrollViewDidScroll:viewCopy];
      }

      customProfiles2 = [(AXCaptioningThemeController *)self customProfiles];
      v23 = [customProfiles2 count];

      if (!v23)
      {
        AXPerformBlockOnMainThreadAfterDelay();
      }
    }
  }
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(AXCaptioningThemeController *)self specifierAtIndexPath:path];
  isEditableCaptionProfile = [v4 isEditableCaptionProfile];

  return isEditableCaptionProfile;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  v4 = [(AXCaptioningThemeController *)self specifierAtIndexPath:path];
  v5 = [v4 propertyForKey:PSIDKey];
  if ([v4 isCaptionProfile] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"CreateNewStyle"))
  {
    isKindOfClass = 1;
  }

  else
  {
    v7 = [v4 propertyForKey:PSCellClassKey];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)tableView:(id)view accessoryButtonTappedForRowWithIndexPath:(id)path
{
  v7 = [(AXCaptioningThemeController *)self specifierAtIndexPath:path];
  v5 = objc_alloc_init(AXCaptioningThemeStyleController);
  rootController = [(AXCaptioningThemeController *)self rootController];
  [(AXCaptioningThemeStyleController *)v5 setRootController:rootController];

  [(AXCaptioningThemeStyleController *)v5 setSpecifier:0];
  [(AXCaptioningThemeStyleController *)v5 setParentController:self];
  [(AXCaptioningThemeStyleController *)v5 setShouldSaveProfile:1];
  -[AXCaptioningThemeStyleController setProfileId:](v5, "setProfileId:", [v7 propertyForKey:@"CaptionProfileID"]);
  [(AXCaptioningThemeController *)self showController:v5 animate:1];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v14.receiver = self;
  v14.super_class = AXCaptioningThemeController;
  [(AXCaptionStyleChooserController *)&v14 tableView:view willDisplayCell:cellCopy forRowAtIndexPath:path];
  v9 = cellCopy;
  v10 = v9;
  if (self->_isEditingTable && ([v9 isEditableCaptionProfile] & 1) != 0)
  {
    v11 = 4;
  }

  else
  {
    v11 = 0;
  }

  [v10 setEditingAccessoryType:v11];
  specifier = [v10 specifier];
  v13 = [specifier propertyForKey:PSIDKey];

  if (([v13 isEqualToString:@"CreateNewStyle"] & 1) != 0 || objc_msgSend(v10, "isCaptionProfile") && !objc_msgSend(v10, "isEditableCaptionProfile") || objc_msgSend(v13, "isEqualToString:", @"VideoOverridesStyleSwitch"))
  {
    [v10 setCellEnabled:!self->_isEditingTable];
  }
}

@end