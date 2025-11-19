@interface MapsLegacyDataMigrator
- (BOOL)_maps_isFileNotFoundError:(id)a3;
- (BOOL)_migrateDefaults;
- (BOOL)_migrateOrphanedWatchResources;
- (BOOL)_migratePathsIntoContainer;
- (BOOL)_moveItemAtPathIfExists:(id)a3 toPathCreatingIntermediateDirectories:(id)a4;
- (BOOL)_removeItemAtPathIfExists:(id)a3;
- (BOOL)_removeLegacyFiles;
- (BOOL)_removeOrphanedRAPWebBundles;
- (MapsLegacyDataMigrator)init;
- (void)_migratePreCrystalFavorites:(id)a3;
- (void)performMigration;
@end

@implementation MapsLegacyDataMigrator

- (MapsLegacyDataMigrator)init
{
  v6.receiver = self;
  v6.super_class = MapsLegacyDataMigrator;
  v2 = [(MapsLegacyDataMigrator *)&v6 init];
  if (v2)
  {
    v3 = geo_dispatch_queue_create_with_qos();
    migrationQueue = v2->_migrationQueue;
    v2->_migrationQueue = v3;
  }

  return v2;
}

- (void)performMigration
{
  v3 = +[NSUserDefaults __maps_groupUserDefaults];
  v4 = [v3 integerForKey:@"LegacyDataMigratorVersionCompletionStatus"];

  if (v4 != 7)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = v4;
    v5 = dispatch_group_create();
    if ((v4 & 1) == 0 && GEOConfigGetBOOL())
    {
      v6 = +[MSPMapsPaths mapsApplicationContainerPaths];
      v7 = v6 == 0;

      if (v7)
      {
        v14 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "There is no Maps container, so we're skipping migration for all those things that should execute inside the Maps container.", buf, 2u);
        }
      }

      else
      {
        v8 = [(MapsLegacyDataMigrator *)self _migratePathsIntoContainer];
        v9 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v26 = v8;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Containerize: %d", buf, 8u);
        }

        v10 = [(MapsLegacyDataMigrator *)self _migrateDefaults];
        v11 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v26 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Defaults: %d", buf, 8u);
        }

        v12 = [(MapsLegacyDataMigrator *)self _migrateFiles];
        v13 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v26 = v12;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Files: %d", buf, 8u);
        }

        if ((v8 & v10 & v12) == 1)
        {
          v22[3] |= 1uLL;
        }
      }
    }

    if ((v4 & 2) == 0 && GEOConfigGetBOOL())
    {
      if (MapsFeature_IsEnabled_MyPlacesFeatures())
      {
        dispatch_group_enter(v5);
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100D56F18;
        v18[3] = &unk_10165E218;
        v20 = &v21;
        v19 = v5;
        [(MapsLegacyDataMigrator *)self _migratePreCrystalFavorites:v18];
      }
    }

    migrationQueue = self->_migrationQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100D56F38;
    block[3] = &unk_10165E540;
    block[6] = v4;
    block[4] = self;
    block[5] = &v21;
    dispatch_group_async(v5, migrationQueue, block);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100D56F98;
    v16[3] = &unk_1016608A8;
    v16[4] = &v21;
    dispatch_group_notify(v5, &_dispatch_main_q, v16);

    _Block_object_dispose(&v21, 8);
  }
}

- (BOOL)_removeOrphanedRAPWebBundles
{
  v15[0] = @"/private/var/mobile/Library/Caches/com.apple.maps/RAPWebBundle";
  v15[1] = @"/private/var/mobile/Library/Caches/com.apple.Maps/RAPWebBundle";
  [NSArray arrayWithObjects:v15 count:2];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v7 &= [(MapsLegacyDataMigrator *)self _removeItemAtPathIfExists:*(*(&v10 + 1) + 8 * i), v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)_migratePreCrystalFavorites:(id)a3
{
  v3 = a3;
  v4 = GEOFindOrCreateLog();
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = os_signpost_id_generate(v4);
  v5 = v4;
  v6 = v5;
  v7 = v20[3];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, v7, "MigratePreCrystalFavorites", "", buf, 2u);
  }

  v8 = v6;
  v9 = v8;
  v10 = v20[3];
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "MigratePreCrystalFavoritesDuration", "", buf, 2u);
  }

  v11 = +[_TtC4Maps20MapsFavoritesManager sharedManager];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100D55918;
  v14[3] = &unk_101652A88;
  v12 = v9;
  v15 = v12;
  v17 = &v19;
  v13 = v3;
  v16 = v13;
  [v11 migrateFavoritesIfNeededWithCompletionHandler:v14];

  _Block_object_dispose(&v19, 8);
}

- (BOOL)_removeLegacyFiles
{
  v3 = +[MSPMapsPaths mapsApplicationContainerPaths];
  v40[0] = @"/var/mobile/Library/Preferences/com.apple.GMM.plist";
  v40[1] = @"/var/mobile/Library/Caches/gmmd";
  v34 = [v3 cacheDirectory];
  v33 = [v34 stringByAppendingPathComponent:@"Maps/SuspendLocation.plist"];
  v40[2] = v33;
  v32 = [v3 mapsDirectory];
  v31 = [v32 stringByAppendingPathComponent:@"Route.plist"];
  v40[3] = v31;
  v30 = [v3 mapsDirectory];
  v29 = [v30 stringByAppendingPathComponent:@"Directions.plist"];
  v40[4] = v29;
  v28 = [v3 mapsDirectory];
  v27 = [v28 stringByAppendingPathComponent:@"Directions.mapsdata"];
  v40[5] = v27;
  v26 = [v3 mapsDirectory];
  v25 = [v26 stringByAppendingPathComponent:@"History.plist"];
  v40[6] = v25;
  v24 = [v3 mapsDirectory];
  v23 = [v24 stringByAppendingPathComponent:@"History.mapsdata"];
  v40[7] = v23;
  v22 = [v3 mapsDirectory];
  v21 = [v22 stringByAppendingPathComponent:@"History.synced"];
  v40[8] = v21;
  v19 = [v3 mapsDirectory];
  v4 = [v19 stringByAppendingPathComponent:@"FailedSearches.mapsdata"];
  v40[9] = v4;
  v5 = [v3 bookmarksSettingsPath];
  v40[10] = v5;
  v6 = [v3 mapsDirectory];
  v7 = [v6 stringByAppendingPathComponent:@"navd.cache"];
  v40[11] = v7;
  v8 = [v3 mapsDirectory];
  v9 = [v8 stringByAppendingPathComponent:@"navd.cache-wal"];
  v40[12] = v9;
  v10 = [v3 mapsDirectory];
  v11 = [v10 stringByAppendingPathComponent:@"navd.cache-shm"];
  v40[13] = v11;
  v20 = [NSArray arrayWithObjects:v40 count:14];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v12 = v20;
  v13 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v36;
    v16 = 1;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v36 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v16 &= [(MapsLegacyDataMigrator *)self _removeItemAtPathIfExists:*(*(&v35 + 1) + 8 * i)];
      }

      v14 = [v12 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v14);
  }

  else
  {
    LOBYTE(v16) = 1;
  }

  return v16;
}

- (BOOL)_migrateOrphanedWatchResources
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 firstObject];
  v4 = [v3 stringByAppendingPathComponent:@"DeviceRegistry"];

  if (v4)
  {
    v5 = +[NSFileManager defaultManager];
    v59 = 0;
    v6 = [v5 contentsOfDirectoryAtPath:v4 error:&v59];
    v7 = v59;

    if (v6)
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v8 = v6;
      v9 = [v8 countByEnumeratingWithState:&v55 objects:v61 count:16];
      if (v9)
      {
        v10 = v9;
        v40 = v7;
        v41 = v6;
        v11 = *v56;
        v43 = v8;
        v44 = v4;
        v42 = *v56;
        do
        {
          v12 = 0;
          v45 = v10;
          do
          {
            if (*v56 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v46 = v12;
            v13 = [v4 stringByAppendingPathComponent:{*(*(&v55 + 1) + 8 * v12), v40, v41}];
            v54 = 0;
            v14 = +[NSFileManager defaultManager];
            v47 = v13;
            v15 = [v14 fileExistsAtPath:v13 isDirectory:&v54];
            v16 = v54;

            if (v15 && (v16 & 1) != 0)
            {
              v17 = [v47 stringByAppendingPathComponent:@"GeoServices"];
              v18 = +[NSFileManager defaultManager];
              v19 = [v18 fileExistsAtPath:v17 isDirectory:&v54];
              v20 = v54;

              if (v19 && (v20 & 1) != 0)
              {
                v52 = 0u;
                v53 = 0u;
                v50 = 0u;
                v51 = 0u;
                v21 = +[NSFileManager defaultManager];
                v22 = [v21 contentsOfDirectoryAtPath:v17 error:0];

                v23 = [v22 countByEnumeratingWithState:&v50 objects:v60 count:16];
                if (v23)
                {
                  v24 = v23;
                  v25 = *v51;
                  do
                  {
                    for (i = 0; i != v24; i = i + 1)
                    {
                      if (*v51 != v25)
                      {
                        objc_enumerationMutation(v22);
                      }

                      v27 = *(*(&v50 + 1) + 8 * i);
                      if ([v27 hasPrefix:@"hw_"])
                      {
                        v28 = [v17 stringByAppendingPathComponent:v27];
                        v29 = +[NSFileManager defaultManager];
                        v49 = 0;
                        v30 = [v29 removeItemAtPath:v28 error:&v49];
                        v31 = v49;

                        if ((v30 & 1) == 0)
                        {
                          v32 = GEOFindOrCreateLog();
                          if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                          {
                            *buf = 138412290;
                            v63 = v31;
                            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "Failed to remove orphaned Watch directory: %@", buf, 0xCu);
                          }
                        }
                      }
                    }

                    v24 = [v22 countByEnumeratingWithState:&v50 objects:v60 count:16];
                  }

                  while (v24);
                }

                v33 = +[NSFileManager defaultManager];
                v34 = [v33 contentsOfDirectoryAtPath:v17 error:0];

                v4 = v44;
                v11 = v42;
                if (v34 && ![v34 count])
                {
                  v35 = +[NSFileManager defaultManager];
                  v48 = 0;
                  v36 = [v35 removeItemAtPath:v17 error:&v48];
                  v37 = v48;

                  if ((v36 & 1) == 0)
                  {
                    v38 = GEOFindOrCreateLog();
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v63 = v37;
                      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_INFO, "Failed to remove orphaned Watch directory: %@", buf, 0xCu);
                    }
                  }
                }

                v8 = v43;
              }

              v10 = v45;
            }

            v12 = v46 + 1;
          }

          while ((v46 + 1) != v10);
          v10 = [v8 countByEnumeratingWithState:&v55 objects:v61 count:16];
        }

        while (v10);
        v7 = v40;
        v6 = v41;
      }
    }

    else
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v63 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Couldn't get contents of DeviceRegistry directory: %@", buf, 0xCu);
      }
    }
  }

  return 1;
}

- (BOOL)_migrateDefaults
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [&off_1016ED9A0 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(&off_1016ED9A0);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        v7 = +[NSUserDefaults standardUserDefaults];
        v8 = [v7 objectForKey:v6];

        if (![v6 isEqualToString:@"DistanceUnits"] || (objc_msgSend(v8, "isEqualToString:", @"Imperial") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"Metric"))
        {
          v9 = +[NSUserDefaults __maps_groupUserDefaults];
          v10 = [v9 objectForKey:v6];

          if (!v10)
          {
            v11 = +[NSUserDefaults __maps_groupUserDefaults];
            [v11 setObject:v8 forKey:v6];
          }
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [&off_1016ED9A0 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  v12 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Finished migrating shared defaults", v14, 2u);
  }

  return 1;
}

- (BOOL)_removeItemAtPathIfExists:(id)a3
{
  v3 = a3;
  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v12 = 0;
    v7 = [v6 removeItemAtPath:v3 error:&v12];
    v8 = v12;

    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v10 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to remove file: %@", buf, 0xCu);
      }

      v9 = 0;
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    v9 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "File %@ does not exist and will not be removed", buf, 0xCu);
    }
  }

  return v9;
}

- (BOOL)_moveItemAtPathIfExists:(id)a3 toPathCreatingIntermediateDirectories:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:v5];

  if (v8)
  {
    v9 = +[NSFileManager defaultManager];
    v10 = [v9 fileExistsAtPath:v6];

    if (v10)
    {
      v11 = GEOFindOrCreateLog();
      LOBYTE(v12) = 1;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v25 = v5;
        v26 = 2112;
        v27 = v6;
        v13 = "File %@ will not be moved over because the file exists already at destination path. %@";
LABEL_7:
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, v13, buf, 0x16u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v14 = +[NSFileManager defaultManager];
    v15 = [v6 stringByDeletingLastPathComponent];
    [v14 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:0];

    v16 = +[NSFileManager defaultManager];
    v23 = 0;
    v12 = [v16 copyItemAtPath:v5 toPath:v6 error:&v23];
    v11 = v23;

    v17 = GEOFindOrCreateLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v12)
    {
      if (v18)
      {
        *buf = 138412546;
        v25 = v5;
        v26 = 2112;
        v27 = v6;
        v19 = "Migrated item at path %@ to path %@";
        v20 = v17;
        v21 = 22;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, v19, buf, v21);
      }
    }

    else if (v18)
    {
      *buf = 138412802;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      v28 = 2112;
      v29 = v11;
      v19 = "There was an error migrating item at path %@ into path %@: %@";
      v20 = v17;
      v21 = 32;
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v11 = GEOFindOrCreateLog();
  LOBYTE(v12) = 1;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v25 = v5;
    v26 = 2112;
    v27 = v6;
    v13 = "File %@ will not be moved over because the source file does not exist (would have been moved to %@)";
    goto LABEL_7;
  }

LABEL_15:

  return v12;
}

- (BOOL)_maps_isFileNotFoundError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqual:NSPOSIXErrorDomain];

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v8 = [v3 domain];
    v9 = [v8 isEqual:NSCocoaErrorDomain];

    if (!v9)
    {
      v7 = 0;
      goto LABEL_8;
    }

    if ([v3 code] == 4)
    {
      v7 = 1;
      goto LABEL_8;
    }

    v6 = 260;
  }

  v7 = [v3 code] == v6;
LABEL_8:

  return v7;
}

- (BOOL)_migratePathsIntoContainer
{
  v2 = 1;
  v3 = [MSPMapsPaths pathsAtLocation:1];
  v31 = +[MSPMapsPaths mapsApplicationContainerPaths];
  v4 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  v5 = +[NSFileManager defaultManager];
  v38 = 0;
  v32 = v3;
  v6 = [v3 mapsDirectory];
  v7 = [v5 fileExistsAtPath:v6 isDirectory:&v38];
  v8 = v38;

  if (v7 && (v8 & 1) != 0)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = +[NSFileManager defaultManager];
    v10 = [v3 mapsDirectory];
    v11 = [v9 contentsOfDirectoryAtPath:v10 error:0];

    v12 = [v11 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v12)
    {
      v13 = v12;
      v29 = v5;
      v14 = *v35;
      v15 = 1;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          v18 = [v32 mapsDirectory];
          v19 = [v18 stringByAppendingPathComponent:v17];
          v20 = [v31 mapsDirectory];
          v21 = [v20 stringByAppendingPathComponent:v17];
          v22 = [(MapsLegacyDataMigrator *)self _moveItemAtPathIfExists:v19 toPathCreatingIntermediateDirectories:v21];

          v15 &= v22;
        }

        v13 = [v11 countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v13);

      v5 = v29;
      v4 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
      if (!v15)
      {
        v2 = 0;
        goto LABEL_20;
      }
    }

    else
    {
    }

    v23 = [v4[423] defaultManager];
    v24 = [v32 mapsDirectory];
    v33 = 0;
    v25 = [v23 removeItemAtPath:v24 error:&v33];
    v26 = v33;

    if ((v25 & 1) != 0 || [(MapsLegacyDataMigrator *)self _maps_isFileNotFoundError:v26])
    {
      v2 = 1;
    }

    else
    {
      v27 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = v26;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "There was an error removing the old Maps directory: %@", buf, 0xCu);
      }

      v2 = 0;
    }
  }

LABEL_20:

  return v2;
}

@end