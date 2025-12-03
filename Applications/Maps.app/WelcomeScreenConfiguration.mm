@interface WelcomeScreenConfiguration
+ (id)_allPossibleBulletTypesForCountryCode:(id)code;
+ (id)_supportedBulletTypesFrom:(id)from;
+ (id)configurationForCountryCode:(id)code;
@end

@implementation WelcomeScreenConfiguration

+ (id)_supportedBulletTypesFrom:(id)from
{
  fromCopy = from;
  v4 = +[NSMutableArray array];
  v5 = +[MKSystemController sharedInstance];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = fromCopy;
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

        integerValue = [*(*(&v18 + 1) + 8 * i) integerValue];
        if (integerValue == 2)
        {
          v15 = +[GEOPlatform sharedPlatform];
          supportsAdvancedMap = [v15 supportsAdvancedMap];

          v14 = &off_1016E8630;
          if (!supportsAdvancedMap)
          {
            continue;
          }

          goto LABEL_14;
        }

        if (integerValue == 1)
        {
          if (userInterfaceIdiom)
          {
            continue;
          }

          v14 = &off_1016E8618;
LABEL_14:
          [v4 addObject:v14];
          continue;
        }

        if (!integerValue)
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

+ (id)_allPossibleBulletTypesForCountryCode:(id)code
{
  lowercaseString = [code lowercaseString];
  if ([@"us" isEqualToString:lowercaseString] & 1) != 0 || (objc_msgSend(@"gb", "isEqualToString:", lowercaseString) & 1) != 0 || (objc_msgSend(@"ie", "isEqualToString:", lowercaseString))
  {
    v4 = &off_1016ED460;
  }

  else if ([@"cn" isEqualToString:lowercaseString])
  {
    v4 = &off_1016ED478;
  }

  else if ([@"jp" isEqualToString:lowercaseString])
  {
    v4 = &off_1016ED490;
  }

  else
  {
    v4 = &off_1016ED4A8;
  }

  return v4;
}

+ (id)configurationForCountryCode:(id)code
{
  codeCopy = code;
  v4 = [objc_opt_class() _allPossibleBulletTypesForCountryCode:codeCopy];

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