@interface COSUsageController
+ (id)capacityBarCategoriesForUsageData:(id)a3;
+ (id)prettyUsageString:(float)a3;
- (COSUsageController)init;
- (id)appUsage:(id)a3;
- (id)specifiers;
- (void)initControls;
@end

@implementation COSUsageController

- (COSUsageController)init
{
  v15.receiver = self;
  v15.super_class = COSUsageController;
  v2 = [(COSUsageController *)&v15 init];
  if (v2)
  {
    v3 = [[NSSManager alloc] initWithQueue:&_dispatch_main_q];
    nssManager = v2->_nssManager;
    v2->_nssManager = v3;

    v5 = objc_opt_new();
    usageData = v2->_usageData;
    v2->_usageData = v5;

    v7 = +[NSThread currentThread];
    v8 = +[NSThread mainThread];

    if (v7 == v8)
    {
      v2->_usageDataPending = 1;
      objc_initWeak(&location, v2);
      v9 = v2->_nssManager;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10003E1C4;
      v11[3] = &unk_100269018;
      objc_copyWeak(&v13, &location);
      v12 = v2;
      [(NSSManager *)v9 getUsageData:v11];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }

    [(COSUsageController *)v2 initControls];
  }

  return v2;
}

- (void)initControls
{
  v4 = [(COSUsageController *)self navigationItem];
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"TITLE" value:&stru_10026E598 table:@"Usage"];
  [v4 setTitle:v3];
}

- (id)specifiers
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"APPLE_WATCH" value:&stru_10026E598 table:@"Usage"];
  v37 = [PSCapacityBarCell specifierWithTitle:v3];

  if (self->_usageDataFailed)
  {
    v4 = &__kCFBooleanTrue;
    v5 = &PSCapacityBarHideLegendKey;
    v6 = v37;
  }

  else
  {
    v6 = v37;
    if (self->_usageDataPending)
    {
      v5 = &PSCapacityBarHideLegendKey;
      v7 = &__kCFBooleanTrue;
      v8 = &PSCapacityBarForceLoadingKey;
    }

    else
    {
      [v37 setProperty:&__kCFBooleanTrue forKey:PSCapacityBarShowOtherDataLegendKey];
      v5 = &PSCapacityBarForceLoadingKey;
      v7 = &__kCFBooleanFalse;
      v8 = &PSCapacityBarHideLegendKey;
    }

    [v37 setProperty:v7 forKey:*v8];
    v4 = &__kCFBooleanFalse;
  }

  [v6 setProperty:v4 forKey:*v5];
  v9 = +[UIColor systemLightGrayColor];
  [v37 setProperty:v9 forKey:PSCapacityBarOtherDataColorKey];

  v10 = objc_alloc_init(PSCapacityBarData);
  [v10 setCapacity:{-[NSSUsageData capacityInBytes](self->_usageData, "capacityInBytes")}];
  v35 = v10;
  [v10 setBytesUsed:{-[NSSUsageData usedStorageInBytes](self->_usageData, "usedStorageInBytes")}];
  v11 = [COSUsageController capacityBarCategoriesForUsageData:self->_usageData];
  [v10 setCategories:v11];

  [v37 setProperty:v10 forKey:PSCapacityBarDataKey];
  v39 = +[NanoResourceGrabber sharedInstance];
  v12 = +[UIScreen mainScreen];
  v13 = [v12 traitCollection];
  [v13 displayScale];
  if (v14 <= 2.0)
  {
    v15 = 47;
  }

  else
  {
    v15 = 48;
  }

  v38 = v15;

  v41 = objc_opt_new();
  v36 = objc_alloc_init(NSMutableArray);
  [v36 addObject:v37];
  v16 = +[PSSpecifier emptyGroupSpecifier];
  [v36 addObject:v16];

  v17 = self;
  if (self->_usageDataPending)
  {
    v18 = [PSSpecifier preferenceSpecifierNamed:"preferenceSpecifierNamed:target:set:get:detail:cell:edit:" target:0 set:0 get:? detail:? cell:? edit:?];
    [v36 addObject:v18];

    v17 = self;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [(NSSUsageData *)v17->_usageData appBundleUsage];
  v19 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
  if (v19)
  {
    v20 = *v50;
    v40 = PSPrioritizeValueTextDisplayKey;
    v21 = PSIconImageKey;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v50 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v49 + 1) + 8 * i);
        v24 = [v23 size];
        if ([v24 userTotal] >= 1000000)
        {
          v25 = [v23 bundleIdentifier];
          v26 = [v23 name];
          v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:self set:0 get:"appUsage:" detail:objc_opt_class() cell:2 edit:0];

          [v27 setProperty:&__kCFBooleanTrue forKey:v40];
          [v27 setUserInfo:v23];
          [v27 setIdentifier:v25];
          if ([v25 isEqualToString:@"com.apple.MobileAddressBook"])
          {
            v28 = BPSLocalIconName();
            v29 = [UIImage imageNamed:v28];

            v30 = BPSCreateRoundedGizmoAppIconForSquareImage();

            [v27 setProperty:v30 forKey:v21];
          }

          else
          {
            v31 = PSBlankIconImage();
            [v27 setProperty:v31 forKey:v21];

            objc_initWeak(&location, self);
            v32 = &_dispatch_main_q;
            v44[0] = _NSConcreteStackBlock;
            v44[1] = 3221225472;
            v44[2] = sub_10003EB48;
            v44[3] = &unk_100269040;
            objc_copyWeak(&v47, &location);
            v45 = v27;
            v46 = v25;
            [v39 getIconForBundleID:v46 iconVariant:v38 queue:&_dispatch_main_q block:v44 timeout:-1.0];

            objc_destroyWeak(&v47);
            objc_destroyWeak(&location);
          }

          v33 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v24 userTotal]);
          [v27 setProperty:v33 forKey:@"TOTAL_SIZE"];

          [v41 addObject:v27];
        }
      }

      v19 = [obj countByEnumeratingWithState:&v49 objects:v53 count:16];
    }

    while (v19);
  }

  [v41 sortUsingComparator:&stru_100269080];
  [v36 addObjectsFromArray:v41];
  objc_storeStrong(&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers], v36);

  return v36;
}

- (id)appUsage:(id)a3
{
  v4 = a3;
  v5 = [v4 propertyForKey:@"TOTAL_SIZE"];
  v6 = v5;
  if (!v5 || [v5 integerValue] == -1)
  {
    v12 = [(COSUsageController *)self dash];
  }

  else
  {
    v7 = [v4 propertyForKey:@"TOTAL_SIZE"];
    [v7 floatValue];
    v9 = v8;

    v10 = objc_opt_class();
    LODWORD(v11) = v9;
    v12 = [v10 prettyUsageString:v11];
  }

  v13 = v12;

  return v13;
}

+ (id)prettyUsageString:(float)a3
{
  if (a3 > 0.0)
  {
    v4 = NSLocalizedFileSizeDescription();
  }

  else
  {
    v3 = +[NSBundle mainBundle];
    v4 = [v3 localizedStringForKey:@"NO_DATA" value:&stru_10026E598 table:@"Usage"];
  }

  return v4;
}

+ (id)capacityBarCategoriesForUsageData:(id)a3
{
  v29 = a3;
  v3 = +[NSMutableArray array];
  v36[0] = NSCategoryAppsKey;
  v4 = +[UIColor systemPinkColor];
  v37[0] = v4;
  v36[1] = NSCategoryPhotosKey;
  v5 = +[UIColor systemYellowColor];
  v37[1] = v5;
  v36[2] = NSCategoryMessagesKey;
  v6 = +[UIColor systemGreenColor];
  v37[2] = v6;
  v36[3] = NSCategoryBooksKey;
  v7 = +[UIColor systemOrangeColor];
  v37[3] = v7;
  v36[4] = NSCategoryMediaKey;
  v8 = +[UIColor systemPurpleColor];
  v37[4] = v8;
  v36[5] = NSCategoryMailKey;
  v9 = +[UIColor systemBlueColor];
  v37[5] = v9;
  v36[6] = NSCategoryCloudDriveKey;
  v10 = +[UIColor systemTealColor];
  v37[6] = v10;
  v36[7] = NSCategorySystemKey;
  v11 = +[UIColor systemDarkMidGrayColor];
  v37[7] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:8];

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [v29 categories];
  v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        v18 = [v17 categoryIdentifier];
        v19 = [v17 name];
        if (!v19)
        {
          v20 = +[NSBundle mainBundle];
          v21 = [v17 categoryIdentifier];
          v19 = [v20 localizedStringForKey:v21 value:&stru_10026E598 table:@"Usage"];
        }

        v22 = [PSCapacityBarCategory alloc];
        v23 = [v12 objectForKeyedSubscript:v18];
        v24 = [v17 size];
        v25 = [v22 initWithIdentifier:v18 title:v19 color:v23 bytes:{objc_msgSend(v24, "userTotal")}];

        [v3 addObject:v25];
      }

      v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  v26 = v3;
  v27 = [v3 sortedArrayUsingComparator:&stru_1002690C0];

  return v27;
}

@end