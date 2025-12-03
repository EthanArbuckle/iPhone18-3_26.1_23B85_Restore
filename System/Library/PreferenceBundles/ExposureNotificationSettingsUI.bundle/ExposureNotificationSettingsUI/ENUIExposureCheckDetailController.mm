@interface ENUIExposureCheckDetailController
- (id)dataSource;
- (id)matchedKeyText;
- (id)specifiers;
- (id)timestampText;
- (void)viewDidLoad;
@end

@implementation ENUIExposureCheckDetailController

- (void)viewDidLoad
{
  specifier = [(ENUIExposureCheckDetailController *)self specifier];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [specifier propertyForKey:v5];
  check = self->_check;
  self->_check = v6;

  v8.receiver = self;
  v8.super_class = ENUIExposureCheckDetailController;
  [(ENUIExposureCheckDetailController *)&v8 viewDidLoad];
}

- (id)specifiers
{
  selfCopy = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = ENUILocalizedString();
    [(ENUIExposureCheckDetailController *)selfCopy setTitle:v5];

    v6 = objc_alloc_init(NSMutableArray);
    v7 = &MGCopyAnswer_ptr;
    v8 = ENUILocalizedString();
    v9 = [PSSpecifier preferenceSpecifierNamed:v8 target:selfCopy set:0 get:"timestampText" detail:0 cell:4 edit:0];

    v10 = objc_opt_class();
    v11 = PSCellClassKey;
    [v9 setProperty:v10 forKey:PSCellClassKey];
    v12 = ENUILocalizedString();
    v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:selfCopy set:0 get:"matchedKeyText" detail:0 cell:4 edit:0];

    [v13 setProperty:objc_opt_class() forKey:v11];
    v14 = ENUILocalizedString();
    v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:selfCopy set:0 get:"dataSource" detail:0 cell:4 edit:0];

    [v15 setProperty:objc_opt_class() forKey:v11];
    v16 = +[PSSpecifier emptyGroupSpecifier];
    v46[0] = v16;
    v46[1] = v9;
    v46[2] = v13;
    v46[3] = v15;
    v17 = [NSArray arrayWithObjects:v46 count:4];
    [v6 addObjectsFromArray:v17];

    files = [(ENExposureDetectionHistoryCheck *)selfCopy->_check files];
    v19 = [files count];

    if (v19)
    {
      v36 = v15;
      v37 = v13;
      v38 = v9;
      v39 = v3;
      v20 = ENUILocalizedString();
      v21 = [PSSpecifier groupSpecifierWithName:v20];
      [v6 addObject:v21];

      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v22 = selfCopy;
      obj = [(ENExposureDetectionHistoryCheck *)selfCopy->_check files];
      v23 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v42;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            v27 = v6;
            if (*v42 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v28 = *(*(&v41 + 1) + 8 * i);
            enui_hashText = [v28 enui_hashText];
            v30 = v7;
            v31 = [v7[109] preferenceSpecifierNamed:enui_hashText target:v22 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
            v32 = objc_opt_class();
            v33 = NSStringFromClass(v32);
            [v31 setProperty:v28 forKey:v33];

            v6 = v27;
            [v27 addObject:v31];

            v7 = v30;
          }

          v24 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
        }

        while (v24);
      }

      selfCopy = v22;
      v9 = v38;
      v3 = v39;
      v15 = v36;
      v13 = v37;
    }

    v34 = *&selfCopy->PSListController_opaque[v3];
    *&selfCopy->PSListController_opaque[v3] = v6;

    v4 = *&selfCopy->PSListController_opaque[v3];
  }

  return v4;
}

- (id)matchedKeyText
{
  if (qword_34138 != -1)
  {
    sub_1C36C();
  }

  check = self->_check;
  v4 = qword_34130;
  session = [(ENExposureDetectionHistoryCheck *)check session];
  v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [session matchCount]);
  v7 = [v4 stringFromNumber:v6];

  return v7;
}

- (id)timestampText
{
  if (qword_34148 != -1)
  {
    sub_1C380();
  }

  check = self->_check;
  v4 = qword_34140;
  session = [(ENExposureDetectionHistoryCheck *)check session];
  date = [session date];
  v7 = [v4 stringFromDate:date];

  return v7;
}

- (id)dataSource
{
  session = [(ENExposureDetectionHistoryCheck *)self->_check session];
  appBundleIdentifier = [session appBundleIdentifier];

  if (appBundleIdentifier)
  {
    session2 = [LSApplicationProxy applicationProxyForIdentifier:appBundleIdentifier];
    appState = [session2 appState];
    if ([appState isValid])
    {
      localizedName = [session2 localizedName];
    }

    else
    {
      localizedName = appBundleIdentifier;
    }
  }

  else
  {
    session2 = [(ENExposureDetectionHistoryCheck *)self->_check session];
    appState = [session2 region];
    localizedName = [appState regionCode];
  }

  v8 = localizedName;

  return v8;
}

@end