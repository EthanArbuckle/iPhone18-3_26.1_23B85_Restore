@interface AXCaptionTextMetaFontController
- (id)_fontForCategory:(id)category;
- (id)specifiers;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AXCaptionTextMetaFontController

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

    v30 = v4;
    lastObject = [v4 lastObject];
    v7 = settingsLocString(@"FONT_CATEGORY_FOOTER_TEXT", @"CaptioningStyle");
    v24 = lastObject;
    [lastObject setProperty:v7 forKey:PSFooterTextGroupKey];

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = AXCaptionFonts();
    v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v32;
      v29 = PSCellClassKey;
      v27 = PSTitleKey;
      v28 = PSIDKey;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v32 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          v13 = [v12 objectForKeyedSubscript:@"category"];
          intValue = [v13 intValue];

          if (intValue)
          {
            v15 = [v12 objectForKeyedSubscript:@"category"];
            v16 = AXCaptionFontCategoryName([v15 intValue]);

            v17 = [PSSpecifier preferenceSpecifierNamed:v16 target:selfCopy set:0 get:"_fontForCategory:" detail:objc_opt_class() cell:1 edit:0];
            [v17 setProperty:objc_opt_class() forKey:v29];
            [v12 objectForKeyedSubscript:@"category"];
            v19 = v18 = selfCopy;
            [v17 setProperty:v19 forKey:@"category"];

            v20 = [v12 objectForKeyedSubscript:@"name"];
            [v17 setProperty:v20 forKey:v28];

            selfCopy = v18;
            v21 = [v12 objectForKeyedSubscript:@"isBold"];
            [v17 setProperty:v21 forKey:@"isBold"];

            [v17 setProperty:v16 forKey:v27];
            [v17 setCellType:2];
            [v30 addObject:v17];
          }
        }

        v9 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v9);
    }

    v22 = *&selfCopy->super.AXUISettingsBaseListController_opaque[v25];
    *&selfCopy->super.AXUISettingsBaseListController_opaque[v25] = v30;

    v3 = *&selfCopy->super.AXUISettingsBaseListController_opaque[v25];
  }

  return v3;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXCaptionTextMetaFontController;
  [(AXCaptionStyleChooserController *)&v6 viewDidLoad];
  table = [(AXCaptionTextMetaFontController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXCaptionFontCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXCaptionTextMetaFontController;
  [(AXCaptionTextMetaFontController *)&v4 viewWillAppear:appear];
  [(AXCaptionTextMetaFontController *)self reloadSpecifiers];
}

- (id)_fontForCategory:(id)category
{
  categoryCopy = category;
  v5 = [categoryCopy propertyForKey:@"category"];
  intValue = [v5 intValue];

  v27 = -1;
  [(AXCaptionStyleChooserController *)self profileId];
  MACaptionAppearancePrefIsSystemFont();
  [(AXCaptionStyleChooserController *)self profileId];
  v7 = MACaptionAppearancePrefCopyFontForStyle();
  if (!v7)
  {
    v9 = AXCaptionDefaultFontForCategory(intValue);
    v13 = [v9 objectForKeyedSubscript:@"displayName"];
    goto LABEL_17;
  }

  v8 = v7;
  v9 = CGFontCopyPostScriptName(v7);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = AXCaptionFonts();
  v11 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v21 = v8;
    v22 = categoryCopy;
    v13 = 0;
    v14 = *v24;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [v16 objectForKeyedSubscript:{@"name", v21, v22, v23}];
        v18 = [v17 isEqualToString:v9];

        if (v18)
        {
          v19 = [v16 objectForKeyedSubscript:@"displayName"];

          v13 = v19;
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v12);

    v8 = v21;
    categoryCopy = v22;
    if (v13)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v13 = CGFontCopyFullName(v8);
LABEL_16:
  CFRelease(v8);
LABEL_17:

  return v13;
}

@end