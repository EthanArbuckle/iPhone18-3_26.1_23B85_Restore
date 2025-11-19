@interface SRRelatedSpecifiers
+ (void)initialize;
- (id)specifiersForRelatedSettings:(id)a3;
- (void)navigateToAuthorization;
@end

@implementation SRRelatedSpecifiers

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_11018 = os_log_create("com.apple.SensorKit", "SRRelatedSpecifiers");
  }
}

- (id)specifiersForRelatedSettings:(id)a3
{
  v33 = +[NSMutableArray array];
  v4 = +[NSMutableSet set];
  v5 = +[NSMutableSet set];
  v6 = objc_autoreleasePoolPush();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v7 = +[SRSensorDescription allDescriptions];
  v8 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        if ([objc_msgSend(v12 "relatedSettingsCategories")])
        {
          [v4 addObject:{objc_msgSend(v12, "authorizationService")}];
          [v5 addObject:{objc_msgSend(v12, "name")}];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(v6);
  if (![v4 count])
  {
    return &__NSArray0__struct;
  }

  v13 = [[SRAuthorizationStore alloc] initWithSensors:v5];
  v14 = [v13 readerAuthorizationBundleIdValues];

  if (![v14 count])
  {
    return &__NSArray0__struct;
  }

  v34 = v14;
  [v33 addObject:{+[PSSpecifier groupSpecifierWithName:](PSSpecifier, "groupSpecifierWithName:", -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"APPS_AND_STUDIES_USING_RESEARCH_SENSORS", &stru_C650, 0))}];
  v15 = v14;
  v31 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"AUTHORIZED", &stru_C650, 0];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = [v14 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v16)
  {
    v17 = v16;
    v35 = *v41;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v40 + 1) + 8 * j);
        v20 = objc_autoreleasePoolPush();
        v21 = [NSBundle sk_bundleWithIdentifier:v19];
        if (v21)
        {
          v22 = v21;
          v23 = [v15 objectForKeyedSubscript:v19];
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v39 = 0u;
          v24 = [v23 countByEnumeratingWithState:&v36 objects:v48 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v37;
            while (2)
            {
              for (k = 0; k != v25; k = k + 1)
              {
                if (*v37 != v26)
                {
                  objc_enumerationMutation(v23);
                }

                if ([objc_msgSend(+[SRSensorDescription sensorDescriptionForSensor:](SRSensorDescription sensorDescriptionForSensor:{*(*(&v36 + 1) + 8 * k)), "relatedSettingsCategories"), "containsObject:", a3}])
                {
                  [v33 addObject:{+[PSSpecifier sk_appSpecifierForBundle:value:cellType:target:](PSSpecifier, "sk_appSpecifierForBundle:value:cellType:target:", v22, v31, 4, self)}];
                  v15 = v34;
                  goto LABEL_28;
                }
              }

              v25 = [v23 countByEnumeratingWithState:&v36 objects:v48 count:16];
              v15 = v34;
              if (v25)
              {
                continue;
              }

              break;
            }
          }
        }

LABEL_28:
        objc_autoreleasePoolPop(v20);
      }

      v17 = [v15 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v17);
  }

  v28 = v33;
  if ([v33 count] == &dword_0 + 1)
  {
    return &__NSArray0__struct;
  }

  v30 = [PSSpecifier preferenceSpecifierNamed:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"VIEW_MANAGE_AUTHORIZATION" target:&stru_C650 set:0] get:self detail:0 cell:0 edit:0, 13, 0];
  [v30 setButtonAction:"navigateToAuthorization"];
  [v33 addObject:v30];
  return v28;
}

- (void)navigateToAuthorization
{
  v4 = 0;
  [+[LSApplicationWorkspace defaultWorkspace](LSApplicationWorkspace "defaultWorkspace")];
  if (v4)
  {
    v2 = qword_11018;
    if (os_log_type_enabled(qword_11018, OS_LOG_TYPE_ERROR))
    {
      v3 = sub_4BC8();
      *buf = 138543618;
      v6 = v3;
      v7 = 2114;
      v8 = v4;
      _os_log_error_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "Error opening %{public}@ because %{public}@", buf, 0x16u);
    }
  }
}

@end