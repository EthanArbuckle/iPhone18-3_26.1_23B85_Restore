@interface STStorageAppsController
- (id)specifiers;
@end

@implementation STStorageAppsController

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v39 = OBJC_IVAR___PSListController__specifiers;
    v4 = STStorageDeviceIsiPad();
    v5 = +[STStorageAppsMonitor sharedMonitor];
    v6 = [v5 apps];
    apps = self->_apps;
    self->_apps = v6;

    v52 = [NSMutableArray arrayWithCapacity:[(NSArray *)self->_apps count]];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v40 = self;
    v8 = self->_apps;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (!v9)
    {
      goto LABEL_52;
    }

    v10 = v9;
    v11 = *v58;
    v47 = PKHealthDataIconKey;
    v44 = STStorageIconKey;
    v55 = STStorageCloudIconHiddenKey;
    v54 = comAppleCompass;
    v45 = iCloudDriveFakeAppID;
    v43 = iCloudDriveFPFSFakeAppID;
    v51 = STStorageInfoKey;
    v50 = PSValueKey;
    v49 = PSIDKey;
    v48 = STStorageAppKey;
    v46 = v4;
    v53 = v8;
    v56 = *v58;
    while (1)
    {
      v12 = 0;
      do
      {
        if (*v58 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v57 + 1) + 8 * v12);
        if ([v13 userVisible])
        {
          v14 = [STStorageAppCell specifierForStorageApp:v13];
          if (v14)
          {
            v15 = [v13 bundleIdentifier];
            if ([v13 isDemoted] && objc_msgSend(v15, "isEqualToString:", @"com.apple.Health"))
            {
              v16 = STStorageLocStr(@"HEALTH_DATA");
              [v13 setName:v16];

              v17 = +[PKIconImageCache settingsIconCache];
              v18 = [v17 imageForKey:v47];

              if (v18)
              {
                [v14 setProperty:v18 forKey:v44];
              }

              v19 = [NSNumber numberWithBool:1];
              [v14 setProperty:v19 forKey:v55];
            }

            if ([v13 isDemoted] && objc_msgSend(v15, "isEqualToString:", @"com.apple.Maps"))
            {
              v20 = STStorageLocStr(@"MAPS_DATA");
              [v13 setName:v20];

              v21 = [NSNumber numberWithBool:1];
              [v14 setProperty:v21 forKey:v55];
            }

            if (!v4 || ([v15 isEqualToString:v54] & 1) == 0)
            {
              v22 = [v13 appSizeIfComputed];
              v23 = [v22 userTotal];
              v24 = v23;
              if (!v22 || v23 > 4096)
              {
                v25 = [v13 appKind];
                if (v25 == 2)
                {
                  if (v24 >= 10000000)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {
                  if (v25 == 5)
                  {
                    [v14 setDetailControllerClass:objc_opt_class()];
                    v26 = STStorageDeviceKey();
                    v27 = [NSString stringWithFormat:@"LOCAL_FILES_TITLE_%@", v26];
                    v28 = STStorageLocStr(v27);
                    [v13 setName:v28];

                    v4 = v46;
                  }

                  else
                  {
                    if (v25 == 3)
                    {
                      if (([v15 isEqualToString:v45] & 1) == 0)
                      {
LABEL_30:
                        [v15 isEqualToString:v43];
                      }
                    }

                    else if (([v15 isEqualToString:v45] & 1) == 0)
                    {
                      goto LABEL_30;
                    }

LABEL_31:
                    [v14 setDetailControllerClass:objc_opt_class()];
                  }

                  if ([v13 isPseudoApp])
                  {
                    [v14 setProperty:0 forKey:v51];
                    if (v24)
                    {
                      goto LABEL_34;
                    }

LABEL_44:
                    v29 = 0;
                    goto LABEL_45;
                  }

                  v30 = [v13 appRecord];
                  v29 = [v30 applicationState];

                  if (!v29 || [v29 isValid])
                  {
                    v31 = [v13 lastUsedDate];
                    v32 = v31;
                    if (!v31 || ([v31 timeIntervalSinceReferenceDate], v33 == 0.0))
                    {
                      [v14 setProperty:0 forKey:v51];
                    }

                    else
                    {
                      if (qword_39FB8 != -1)
                      {
                        sub_1CA3C();
                      }

                      v41 = qword_39FB0;
                      v42 = STFormattedShortDate();
                      v34 = [NSString stringWithFormat:v41, v42];

                      [v14 setProperty:v34 forKey:v51];
                    }

                    v4 = v46;
                    if (!v24)
                    {
                      goto LABEL_44;
                    }

LABEL_34:
                    v29 = [NSNumber numberWithLongLong:v24];
LABEL_45:
                    [v14 setProperty:v29 forKey:v50];
                    v35 = [v13 appIdentifier];
                    [v14 setProperty:v35 forKey:v49];

                    [v14 setProperty:v13 forKey:v48];
                    [v14 setProperty:v13 forKey:@"USAGE_APP"];
                    [v52 addObject:v14];
                  }

                  v8 = v53;
                }
              }

              v11 = v56;
            }
          }
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v57 objects:v61 count:16];
      if (!v10)
      {
LABEL_52:

        v36 = [v52 sortedArrayUsingComparator:&stru_2C9C8];
        v37 = *&v40->PSListController_opaque[v39];
        *&v40->PSListController_opaque[v39] = v36;

        v3 = *&v40->PSListController_opaque[v39];
        break;
      }
    }
  }

  return v3;
}

@end