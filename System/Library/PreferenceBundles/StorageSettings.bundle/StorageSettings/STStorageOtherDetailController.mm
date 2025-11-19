@interface STStorageOtherDetailController
- (id)detailedText;
- (id)specifiers;
- (id)valueForSpecifier:(id)a3;
- (void)viewDidLoad;
@end

@implementation STStorageOtherDetailController

- (void)viewDidLoad
{
  v41.receiver = self;
  v41.super_class = STStorageOtherDetailController;
  [(STStorageDetailViewController *)&v41 viewDidLoad];
  v3 = OBJC_IVAR___PSViewController__specifier;
  v4 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:PSValueKey];
  otherSize = self->_otherSize;
  self->_otherSize = v4;

  self->_dataIsLoaded = 0;
  if (STStorageIsInternalInstall())
  {
    v6 = objc_alloc_init(STTTRDelegate);
    ttrDelegate = self->_ttrDelegate;
    self->_ttrDelegate = v6;

    [(STTTRDelegate *)self->_ttrDelegate setController:self];
    v8 = [*&self->super.PSListController_opaque[v3] propertyForKey:STStorageDetailDataSizeKey];
    apps = self->_apps;
    self->_apps = v8;

    v43[0] = @"com.apple.fakeapp.SoftwareUpdate";
    v10 = [[STSizeInvestigationComponent alloc] initWithPaths:&off_2FFD0];
    v44[0] = v10;
    v43[1] = @"com.apple.mobileslideshow";
    v11 = [[STSizeInvestigationComponent alloc] initWithPaths:&off_2FFE8];
    v44[1] = v11;
    v43[2] = @"com.apple.MobileSMS";
    v12 = [[STSizeInvestigationComponent alloc] initWithPaths:&off_30000];
    v44[2] = v12;
    v43[3] = @"com.apple.podcasts";
    v13 = [[STSizeInvestigationComponent alloc] initWithPaths:&off_30018];
    v44[3] = v13;
    v43[4] = @"com.apple.iBooks";
    v14 = [[STSizeInvestigationComponent alloc] initWithPaths:&off_30030];
    v44[4] = v14;
    v43[5] = @"com.apple.mobilemail";
    v36 = self;
    v15 = [[STSizeInvestigationComponent alloc] initWithPaths:&off_30048];
    v44[5] = v15;
    v43[6] = @"com.apple.Health";
    v16 = [[STSizeInvestigationComponent alloc] initWithPaths:&off_30060];
    v44[6] = v16;
    v43[7] = @"com.apple.fakeapp.MediaAppPlaceholder";
    v17 = [[STSizeInvestigationComponent alloc] initWithPaths:&off_30078];
    v44[7] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:8];
    appComponents = v36->_appComponents;
    v36->_appComponents = v18;

    v20 = v36;
    v35 = [[STStorageApp alloc] initWithBundleIdentifier:@"com.apple.fakeapp.MediaAppPlaceholder" name:@"Media apps" vendorName:0];
    v21 = [[STSizeVector alloc] initWithFixed:0 docsAndData:0 purgeable:0];
    v22 = [NSMutableDictionary dictionaryWithCapacity:[(NSArray *)v36->_apps count]];
    bundleApps = v36->_bundleApps;
    v36->_bundleApps = v22;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v24 = v36->_apps;
    v25 = [(NSArray *)v24 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v38;
      do
      {
        for (i = 0; i != v26; i = i + 1)
        {
          if (*v38 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v37 + 1) + 8 * i);
          v30 = v20->_bundleApps;
          v31 = [v29 bundleIdentifier];
          [(NSMutableDictionary *)v30 setObject:v29 forKeyedSubscript:v31];

          v32 = [v29 bundleIdentifier];
          LODWORD(v31) = [&off_30090 containsObject:v32];

          if (v31)
          {
            v33 = [v29 appSize];
            v34 = [v21 plus:v33];

            v21 = v34;
          }

          v20 = v36;
        }

        v26 = [(NSArray *)v24 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v26);
    }

    [v35 setExternalSizes:v21];
    [(NSMutableDictionary *)v20->_bundleApps setObject:v35 forKeyedSubscript:@"com.apple.fakeapp.MediaAppPlaceholder"];
  }
}

- (id)detailedText
{
  vmUsage = self->_vmUsage;
  v4 = STFormattedSize();
  szLogs = self->_szLogs;
  v6 = STFormattedSize();
  v43 = [NSMutableString stringWithFormat:@"Storage Report : \n\nSwap : \t%@\nLogs : \t%@\n", v4, v6];

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v44 = self;
  v7 = self->_detailedOthersSizes;
  v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v49 + 1) + 8 * i);
        v13 = [(NSMutableDictionary *)self->_detailedOthersSizes objectForKeyedSubscript:v12];
        [v13 longLongValue];
        v14 = STFormattedSize();
        v15 = [NSString stringWithFormat:@"%@ : \t%@\n", v12, v14];
        [v43 appendString:v15];
      }

      v9 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v9);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = self->_appComponents;
  v16 = [(NSDictionary *)obj countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v46;
    v34 = *v46;
    do
    {
      v19 = 0;
      v35 = v17;
      do
      {
        if (*v46 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = [(NSDictionary *)v44->_appComponents objectForKeyedSubscript:*(*(&v45 + 1) + 8 * v19)];
        if ([v20 shouldReturn])
        {
          v42 = [v20 app];
          v41 = [v42 appSize];
          [v41 docsAndData];
          v37 = STFormattedSize();
          v40 = [v20 app];
          v39 = [v40 appSize];
          [v39 purgeable];
          v21 = STFormattedSize();
          v22 = [v20 app];
          v23 = [v22 appSize];
          [v23 fixed];
          v24 = STFormattedSize();
          v25 = [v20 app];
          v26 = [v25 appSize];
          [v26 dynamic];
          v27 = STFormattedSize();
          v38 = [NSString stringWithFormat:@"Docs&Data : %@ / Purgeable : %@ / Fixed : %@ / Dynamic : %@", v37, v21, v24, v27];

          v28 = [v20 app];
          v29 = [v28 bundleIdentifier];
          v30 = [v20 reportedDiff];
          v31 = [v20 reportedString];
          v32 = [NSString stringWithFormat:@"%@ \tDiff : %@ \n\t%@\n\t%@\n\n", v29, v30, v31, v38];

          v17 = v35;
          v18 = v34;
          [v43 appendString:v32];
        }

        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [(NSDictionary *)obj countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v17);
  }

  return v43;
}

- (id)valueForSpecifier:(id)a3
{
  v3 = [a3 propertyForKey:PSValueKey];
  [v3 longLongValue];
  v4 = STFormattedSize();

  return v4;
}

- (id)specifiers
{
  v3 = [NSMutableArray arrayWithCapacity:100];
  v4 = +[PSSpecifier emptyGroupSpecifier];
  v5 = STStorageLocStr(@"SYSTEM_INFO");
  v6 = PSFooterTextGroupKey;
  [v4 setProperty:v5 forKey:PSFooterTextGroupKey];

  [v3 addObject:v4];
  self->_szLogs = 0;
  v7 = 0;
  v78 = v3;
  if (STStorageIsInternalInstall())
  {
    v76 = v6;
    v79 = [(STStorageOtherDetailController *)self logSizes];
    v8 = [NSMutableArray arrayWithCapacity:10];
    v9 = [STStorageHeaderLabelCell specifierWithTitle:@"Internal Only"];
    [v8 addObject:v9];

    if (self->_ttrOptionTip && self->_dataIsLoaded)
    {
      v10 = +[PSSpecifier emptyGroupSpecifier];
      [v8 addObject:v10];

      v11 = [(STStorageOptionTip *)self->_ttrOptionTip specifier];
      [v8 addObject:v11];

      v12 = [(STStorageOptionTip *)self->_ttrOptionTip infoSpecifier];
      [v8 addObject:v12];

      v13 = +[PSSpecifier emptyGroupSpecifier];
      [v8 addObject:v13];
    }

    v84 = v8;
    if (self->_vmUsage < 1)
    {
      v77 = v4;
    }

    else
    {
      v14 = STStorageLocStr(@"VM_USAGE");
      v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];

      v16 = [NSNumber numberWithLongLong:self->_vmUsage];
      [v15 setProperty:v16 forKey:PSValueKey];

      [v8 addObject:v15];
      v77 = v15;
    }

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    obj = [(NSMutableDictionary *)self->_detailedOthersSizes allKeys];
    v17 = [obj countByEnumeratingWithState:&v101 objects:v109 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v102;
      v20 = PSValueKey;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v102 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v101 + 1) + 8 * i);
          v23 = [(NSMutableDictionary *)self->_detailedOthersSizes objectForKeyedSubscript:v22];
          if ([v23 longLongValue] >= 1)
          {
            v24 = [PSSpecifier preferenceSpecifierNamed:v22 target:self set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];
            [v24 setProperty:v23 forKey:v20];
            [v84 addObject:v24];
          }
        }

        v18 = [obj countByEnumeratingWithState:&v101 objects:v109 count:16];
      }

      while (v18);
    }

    v25 = [NSMutableDictionary dictionaryWithDictionary:v79];
    [v25 addEntriesFromDictionary:self->_detailedLogSizes];
    v26 = [v25 keysSortedByValueWithOptions:16 usingComparator:&stru_2CFB8];
    obja = [NSMutableArray arrayWithCapacity:20];
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v27 = v79;
    v28 = [v27 countByEnumeratingWithState:&v97 objects:v108 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v98;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v98 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = [v27 objectForKey:*(*(&v97 + 1) + 8 * j)];
          v33 = [v32 longLongValue];
          if (v33 >= 1)
          {
            self->_szLogs += v33;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v97 objects:v108 count:16];
      }

      while (v29);
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v80 = v26;
    v34 = [v80 countByEnumeratingWithState:&v93 objects:v107 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v94;
      v37 = PSValueKey;
      do
      {
        for (k = 0; k != v35; k = k + 1)
        {
          if (*v94 != v36)
          {
            objc_enumerationMutation(v80);
          }

          v39 = *(*(&v93 + 1) + 8 * k);
          v40 = [v25 objectForKey:v39];
          if ([v40 longLongValue] >= 1)
          {
            v41 = [PSSpecifier preferenceSpecifierNamed:v39 target:self set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];
            [v41 setProperty:v40 forKey:v37];
            [obja addObject:v41];
          }
        }

        v35 = [v80 countByEnumeratingWithState:&v93 objects:v107 count:16];
      }

      while (v35);
    }

    if (self->_szLogs)
    {
      v42 = STStorageLocStr(@"LOG_FILES");
      v43 = [PSSpecifier preferenceSpecifierNamed:v42 target:self set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];

      v44 = [NSNumber numberWithLongLong:self->_szLogs];
      [v43 setProperty:v44 forKey:PSValueKey];

      v45 = v84;
      [v84 addObject:v43];
    }

    else
    {
      v45 = v84;
      v43 = v77;
    }

    v46 = +[PSSpecifier emptyGroupSpecifier];

    [v45 addObject:v46];
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v47 = self->_appComponents;
    v48 = [(NSDictionary *)v47 countByEnumeratingWithState:&v89 objects:v106 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v90;
      do
      {
        for (m = 0; m != v49; m = m + 1)
        {
          if (*v90 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = [(NSDictionary *)self->_appComponents objectForKeyedSubscript:*(*(&v89 + 1) + 8 * m)];
          if ([v52 shouldReturn])
          {
            v53 = [v52 specifier];
            [v84 addObject:v53];
          }
        }

        v49 = [(NSDictionary *)v47 countByEnumeratingWithState:&v89 objects:v106 count:16];
      }

      while (v49);
    }

    v7 = v84;
    v4 = v46;
    if (!self->_dataIsLoaded)
    {
      [v46 setProperty:@"The manual sizing of the apps and media could take few minutes depending on the amount of data to evaluate." forKey:v76];
      v54 = [PSSpecifier preferenceSpecifierNamed:0 target:self set:0 get:0 detail:0 cell:15 edit:0];
      [v84 addObject:v54];
    }

    v55 = +[PSSpecifier emptyGroupSpecifier];
    [v84 addObject:v55];

    [v84 addObjectsFromArray:obja];
    v3 = v78;
  }

  objb = objc_alloc_init(STStorageOtherFakeApp);
  v56 = [STStorageAppHeaderCell specifierForStorageApp:?];
  [v3 addObject:v56];

  v57 = STStorageLocStr(@"OTHER_FILES");
  v58 = [PSSpecifier preferenceSpecifierNamed:v57 target:self set:0 get:"valueForSpecifier:" detail:0 cell:4 edit:0];

  v59 = PSValueKey;
  v60 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:PSValueKey];
  [v58 setProperty:v60 forKey:v59];

  [v3 addObject:v58];
  if (STStorageIsInternalInstall())
  {
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v61 = v7;
    v62 = [v61 countByEnumeratingWithState:&v85 objects:v105 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v86;
      v65 = PSPrioritizeValueTextDisplayKey;
      v66 = PSAllowMultilineTitleKey;
      do
      {
        for (n = 0; n != v63; n = n + 1)
        {
          if (*v86 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v68 = *(*(&v85 + 1) + 8 * n);
          [v68 setProperty:&__kCFBooleanTrue forKey:v65];
          [v68 setProperty:&__kCFBooleanTrue forKey:v66];
        }

        v63 = [v61 countByEnumeratingWithState:&v85 objects:v105 count:16];
      }

      while (v63);
    }

    v69 = +[PSSpecifier emptyGroupSpecifier];
    v3 = v78;
    [v78 addObject:v69];

    [v78 addObjectsFromArray:v61];
  }

  v70 = OBJC_IVAR___PSListController__specifiers;
  v71 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = v3;
  v72 = v3;

  v73 = *&self->super.PSListController_opaque[v70];
  v74 = v73;

  return v73;
}

@end