@interface WelcomeScreenConfiguration
+ (id)_allPossibleBulletTypesForCountryCode:(id)a3;
+ (id)_supportedBulletTypesFrom:(id)a3;
+ (id)configurationForCountryCode:(id)a3;
@end

@implementation WelcomeScreenConfiguration

+ (id)_supportedBulletTypesFrom:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v5 = +[MKSystemController sharedInstance];
  v6 = [v5 userInterfaceIdiom];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v18 + 1) + 8 * i) integerValue];
        if (v12 == 2)
        {
          v15 = +[GEOPlatform sharedPlatform];
          v16 = [v15 supportsAdvancedMap];

          v14 = &off_1016E8630;
          if (!v16)
          {
            continue;
          }

          goto LABEL_14;
        }

        if (v12 == 1)
        {
          if (v6)
          {
            continue;
          }

          v14 = &off_1016E8618;
LABEL_14:
          [v4 addObject:v14];
          continue;
        }

        if (!v12)
        {
          IsEnabled_DrivingMultiWaypointRoutes = MapsFeature_IsEnabled_DrivingMultiWaypointRoutes();
          v14 = &off_1016E8600;
          if (IsEnabled_DrivingMultiWaypointRoutes)
          {
            goto LABEL_14;
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v4;
}

+ (id)_allPossibleBulletTypesForCountryCode:(id)a3
{
  v3 = [a3 lowercaseString];
  if ([@"us" isEqualToString:v3] & 1) != 0 || (objc_msgSend(@"gb", "isEqualToString:", v3) & 1) != 0 || (objc_msgSend(@"ie", "isEqualToString:", v3))
  {
    v4 = &off_1016ED460;
  }

  else if ([@"cn" isEqualToString:v3])
  {
    v4 = &off_1016ED478;
  }

  else if ([@"jp" isEqualToString:v3])
  {
    v4 = &off_1016ED490;
  }

  else
  {
    v4 = &off_1016ED4A8;
  }

  return v4;
}

+ (id)configurationForCountryCode:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() _allPossibleBulletTypesForCountryCode:v3];

  v5 = [objc_opt_class() _supportedBulletTypesFrom:v4];
  v6 = [objc_opt_class() _createBulletsFromBulletTypes:v5];
  v7 = objc_alloc_init(WelcomeScreenConfiguration);
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"[Welcome Screen] What’s new" value:@"localized string not found" table:0];
  [(WelcomeScreenConfiguration *)v7 setTitle:v9];

  [(WelcomeScreenConfiguration *)v7 setBullets:v6];

  return v7;
}

@end