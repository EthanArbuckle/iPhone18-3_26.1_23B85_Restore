@interface AXCaptioningThemeController
- (AXCaptioningThemeController)initWithNibName:(id)a3 bundle:(id)a4;
- (BOOL)_profileOverridesStyle:(__CFString *)a3;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4;
- (id)_videoOverridesStyle:(id)a3;
- (id)specifiers;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (void)_addEditButton;
- (void)_donePressed;
- (void)_editPressed;
- (void)_resetActiveProfileToDefault;
- (void)_setVideoOverridesStyle:(id)a3 specifier:(id)a4;
- (void)_themeCountChanged:(id)a3;
- (void)dealloc;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
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

- (AXCaptioningThemeController)initWithNibName:(id)a3 bundle:(id)a4
{
  v8.receiver = self;
  v8.super_class = AXCaptioningThemeController;
  v4 = [(AXCaptionStyleChooserController *)&v8 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_themeCountChanged:" name:@"AXThemeCountChangedNotification" object:0];

    v6 = v4;
  }

  return v4;
}

- (void)_themeCountChanged:(id)a3
{
  v4 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers] = 0;

  [(AXCaptioningThemeController *)self setCustomProfiles:0];
  [(AXCaptioningThemeController *)self setDefaultProfiles:0];

  [(AXCaptioningThemeController *)self reloadSpecifiers];
}

- (id)specifiers
{
  v2 = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    editableVisibleSpecifiers = self->_editableVisibleSpecifiers;
    if (editableVisibleSpecifiers)
    {
      v5 = [(NSMutableArray *)editableVisibleSpecifiers mutableCopy];
      v6 = *&v2->super.AXUISettingsBaseListController_opaque[v3];
      *&v2->super.AXUISettingsBaseListController_opaque[v3] = v5;
    }

    else
    {
      v32 = OBJC_IVAR___PSListController__specifiers;
      v34 = v2;
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
      v45[4] = v2;
      v45[5] = &v46;
      v45[6] = &v52;
      [v33 enumerateObjectsUsingBlock:v45];
      v8 = [PSSpecifier preferenceSpecifierNamed:0 target:v2 set:0 get:0 detail:0 cell:11 edit:0];
      [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
      [v8 setProperty:@"PreviewCell" forKey:PSKeyNameKey];
      [v36 addObject:v8];
      v35 = [PSSpecifier preferenceSpecifierNamed:&stru_25D420 target:v2 set:0 get:0 detail:0 cell:0 edit:0];

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

      v2 = v34;
      v3 = v32;
    }
  }

  v30 = *&v2->super.AXUISettingsBaseListController_opaque[v3];

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

  v6 = [(AXCaptioningThemeController *)self table];
  v7 = objc_opt_class();
  v8 = +[AXCaptionPreviewCell cellReuseIdentifier];
  [v6 registerClass:v7 forCellReuseIdentifier:v8];
}

- (BOOL)_profileOverridesStyle:(__CFString *)a3
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

- (id)_videoOverridesStyle:(id)a3
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

- (void)_setVideoOverridesStyle:(id)a3 specifier:(id)a4
{
  v6 = a3;
  active = MACaptionAppearancePrefCopyActiveProfileID();
  [v6 BOOLValue];
  MACaptionAppearancePrefSetVideoOverrideForegroundColor();
  [v6 BOOLValue];
  MACaptionAppearancePrefSetVideoOverrideBackgroundColor();
  [v6 BOOLValue];
  MACaptionAppearancePrefSetVideoOverrideWindowColor();
  [v6 BOOLValue];
  MACaptionAppearancePrefSetVideoOverrideForegroundOpacity();
  [v6 BOOLValue];
  MACaptionAppearancePrefSetVideoOverrideBackgroundOpacity();
  [v6 BOOLValue];
  MACaptionAppearancePrefSetVideoOverrideWindowOpacity();
  [v6 BOOLValue];
  MACaptionAppearancePrefSetVideoOverrideRelativeCharSize();
  [v6 BOOLValue];
  MACaptionAppearancePrefSetVideoOverrideTextEdgeStyle();
  for (i = 0; i != 8; ++i)
  {
    [v6 BOOLValue];
    MACaptionAppearancePrefSetVideoOverrideFontForStyle();
  }

  if (active)
  {
    CFRelease(active);
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v11.receiver = self;
  v11.super_class = AXCaptioningThemeController;
  v6 = a4;
  v7 = a3;
  [(AXCaptioningThemeController *)&v11 tableView:v7 didSelectRowAtIndexPath:v6];
  v8 = [v7 cellForRowAtIndexPath:{v6, v11.receiver, v11.super_class}];

  if ([v8 isCaptionProfile])
  {
    v9 = [v8 specifier];
    v10 = [v9 propertyForKey:@"CaptionProfileID"];
    [(AXCaptioningThemeController *)self _selectProfile:v10];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = AXCaptioningThemeController;
  [(AXCaptioningThemeController *)&v14 viewWillAppear:a3];
  [(AXCaptioningThemeController *)self _addEditButton];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(AXCaptioningThemeController *)self table];
  v5 = [v4 visibleCells];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          AXPerformBlockOnMainThreadAfterDelay();
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
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
  v3 = [(AXCaptioningThemeController *)self customProfiles];
  v4 = [v3 count];

  if (v4)
  {
    if (([*&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] isEditing] & 1) == 0)
    {
      v7 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:2 target:self action:"_editPressed"];
      v6 = [(AXCaptioningThemeController *)self navigationItem];
      [v6 setRightBarButtonItem:v7];
    }
  }

  else
  {
    v5 = [(AXCaptioningThemeController *)self navigationItem];
    [v5 setRightBarButtonItem:0];

    [(AXCaptioningThemeController *)self setEditing:0 animated:1];
  }
}

- (void)_editPressed
{
  [(AXCaptioningThemeController *)self setEditing:1 animated:1];
  v4 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:self action:"_donePressed"];
  v3 = [(AXCaptioningThemeController *)self navigationItem];
  [v3 setRightBarButtonItem:v4];
}

- (void)_donePressed
{
  [(AXCaptioningThemeController *)self setEditing:0 animated:1];

  [(AXCaptioningThemeController *)self _addEditButton];
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  self->_isEditingTable = a3;
  [(AXCaptioningThemeController *)self _manageHiddenSpecifiers:a4 editing:a3];
  v7 = OBJC_IVAR___PSListController__table;
  [*&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] beginUpdates];
  v8.receiver = self;
  v8.super_class = AXCaptioningThemeController;
  [(AXCaptioningThemeController *)&v8 setEditing:v5 animated:v4];
  [*&self->super.AXUISettingsBaseListController_opaque[v7] endUpdates];
  [*&self->super.AXUISettingsBaseListController_opaque[v7] setEditing:v5 animated:v4];
  [*&self->super.AXUISettingsBaseListController_opaque[v7] reloadData];
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(AXCaptioningThemeController *)self specifierAtIndexPath:a4];
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

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v9 section];
  if (v10 < [v8 numberOfSections])
  {
    v11 = [v9 row];
    if (v11 < [v8 numberOfRowsInSection:{objc_msgSend(v9, "section")}])
    {
      if (a4 == 1)
      {
        v26 = [(AXCaptioningThemeController *)self specifierAtIndexPath:v9];
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
        v21 = [(AXCaptioningThemeController *)self customProfiles];
        [v21 removeObject:v26];

        [(AXCaptionStyleChooserController *)self scrollViewDidScroll:v8];
      }

      v22 = [(AXCaptioningThemeController *)self customProfiles];
      v23 = [v22 count];

      if (!v23)
      {
        AXPerformBlockOnMainThreadAfterDelay();
      }
    }
  }
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(AXCaptioningThemeController *)self specifierAtIndexPath:a4];
  v5 = [v4 isEditableCaptionProfile];

  return v5;
}

- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4
{
  v4 = [(AXCaptioningThemeController *)self specifierAtIndexPath:a4];
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

- (void)tableView:(id)a3 accessoryButtonTappedForRowWithIndexPath:(id)a4
{
  v7 = [(AXCaptioningThemeController *)self specifierAtIndexPath:a4];
  v5 = objc_alloc_init(AXCaptioningThemeStyleController);
  v6 = [(AXCaptioningThemeController *)self rootController];
  [(AXCaptioningThemeStyleController *)v5 setRootController:v6];

  [(AXCaptioningThemeStyleController *)v5 setSpecifier:0];
  [(AXCaptioningThemeStyleController *)v5 setParentController:self];
  [(AXCaptioningThemeStyleController *)v5 setShouldSaveProfile:1];
  -[AXCaptioningThemeStyleController setProfileId:](v5, "setProfileId:", [v7 propertyForKey:@"CaptionProfileID"]);
  [(AXCaptioningThemeController *)self showController:v5 animate:1];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AXCaptioningThemeController;
  [(AXCaptionStyleChooserController *)&v14 tableView:a3 willDisplayCell:v8 forRowAtIndexPath:a5];
  v9 = v8;
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
  v12 = [v10 specifier];
  v13 = [v12 propertyForKey:PSIDKey];

  if (([v13 isEqualToString:@"CreateNewStyle"] & 1) != 0 || objc_msgSend(v10, "isCaptionProfile") && !objc_msgSend(v10, "isEditableCaptionProfile") || objc_msgSend(v13, "isEqualToString:", @"VideoOverridesStyleSwitch"))
  {
    [v10 setCellEnabled:!self->_isEditingTable];
  }
}

@end