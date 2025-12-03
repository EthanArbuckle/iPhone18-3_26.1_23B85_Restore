@interface AXCaptionTextAllFontsController
- (id)specifiers;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation AXCaptionTextAllFontsController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = AXCaptionTextAllFontsController;
  [(AXCaptionTextAllFontsController *)&v6 viewDidLoad];
  table = [(AXCaptionTextAllFontsController *)self table];
  v4 = objc_opt_class();
  v5 = +[AXCaptionFontCell cellReuseIdentifier];
  [table registerClass:v4 forCellReuseIdentifier:v5];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsBaseListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v39 = OBJC_IVAR___PSListController__specifiers;
    selfCopy = self;
    v42 = objc_alloc_init(NSMutableArray);
    v4 = +[NSMutableArray array];
    v5 = AXCaptionFonts();
    v6 = +[NSMutableArray array];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v5;
    v7 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v54;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v54 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = [*(*(&v53 + 1) + 8 * i) objectForKeyedSubscript:@"name"];
          lowercaseString = [v11 lowercaseString];

          v13 = [lowercaseString rangeOfString:@"-"];
          if (v13 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v14 = [lowercaseString substringToIndex:v13];

            lowercaseString = v14;
          }

          [v6 addObject:lowercaseString];
        }

        v8 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v8);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v15 = +[UIFont familyNames];
    v16 = [v15 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v50;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v50 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [v4 addObject:*(*(&v49 + 1) + 8 * j)];
        }

        v17 = [v15 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v17);
    }

    [v4 sortUsingComparator:&__block_literal_global_63];
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v20 = v4;
    v21 = [v20 countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v46;
      v41 = PSCellClassKey;
      v40 = PSIDKey;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v46 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = _CTFontCreateWithNameAndSymbolicTraits();
          if (v25)
          {
            v26 = v25;
            v27 = CTFontCopyFullName(v25);
            v28 = CTFontCopyPostScriptName(v26);
            v29 = [(__CFString *)v28 rangeOfString:@"-"];
            v30 = v28;
            if (v29 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v30 = [(__CFString *)v28 substringToIndex:v29];
            }

            CFRelease(v26);
            lowercaseString2 = [(__CFString *)v28 lowercaseString];
            lowercaseString3 = [v30 lowercaseString];
            LOBYTE(v37) = 1;
            _AXLogWithFacility();

            lowercaseString4 = [v30 lowercaseString];
            v33 = [v6 containsObject:lowercaseString4];

            if ((v33 & 1) == 0)
            {
              v34 = [PSSpecifier preferenceSpecifierNamed:v27 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];
              [v34 setProperty:objc_opt_class() forKey:v41];
              [v34 setProperty:v28 forKey:v40];
              [v34 setProperty:&__kCFBooleanTrue forKey:@"isFont"];
              [v34 setCellType:3];
              [v42 addObject:v34];
            }
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v22);
    }

    v35 = *&selfCopy->AXUISettingsBaseListController_opaque[v39];
    *&selfCopy->AXUISettingsBaseListController_opaque[v39] = v42;

    v3 = *&selfCopy->AXUISettingsBaseListController_opaque[v39];
  }

  return v3;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v5 = [view cellForRowAtIndexPath:path];
  specifier = [v5 specifier];
  v7 = [specifier propertyForKey:PSIDKey];
  v18[0] = @"name";
  v18[1] = @"size";
  v19[0] = v7;
  v19[1] = &off_27B4F0;
  v18[2] = @"displayName";
  name = [specifier name];
  v18[3] = @"isBold";
  v19[2] = name;
  v19[3] = &__kCFBooleanFalse;
  v9 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:4];

  AXCaptionAddExtraUserFont(v9);
  LOBYTE(v17) = 1;
  _AXLogWithFacility();
  v10 = [(AXCaptionTextAllFontsController *)self specifier:v17];
  v11 = [v10 propertyForKey:@"TextCategory"];
  [v11 integerValue];

  v12 = [v10 propertyForKey:@"ProfileId"];
  v13 = _CTFontCreateWithNameAndSymbolicTraits();
  v14 = CTFontCopyGraphicsFont(v13, 0);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v14)
  {
    MACaptionAppearancePrefSetFontForStyle();
    CFRelease(v14);
  }

  navigationController = [(AXCaptionTextAllFontsController *)self navigationController];
  v16 = [navigationController popViewControllerAnimated:1];
}

@end