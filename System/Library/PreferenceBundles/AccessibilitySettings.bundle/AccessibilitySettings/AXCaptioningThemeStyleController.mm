@interface AXCaptioningThemeStyleController
- (id)_nameForColor:(CGColor *)color colorType:(int)type;
- (id)_nameForTransparency:(__CFNumber *)transparency transparencyType:(int)type;
- (id)backgroundColor:(id)color;
- (id)backgroundTransparency:(id)transparency;
- (id)captionSize:(id)size;
- (id)captioningEnabled:(id)enabled;
- (id)profileName:(id)name;
- (id)specifiers;
- (id)textColor:(id)color;
- (id)textEdgeStyle:(id)style;
- (id)textFont:(id)font;
- (id)textTransparency:(id)transparency;
- (id)windowColor:(id)color;
- (id)windowTransparency:(id)transparency;
- (void)_savePressed:(id)pressed;
- (void)_settingsChanged:(id)changed;
- (void)_updateTitle;
- (void)dealloc;
- (void)setCaptioningEnabled:(id)enabled specifier:(id)specifier;
- (void)setProfileName:(id)name specifier:(id)specifier;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)textFieldDidEndEditing:(id)editing;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willBecomeActive;
@end

@implementation AXCaptioningThemeStyleController

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:kMACaptionAppearanceSettingsChangedNotification object:0];

  v4.receiver = self;
  v4.super_class = AXCaptioningThemeStyleController;
  [(AXCaptioningThemeStyleController *)&v4 dealloc];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(AXCaptioningThemeStyleController *)self loadSpecifiersFromPlistName:@"CaptioningStyle" target:self];
    v6 = *&self->super.AXUISettingsBaseListController_opaque[v3];
    *&self->super.AXUISettingsBaseListController_opaque[v3] = v5;

    v4 = *&self->super.AXUISettingsBaseListController_opaque[v3];
  }

  return v4;
}

- (void)_savePressed:(id)pressed
{
  self->_shouldSaveProfile = 1;
  navigationController = [(AXCaptioningThemeStyleController *)self navigationController];
  v3 = [navigationController popViewControllerAnimated:1];
}

- (void)_settingsChanged:(id)changed
{
  self->_shouldSaveProfile = 1;
  navigationItem = [(AXCaptioningThemeStyleController *)self navigationItem];
  [navigationItem setRightBarButtonItem:0];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXCaptioningThemeStyleController;
  [(AXCaptionStyleChooserController *)&v6 viewDidLoad];
  table = [(AXCaptioningThemeStyleController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXCaptionPreviewCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v10.receiver = self;
  v10.super_class = AXCaptioningThemeStyleController;
  [(AXCaptioningThemeStyleController *)&v10 viewWillDisappear:disappear];
  if (([(AXCaptioningThemeStyleController *)self isBeingDismissed]& 1) != 0 || [(AXCaptioningThemeStyleController *)self isMovingFromParentViewController])
  {
    shouldSaveProfile = self->_shouldSaveProfile;
    [(AXCaptioningThemeStyleController *)self profileId];
    if (shouldSaveProfile)
    {
      MACaptionAppearancePrefSetActiveProfileID();
      [(AXCaptioningThemeStyleController *)self profileId];
      v5 = MACaptionAppearancePrefCopyProfileName();
      if (![v5 length])
      {
        [(AXCaptioningThemeStyleController *)self profileId];
        originalName = [(AXCaptioningThemeStyleController *)self originalName];
        MACaptionAppearancePrefSetProfileName();
      }

      v7 = +[NSNotificationCenter defaultCenter];
      [v7 postNotificationName:kMACaptionAppearanceSettingsChangedNotification object:0];
    }

    else
    {
      MACaptionAppearancePrefRemoveProfile();
      [(AXCaptioningThemeStyleController *)self setProfileId:0];
      if (self->_previousActiveProfile)
      {
        MACaptionAppearancePrefSetActiveProfileID();
      }

      else
      {
        AXCaptionResetDefaultActiveProfile();
      }
    }

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:@"AXThemeCountChangedNotification" object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 removeObserver:self name:kMACaptionAppearanceSettingsChangedNotification object:0];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v36.receiver = self;
  v36.super_class = AXCaptioningThemeStyleController;
  [(AXCaptioningThemeStyleController *)&v36 viewWillAppear:appear];
  if (![(AXCaptioningThemeStyleController *)self profileId])
  {
    previousActiveProfile = self->_previousActiveProfile;
    if (previousActiveProfile)
    {
      CFRelease(previousActiveProfile);
      self->_previousActiveProfile = 0;
    }

    self->_previousActiveProfile = MACaptionAppearancePrefCopyActiveProfileID();
    v5 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:3 target:self action:"_savePressed:"];
    navigationItem = [(AXCaptioningThemeStyleController *)self navigationItem];
    v29 = v5;
    [navigationItem setRightBarButtonItem:v5];

    NewProfileFromProfile = MACaptionAppearancePrefCreateNewProfileFromProfile();
    v8 = NewProfileFromProfile;
    [(AXCaptioningThemeStyleController *)self setProfileId:NewProfileFromProfile];
    v9 = MACaptionAppearancePrefCopyProfileIDs();
    v10 = settingsLocString(@"default.style.name", @"CaptioningStyle");
    v11 = [NSString stringWithFormat:v10, &stru_25D420];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = v9;
    v12 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v33;
      v16 = 1;
      v30 = *v33;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(obj);
          }

          if (MACaptionAppearancePrefIsProfileEditable())
          {
            v18 = MACaptionAppearancePrefCopyProfileName();
            if ([v18 hasPrefix:v11])
            {
              [v18 substringFromIndex:{objc_msgSend(v11, "length")}];
              v20 = v19 = v16;
              integerValue = [v20 integerValue];

              v16 = v19;
              v15 = v30;
              if (integerValue + 1 > v16)
              {
                v16 = integerValue + 1;
              }
            }

            v22 = MACaptionAppearancePrefCopyProfileOrder();
            integerValue2 = [v22 integerValue];
            if (v14 <= integerValue2)
            {
              v14 = integerValue2;
            }
          }
        }

        v13 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v13);
      v24 = v14 + 1;
    }

    else
    {
      v24 = 1;
    }

    v25 = settingsLocString(@"default.style.name", @"CaptioningStyle");
    v26 = AXFormatInteger();
    v27 = [NSString stringWithFormat:v25, v26];
    [(AXCaptioningThemeStyleController *)self setOriginalName:v27];

    [(AXCaptioningThemeStyleController *)self profileId];
    originalName = [(AXCaptioningThemeStyleController *)self originalName];
    MACaptionAppearancePrefSetProfileName();

    [(AXCaptioningThemeStyleController *)self profileId];
    [NSNumber numberWithInteger:v24];
    MACaptionAppearancePrefSetProfileOrder();
    AXPerformBlockOnMainThreadAfterDelay();
  }

  [(AXCaptioningThemeStyleController *)self profileId];
  MACaptionAppearancePrefSetActiveProfileID();
  [(AXCaptioningThemeStyleController *)self _updateTitle];
  [*&self->super.AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__table] reloadData];
}

void __51__AXCaptioningThemeStyleController_viewWillAppear___block_invoke(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"AXThemeCountChangedNotification" object:0];

  MACaptionAppearanceGetShowCaptions();
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:*(a1 + 32) selector:"_settingsChanged:" name:kMACaptionAppearanceSettingsChangedNotification object:0];
}

- (id)profileName:(id)name
{
  [(AXCaptioningThemeStyleController *)self profileId];
  v3 = MACaptionAppearancePrefCopyProfileName();

  return v3;
}

- (void)willBecomeActive
{
  v3.receiver = self;
  v3.super_class = AXCaptioningThemeStyleController;
  [(AXCaptioningThemeStyleController *)&v3 willBecomeActive];
  [(AXCaptioningThemeStyleController *)self _updateTitle];
}

- (void)_updateTitle
{
  [(AXCaptioningThemeStyleController *)self profileId];
  v3 = MACaptionAppearancePrefCopyProfileName();
  [(AXCaptioningThemeStyleController *)self setTitle:v3];
}

- (void)setProfileName:(id)name specifier:(id)specifier
{
  nameCopy = name;
  [(AXCaptioningThemeStyleController *)self profileId];
  MACaptionAppearancePrefSetProfileName();

  [(AXCaptioningThemeStyleController *)self _updateTitle];
  v6 = +[NSNotificationCenter defaultCenter];
  [v6 postNotificationName:@"AXThemeCountChangedNotification" object:0];
}

- (id)textFont:(id)font
{
  v21 = -1;
  [(AXCaptioningThemeStyleController *)self profileId];
  MACaptionAppearancePrefIsSystemFont();
  [(AXCaptioningThemeStyleController *)self profileId];
  v4 = MACaptionAppearancePrefCopyFontForStyle();
  if (v4)
  {
    v5 = v4;
    v6 = CGFontCopyPostScriptName(v4);
    CFRelease(v5);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = AXCaptionFonts();
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:{@"name", v17}];
          v14 = [v13 isEqualToString:v6];

          if (v14)
          {
            v15 = [v12 objectForKeyedSubscript:@"displayName"];
            goto LABEL_12;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_12:
  }

  else
  {
    v6 = AXCaptionDefaultFontForCategory(0);
    v15 = [v6 objectForKeyedSubscript:@"displayName"];
  }

  return v15;
}

- (id)captionSize:(id)size
{
  sizeCopy = size;
  [(AXCaptioningThemeStyleController *)self profileId];
  RelativeCharSize = MACaptionAppearancePrefGetRelativeCharSize();
  AXCaptionTextSizes();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v28 = 0u;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v6)
  {
LABEL_14:
    v6 = v6;
    v8 = v6;
    goto LABEL_15;
  }

  v7 = v6;
  v22 = sizeCopy;
  v23 = 0;
  v8 = 0;
  v9 = *v26;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v26 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v25 + 1) + 8 * i);
      v12 = [v11 objectForKeyedSubscript:@"relativeSize"];
      v13 = [NSNumber numberWithLong:RelativeCharSize];
      v14 = [v12 isEqual:v13];

      if (v14)
      {
        v15 = [v11 objectForKeyedSubscript:@"name"];
        v16 = settingsLocString(v15, @"CaptioningStyle");
        v17 = v8;
        v8 = v16;
      }

      else
      {
        v18 = [v11 objectForKeyedSubscript:@"default"];
        bOOLValue = [v18 BOOLValue];

        if (!bOOLValue)
        {
          continue;
        }

        v15 = [v11 objectForKeyedSubscript:@"name"];
        v20 = settingsLocString(v15, @"CaptioningStyle");
        v17 = v23;
        v23 = v20;
      }
    }

    v7 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v7);
  sizeCopy = v22;
  v6 = v23;
  if (!v8)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v8;
}

- (void)setCaptioningEnabled:(id)enabled specifier:(id)specifier
{
  [enabled BOOLValue];

  _AXSClosedCaptionsSetEnabled();
}

- (id)captioningEnabled:(id)enabled
{
  v3 = _AXSClosedCaptionsEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (id)_nameForTransparency:(__CFNumber *)transparency transparencyType:(int)type
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = AXCaptionTransparency(type);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"alpha", v19}];
        [v11 floatValue];
        v13 = v12;
        [(__CFNumber *)transparency floatValue];
        v15 = vabds_f32(v13, v14);

        if (v15 < 0.001)
        {
          v17 = [v10 objectForKeyedSubscript:@"name"];
          v16 = settingsLocString(v17, @"CaptioningStyle");

          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_11:

  return v16;
}

- (id)textTransparency:(id)transparency
{
  [(AXCaptioningThemeStyleController *)self profileId];
  v4 = MACaptionAppearancePrefCopyForegroundOpacity();
  v5 = [(AXCaptioningThemeStyleController *)self _nameForTransparency:v4 transparencyType:1];
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

- (id)textEdgeStyle:(id)style
{
  [(AXCaptioningThemeStyleController *)self profileId];
  v3 = MACaptionAppearancePrefCopyTextEdgeStyle();
  if (!v3)
  {
    v4 = AXCaptionTextEdgeStyleDefault();
    v3 = [v4 objectForKey:@"edgeKey"];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = AXCaptionTextEdgeStyles();
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:{@"edgeKey", v16}];
        v12 = [v11 isEqual:v3];

        if (v12)
        {
          v14 = [v10 objectForKeyedSubscript:@"name"];
          v13 = settingsLocString(v14, @"CaptioningStyle");

          goto LABEL_13;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

- (id)_nameForColor:(CGColor *)color colorType:(int)type
{
  if (color)
  {
    NumberOfComponents = CGColorGetNumberOfComponents(color);
    Components = CGColorGetComponents(color);
    for (i = +[NSMutableArray array];
    {
      v9 = *Components++;
      v10 = [NSNumber numberWithDouble:v9];
      [i addObject:v10];
    }
  }

  else
  {
    i = AXCaptionColorDefault(type);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = AXCaptionColors(type);
  v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * j);
        v17 = [v16 objectForKeyedSubscript:{@"rgb", v28}];
        v18 = 0;
        while (1)
        {
          v19 = [i objectAtIndexedSubscript:v18];
          [v19 floatValue];
          v21 = v20;

          v22 = [v17 objectAtIndexedSubscript:v18];
          [v22 floatValue];
          v24 = v23;

          if (vabds_f32(v21, v24) > 0.0001)
          {
            break;
          }

          if (++v18 == 3)
          {
            v25 = [v16 objectForKeyedSubscript:@"name"];
            v26 = settingsLocString(v25, @"CaptioningStyle");

            goto LABEL_19;
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
      v26 = 0;
    }

    while (v13);
  }

  else
  {
    v26 = 0;
  }

LABEL_19:

  return v26;
}

- (id)textColor:(id)color
{
  [(AXCaptioningThemeStyleController *)self profileId];
  v4 = MACaptionAppearancePrefCopyForegroundColor();
  v5 = [(AXCaptioningThemeStyleController *)self _nameForColor:v4 colorType:1];
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

- (id)backgroundColor:(id)color
{
  [(AXCaptioningThemeStyleController *)self profileId];
  v4 = MACaptionAppearancePrefCopyBackgroundColor();
  v5 = [(AXCaptioningThemeStyleController *)self _nameForColor:v4 colorType:2];
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

- (id)windowColor:(id)color
{
  [(AXCaptioningThemeStyleController *)self profileId];
  v4 = MACaptionAppearancePrefCopyWindowColor();
  v5 = [(AXCaptioningThemeStyleController *)self _nameForColor:v4 colorType:3];
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

- (id)backgroundTransparency:(id)transparency
{
  [(AXCaptioningThemeStyleController *)self profileId];
  v4 = MACaptionAppearancePrefCopyBackgroundOpacity();
  v5 = [(AXCaptioningThemeStyleController *)self _nameForTransparency:v4 transparencyType:2];
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

- (id)windowTransparency:(id)transparency
{
  [(AXCaptioningThemeStyleController *)self profileId];
  v4 = MACaptionAppearancePrefCopyWindowOpacity();
  v5 = [(AXCaptioningThemeStyleController *)self _nameForTransparency:v4 transparencyType:3];
  if (v4)
  {
    CFRelease(v4);
  }

  return v5;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  v12.receiver = self;
  v12.super_class = AXCaptioningThemeStyleController;
  [(AXCaptionStyleChooserController *)&v12 tableView:view willDisplayCell:cellCopy forRowAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    textField = [cellCopy textField];
    [textField setDelegate:self];
    [textField setAutocapitalizationType:1];
    [textField setReturnKeyType:9];
    specifier = [cellCopy specifier];
    v11 = [(AXCaptioningThemeStyleController *)self profileName:specifier];
    [textField setText:v11];
  }
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [editing text];
  [(AXCaptioningThemeStyleController *)self setProfileName:text specifier:0];
}

@end