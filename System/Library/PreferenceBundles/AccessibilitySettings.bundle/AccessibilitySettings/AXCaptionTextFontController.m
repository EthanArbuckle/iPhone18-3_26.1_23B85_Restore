@interface AXCaptionTextFontController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4;
- (id)_videoOverridesStyle:(id)a3;
- (id)specifiers;
- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4;
- (int64_t)textCategory;
- (void)_donePressed;
- (void)_editPressed:(id)a3;
- (void)_manageEditButton;
- (void)_setVideoOverridesStyle:(id)a3 specifier:(id)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AXCaptionTextFontController

- (int64_t)textCategory
{
  v2 = [(AXCaptionTextFontController *)self specifier];
  v3 = [v2 propertyForKey:@"category"];

  v4 = [v3 intValue];
  return v4;
}

- (void)_editPressed:(id)a3
{
  [(AXCaptionTextFontController *)self setEditing:1 animated:1];
  v5 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:self action:"_donePressed"];
  v4 = [(AXCaptionTextFontController *)self navigationItem];
  [v4 setRightBarButtonItem:v5];
}

- (void)_donePressed
{
  [(AXCaptionTextFontController *)self setEditing:0 animated:1];

  [(AXCaptionTextFontController *)self _manageEditButton];
}

- (void)_manageEditButton
{
  v3 = AXCaptionExtraUserFonts();
  v4 = [v3 count];

  if (v4)
  {
    v6 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:2 target:self action:"_editPressed:"];
    v5 = [(AXCaptionTextFontController *)self navigationItem];
    [v5 setRightBarButtonItem:v6];
  }

  else
  {
    v6 = [(AXCaptionTextFontController *)self navigationItem];
    [v6 setRightBarButtonItem:0];
  }
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(AXCaptionTextFontController *)self table];
  [v7 beginUpdates];

  v11.receiver = self;
  v11.super_class = AXCaptionTextFontController;
  [(AXCaptionTextFontController *)&v11 setEditing:v5 animated:v4];
  v8 = [(AXCaptionTextFontController *)self table];
  [v8 endUpdates];

  v9 = [(AXCaptionTextFontController *)self table];
  [v9 setEditing:v5 animated:v4];

  v10 = [(AXCaptionTextFontController *)self table];
  [v10 reloadData];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXCaptionTextFontController;
  [(AXCaptionStyleChooserController *)&v6 viewDidLoad];
  v3 = [(AXCaptionTextFontController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXCaptionFontCell cellReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = AXCaptionTextFontController;
  [(AXCaptionTextFontController *)&v5 viewWillAppear:a3];
  [(AXCaptionStyleChooserController *)self profileId];
  [(AXCaptionTextFontController *)self textCategory];
  v4 = MACaptionAppearancePrefCopyFontForStyle();
  [(AXCaptionTextFontController *)self setSystemFontType:-1];
  [(AXCaptionStyleChooserController *)self profileId];
  [(AXCaptionTextFontController *)self textCategory];
  if (MACaptionAppearancePrefIsSystemFont())
  {
    [(AXCaptionTextFontController *)self setSystemFontType:-1];
  }

  [(AXCaptionTextFontController *)self setSelectedFont:v4];
  if (v4)
  {
    CFRelease(v4);
  }

  [(AXCaptionTextFontController *)self _manageEditButton];
  [(AXCaptionTextFontController *)self reloadSpecifiers];
}

- (id)specifiers
{
  v2 = self;
  v3 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v25 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [(AXCaptionStyleChooserController *)v2 captionPreviewSpecifiers];
    [v4 addObjectsFromArray:v5];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = AXCaptionFonts();
    v31 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v31)
    {
      v30 = *v33;
      v28 = PSIDKey;
      v29 = PSCellClassKey;
      v27 = PSTitleKey;
      do
      {
        for (i = 0; i != v31; i = i + 1)
        {
          if (*v33 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v32 + 1) + 8 * i);
          v8 = [v7 objectForKeyedSubscript:@"displayName"];
          if (!v8)
          {
            v8 = [v7 objectForKeyedSubscript:@"name"];
          }

          v9 = [v7 objectForKeyedSubscript:@"name"];
          if (v9)
          {
            [PSSpecifier preferenceSpecifierNamed:v8 target:v2 set:0 get:0 detail:0 cell:3 edit:0];
            v11 = v10 = v2;
            [v11 setProperty:objc_opt_class() forKey:v29];
            [v11 setProperty:v9 forKey:v28];
            [v7 objectForKeyedSubscript:@"isBold"];
            v13 = v12 = v4;
            [v11 setProperty:v13 forKey:@"isBold"];

            [v11 setProperty:v8 forKey:v27];
            v14 = [v7 objectForKeyedSubscript:@"isUserAddedFont"];
            [v11 setProperty:v14 forKey:@"isUserAddedFont"];

            v4 = v12;
            [v11 setProperty:&__kCFBooleanTrue forKey:@"isFont"];
            [v11 setCellType:3];
            [v12 addObject:v11];

            v2 = v10;
          }
        }

        v31 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v31);
    }

    v15 = [(AXCaptionStyleChooserController *)v2 videoOverrideSpecifiers];
    [v4 addObjectsFromArray:v15];

    v16 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    [v4 addObject:v16];
    v17 = settingsLocString(@"ADD_FONT", @"CaptioningStyle");
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    v19 = [NSNumber numberWithLong:[(AXCaptionTextFontController *)v2 textCategory]];
    [v18 setProperty:v19 forKey:@"TextCategory"];

    [v18 setProperty:-[AXCaptionStyleChooserController profileId](v2 forKey:{"profileId"), @"ProfileId"}];
    [v4 addObject:v18];
    if (![(AXCaptionTextFontController *)v2 textCategory])
    {
      v20 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];

      [v4 addObject:v20];
      v21 = settingsLocString(@"advanced", @"CaptioningStyle");
      v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

      [v4 addObject:v22];
      v16 = v20;
    }

    v23 = *&v2->super.AXUISettingsBaseListController_opaque[v25];
    *&v2->super.AXUISettingsBaseListController_opaque[v25] = v4;

    v3 = *&v2->super.AXUISettingsBaseListController_opaque[v25];
  }

  return v3;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v4 = [(AXCaptionTextFontController *)self specifierAtIndex:[(AXCaptionTextFontController *)self indexForIndexPath:a4]];
  v5 = [v4 propertyForKey:@"isFont"];
  v6 = [v5 BOOLValue];

  return v6;
}

- (int64_t)tableView:(id)a3 editingStyleForRowAtIndexPath:(id)a4
{
  v4 = [(AXCaptionTextFontController *)self specifierAtIndex:[(AXCaptionTextFontController *)self indexForIndexPath:a4]];
  v5 = [v4 propertyForKey:@"isUserAddedFont"];
  v6 = [v5 BOOLValue];

  return v6;
}

- (BOOL)tableView:(id)a3 shouldIndentWhileEditingRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AXCaptionTextFontController *)self specifierAtIndex:[(AXCaptionTextFontController *)self indexForIndexPath:v7]];
  v9 = [v8 propertyForKey:@"isFont"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = AXCaptionTextFontController;
    v11 = [(AXCaptionTextFontController *)&v13 tableView:v6 shouldIndentWhileEditingRowAtIndexPath:v7];
  }

  return v11;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v6 = a5;
  [(AXCaptionTextFontController *)self beginUpdates];
  v7 = [(AXCaptionTextFontController *)self indexForIndexPath:v6];

  v8 = [(AXCaptionTextFontController *)self specifierAtIndex:v7];
  v9 = [v8 propertyForKey:@"isUserAddedFont"];
  v10 = [v9 BOOLValue];

  if (v10)
  {
    v11 = [v8 propertyForKey:PSIDKey];
    AXCaptionRemoveUserAddedFont(v11);

    [(AXCaptionTextFontController *)self removeSpecifier:v8 animated:1];
  }

  [(AXCaptionTextFontController *)self endUpdates];
  v12 = AXCaptionExtraUserFonts();
  v13 = [v12 count];

  if (!v13)
  {
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = a4;
  v19.receiver = self;
  v19.super_class = AXCaptionTextFontController;
  [(AXCaptionStyleChooserController *)&v19 tableView:a3 willDisplayCell:v8 forRowAtIndexPath:a5];
  v9 = [(AXCaptionTextFontController *)self systemFontType];
  switch(v9)
  {
    case 2:
      v10 = &MACaptionAppearanceMonoSystemFontIdentifier;
      goto LABEL_7;
    case 1:
      v10 = &MACaptionAppearanceMediumSystemFontIdentifier;
      goto LABEL_7;
    case 0:
      v10 = &MACaptionAppearanceSystemFontIdentifier;
LABEL_7:
      v11 = *v10;
LABEL_8:
      v12 = v11;
      goto LABEL_9;
  }

  v17 = [(AXCaptionTextFontController *)self selectedFont];
  if (v17)
  {
    v11 = CGFontCopyPostScriptName(v17);
    goto LABEL_8;
  }

  v18 = AXCaptionDefaultFontForCategory([(AXCaptionTextFontController *)self textCategory]);
  v12 = [v18 objectForKeyedSubscript:@"name"];

LABEL_9:
  v13 = v8;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 specifier];
    v15 = [v14 propertyForKey:PSIDKey];
    v16 = [v15 isEqualToString:v12];

    [v13 setChecked:v16];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = AXCaptionTextFontController;
  [(AXCaptionTextFontController *)&v15 tableView:a3 didSelectRowAtIndexPath:v6];
  v7 = [(AXCaptionTextFontController *)self specifierAtIndex:[(AXCaptionTextFontController *)self indexForIndexPath:v6]];
  v8 = [v7 propertyForKey:@"isFont"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = [v7 propertyForKey:PSIDKey];
    v11 = [v7 propertyForKey:@"isBold"];
    [v11 BOOLValue];

    if ([v10 isEqual:MACaptionAppearanceSystemFontIdentifier])
    {
      v12 = 0;
    }

    else if ([v10 isEqual:MACaptionAppearanceMonoSystemFontIdentifier])
    {
      v12 = 2;
    }

    else if ([v10 isEqual:MACaptionAppearanceMediumSystemFontIdentifier])
    {
      v12 = 1;
    }

    else
    {
      v12 = -1;
    }

    [(AXCaptionTextFontController *)self setSystemFontType:v12];
    if ([(AXCaptionTextFontController *)self systemFontType]== -1)
    {
      v13 = _CTFontCreateWithNameAndSymbolicTraits();
      v14 = CTFontCopyGraphicsFont(v13, 0);
      if (v13)
      {
        CFRelease(v13);
      }

      if (v14)
      {
        CFRetain(v14);
        AXPerformBlockOnMainThreadAfterDelay();
        [(AXCaptionTextFontController *)self setSelectedFont:v14];
        CFRelease(v14);
      }
    }

    else
    {
      AXPerformBlockOnMainThreadAfterDelay();
    }

    [(AXCaptionStyleChooserController *)self updateTableCheckedSelection:v6];
  }
}

uint64_t __65__AXCaptionTextFontController_tableView_didSelectRowAtIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) profileId];
  v3 = [*(a1 + 32) textCategory];
  v4 = [*(a1 + 32) systemFontType];

  return _MACaptionAppearancePrefSetIsSystemFont(v2, 1, v3, v4);
}

void __65__AXCaptionTextFontController_tableView_didSelectRowAtIndexPath___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) profileId];
  [*(a1 + 32) textCategory];
  MACaptionAppearancePrefSetFontForStyle();
  v2 = *(a1 + 40);

  CFRelease(v2);
}

- (id)_videoOverridesStyle:(id)a3
{
  [(AXCaptionStyleChooserController *)self profileId];
  [(AXCaptionTextFontController *)self textCategory];
  v4 = MACaptionAppearancePrefCopyVideoOverrideFontForStyle();

  return v4;
}

- (void)_setVideoOverridesStyle:(id)a3 specifier:(id)a4
{
  v5 = a3;
  [(AXCaptionStyleChooserController *)self profileId];
  [(AXCaptionTextFontController *)self textCategory];
  [v5 BOOLValue];

  MACaptionAppearancePrefSetVideoOverrideFontForStyle();
}

@end