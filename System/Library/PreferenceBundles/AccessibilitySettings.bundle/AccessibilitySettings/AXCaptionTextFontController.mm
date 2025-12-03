@interface AXCaptionTextFontController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path;
- (id)_videoOverridesStyle:(id)style;
- (id)specifiers;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (int64_t)textCategory;
- (void)_donePressed;
- (void)_editPressed:(id)pressed;
- (void)_manageEditButton;
- (void)_setVideoOverridesStyle:(id)style specifier:(id)specifier;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AXCaptionTextFontController

- (int64_t)textCategory
{
  specifier = [(AXCaptionTextFontController *)self specifier];
  v3 = [specifier propertyForKey:@"category"];

  intValue = [v3 intValue];
  return intValue;
}

- (void)_editPressed:(id)pressed
{
  [(AXCaptionTextFontController *)self setEditing:1 animated:1];
  v5 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:0 target:self action:"_donePressed"];
  navigationItem = [(AXCaptionTextFontController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];
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
    navigationItem2 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:2 target:self action:"_editPressed:"];
    navigationItem = [(AXCaptionTextFontController *)self navigationItem];
    [navigationItem setRightBarButtonItem:navigationItem2];
  }

  else
  {
    navigationItem2 = [(AXCaptionTextFontController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:0];
  }
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  table = [(AXCaptionTextFontController *)self table];
  [table beginUpdates];

  v11.receiver = self;
  v11.super_class = AXCaptionTextFontController;
  [(AXCaptionTextFontController *)&v11 setEditing:editingCopy animated:animatedCopy];
  table2 = [(AXCaptionTextFontController *)self table];
  [table2 endUpdates];

  table3 = [(AXCaptionTextFontController *)self table];
  [table3 setEditing:editingCopy animated:animatedCopy];

  table4 = [(AXCaptionTextFontController *)self table];
  [table4 reloadData];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXCaptionTextFontController;
  [(AXCaptionStyleChooserController *)&v6 viewDidLoad];
  table = [(AXCaptionTextFontController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXCaptionFontCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = AXCaptionTextFontController;
  [(AXCaptionTextFontController *)&v5 viewWillAppear:appear];
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
  selfCopy = self;
  v3 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v25 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    captionPreviewSpecifiers = [(AXCaptionStyleChooserController *)selfCopy captionPreviewSpecifiers];
    [v4 addObjectsFromArray:captionPreviewSpecifiers];

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
            [PSSpecifier preferenceSpecifierNamed:v8 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];
            v11 = v10 = selfCopy;
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

            selfCopy = v10;
          }
        }

        v31 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v31);
    }

    videoOverrideSpecifiers = [(AXCaptionStyleChooserController *)selfCopy videoOverrideSpecifiers];
    [v4 addObjectsFromArray:videoOverrideSpecifiers];

    v16 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];
    [v4 addObject:v16];
    v17 = settingsLocString(@"ADD_FONT", @"CaptioningStyle");
    v18 = [PSSpecifier preferenceSpecifierNamed:v17 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    v19 = [NSNumber numberWithLong:[(AXCaptionTextFontController *)selfCopy textCategory]];
    [v18 setProperty:v19 forKey:@"TextCategory"];

    [v18 setProperty:-[AXCaptionStyleChooserController profileId](selfCopy forKey:{"profileId"), @"ProfileId"}];
    [v4 addObject:v18];
    if (![(AXCaptionTextFontController *)selfCopy textCategory])
    {
      v20 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:0 edit:0];

      [v4 addObject:v20];
      v21 = settingsLocString(@"advanced", @"CaptioningStyle");
      v22 = [PSSpecifier preferenceSpecifierNamed:v21 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

      [v4 addObject:v22];
      v16 = v20;
    }

    v23 = *&selfCopy->super.AXUISettingsBaseListController_opaque[v25];
    *&selfCopy->super.AXUISettingsBaseListController_opaque[v25] = v4;

    v3 = *&selfCopy->super.AXUISettingsBaseListController_opaque[v25];
  }

  return v3;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v4 = [(AXCaptionTextFontController *)self specifierAtIndex:[(AXCaptionTextFontController *)self indexForIndexPath:path]];
  v5 = [v4 propertyForKey:@"isFont"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  v4 = [(AXCaptionTextFontController *)self specifierAtIndex:[(AXCaptionTextFontController *)self indexForIndexPath:path]];
  v5 = [v4 propertyForKey:@"isUserAddedFont"];
  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (BOOL)tableView:(id)view shouldIndentWhileEditingRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(AXCaptionTextFontController *)self specifierAtIndex:[(AXCaptionTextFontController *)self indexForIndexPath:pathCopy]];
  v9 = [v8 propertyForKey:@"isFont"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = AXCaptionTextFontController;
    v11 = [(AXCaptionTextFontController *)&v13 tableView:viewCopy shouldIndentWhileEditingRowAtIndexPath:pathCopy];
  }

  return v11;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  pathCopy = path;
  [(AXCaptionTextFontController *)self beginUpdates];
  v7 = [(AXCaptionTextFontController *)self indexForIndexPath:pathCopy];

  v8 = [(AXCaptionTextFontController *)self specifierAtIndex:v7];
  v9 = [v8 propertyForKey:@"isUserAddedFont"];
  bOOLValue = [v9 BOOLValue];

  if (bOOLValue)
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

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v19.receiver = self;
  v19.super_class = AXCaptionTextFontController;
  [(AXCaptionStyleChooserController *)&v19 tableView:view willDisplayCell:cellCopy forRowAtIndexPath:path];
  systemFontType = [(AXCaptionTextFontController *)self systemFontType];
  switch(systemFontType)
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

  selectedFont = [(AXCaptionTextFontController *)self selectedFont];
  if (selectedFont)
  {
    v11 = CGFontCopyPostScriptName(selectedFont);
    goto LABEL_8;
  }

  v18 = AXCaptionDefaultFontForCategory([(AXCaptionTextFontController *)self textCategory]);
  v12 = [v18 objectForKeyedSubscript:@"name"];

LABEL_9:
  v13 = cellCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    specifier = [v13 specifier];
    v15 = [specifier propertyForKey:PSIDKey];
    v16 = [v15 isEqualToString:v12];

    [v13 setChecked:v16];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = AXCaptionTextFontController;
  [(AXCaptionTextFontController *)&v15 tableView:view didSelectRowAtIndexPath:pathCopy];
  v7 = [(AXCaptionTextFontController *)self specifierAtIndex:[(AXCaptionTextFontController *)self indexForIndexPath:pathCopy]];
  v8 = [v7 propertyForKey:@"isFont"];
  bOOLValue = [v8 BOOLValue];

  if (bOOLValue)
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

    [(AXCaptionStyleChooserController *)self updateTableCheckedSelection:pathCopy];
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

- (id)_videoOverridesStyle:(id)style
{
  [(AXCaptionStyleChooserController *)self profileId];
  [(AXCaptionTextFontController *)self textCategory];
  v4 = MACaptionAppearancePrefCopyVideoOverrideFontForStyle();

  return v4;
}

- (void)_setVideoOverridesStyle:(id)style specifier:(id)specifier
{
  styleCopy = style;
  [(AXCaptionStyleChooserController *)self profileId];
  [(AXCaptionTextFontController *)self textCategory];
  [styleCopy BOOLValue];

  MACaptionAppearancePrefSetVideoOverrideFontForStyle();
}

@end