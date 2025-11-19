@interface MTLibraryMigrator
+ (BOOL)_hasMTImageStoreContent;
+ (BOOL)_needsImageStoreMigration;
+ (BOOL)globalDownloadPolicyRequiresMigration;
+ (BOOL)hasBeenInactiveForTimeInterval:(double)a3;
+ (BOOL)isDefaultSettingsForPlaylist:(id)a3 title:(id)a4 episodesToShow:(int64_t)a5 showPlayedEpisodes:(BOOL)a6 includeAllPodcasts:(BOOL)a7;
+ (BOOL)moveSQLiteFilesFromDocumentsToSharedContainer;
+ (BOOL)needToMigrateDataToSharedContainer;
+ (BOOL)needsMigration;
+ (BOOL)needsToComputeLastLaunch;
+ (BOOL)podcastMigrationForVersion8to9:(id)a3;
+ (BOOL)runCoreDataMigration;
+ (BOOL)runDataMigration;
+ (BOOL)runImageFormatMigration;
+ (BOOL)runImageStoreMigration;
+ (BOOL)runImageStorePathMigration;
+ (BOOL)runMigrationForPodcast:(id)a3 version:(int64_t)a4;
+ (id)_fetchRequestForMostRecentlyPlayedEpisode;
+ (id)_mostRecentPlayTimeFromDatabase;
+ (id)legacyLibraryPath;
+ (int)episodesToKeepDefaultValue;
+ (int64_t)episodesToKeepToEpisodeLimit:(int)a3;
+ (void)_migrateToImageProvider;
+ (void)_removeImageStoreContent;
+ (void)_updateGlobalPolicyLimitIfMoreRestrictiveInDefaults:(id)a3;
+ (void)allEpisodesMigrationForVersion40to41In:(id)a3;
+ (void)allEpisodesMigrationForVersion43to44In:(id)a3;
+ (void)allEpisodesMigrationForVersion45to46In:(id)a3;
+ (void)allEpisodesMigrationForVersion46to47In:(id)a3;
+ (void)allEpisodesMigrationForVersion47to48In:(id)a3;
+ (void)allEpisodesMigrationForVersion51to52In:(id)a3;
+ (void)allEpisodesMigrationForVersion53to54In:(id)a3;
+ (void)allEpisodesMigrationForVersion54to55In:(id)a3;
+ (void)allEpisodesMigrationForVersion59to60In:(id)a3;
+ (void)allEpisodesMigrationForVersion65to66In:(id)a3;
+ (void)allEpisodesMigrationForVersion68to69In:(id)a3;
+ (void)deleteDuplicateVideoEpisodesForRdar59691904;
+ (void)deleteOrUpdatePlaylist:(id)a3 ifIsDefault:(BOOL)a4;
+ (void)episodeMigrationForVersion0to1:(id)a3;
+ (void)episodeMigrationForVersion13to14:(id)a3;
+ (void)episodeMigrationForVersion16to17:(id)a3;
+ (void)episodeMigrationForVersion17to18:(id)a3;
+ (void)episodeMigrationForVersion21to22:(id)a3;
+ (void)episodeMigrationForVersion23to24:(id)a3;
+ (void)episodeMigrationForVersion29to30:(id)a3;
+ (void)episodeMigrationForVersion6to7:(id)a3;
+ (void)fixupDataMigrationVersion;
+ (void)migrateDatabaseToSharedContainerIfNeeded;
+ (void)migrateDefaultPlaylistsForVersion18to19;
+ (void)migratePlaylistDefaultsForVersion66to67;
+ (void)migratePlaylistDefaultsForVersion7to8;
+ (void)migratePlaylistsForVersion:(int64_t)a3;
+ (void)migrateSerpentId;
+ (void)migrateSettingDefaultsForVersion10to11;
+ (void)migrateSettingDefaultsForVersion42to43;
+ (void)migrateSettingDefaultsForVersion44to45;
+ (void)migrateSettingDefaultsForVersion48to49;
+ (void)migrateSettingDefaultsForVersion58to59;
+ (void)migrateSettingDefaultsForVersion60to61;
+ (void)migrateSettingDefaultsForVersion6to7;
+ (void)migrateSettingDefaultsForVersion9to10;
+ (void)migrateSettingsForVersion:(unint64_t)a3;
+ (void)moveEpisodeAssetsToSharedContainer;
+ (void)podcastMigrationForVersion11to12:(id)a3;
+ (void)podcastMigrationForVersion14to15:(id)a3;
+ (void)podcastMigrationForVersion19to20:(id)a3;
+ (void)podcastMigrationForVersion27to28:(id)a3;
+ (void)podcastMigrationForVersion28to29:(id)a3;
+ (void)podcastMigrationForVersion34to35:(id)a3;
+ (void)podcastMigrationForVersion36to37:(id)a3;
+ (void)podcastMigrationForVersion38to39:(id)a3;
+ (void)podcastMigrationForVersion41to42:(id)a3;
+ (void)podcastMigrationForVersion42to43:(id)a3;
+ (void)podcastMigrationForVersion44to45:(id)a3;
+ (void)podcastMigrationForVersion49to50:(id)a3;
+ (void)podcastMigrationForVersion50to51:(id)a3;
+ (void)podcastMigrationForVersion55to56:(id)a3;
+ (void)podcastMigrationForVersion56to57:(id)a3;
+ (void)podcastMigrationForVersion57to58:(id)a3;
+ (void)podcastMigrationForVersion58to59:(id)a3;
+ (void)podcastMigrationForVersion59to60:(id)a3;
+ (void)podcastMigrationForVersion62to63:(id)a3;
+ (void)podcastMigrationForVersion66to67:(id)a3;
+ (void)podcastMigrationForVersion6to7:(id)a3;
+ (void)podcastMigrationForVersion9to10:(id)a3;
+ (void)prunePersistentHistory;
+ (void)recalculateAllPlaylists;
+ (void)removeAllEpisodesFromMediaLibrary;
+ (void)rollbackMigrationV40IfNeededInContext:(id)a3;
+ (void)runMigrationOnAllEpisodesForVersion:(int64_t)a3;
+ (void)runMigrationOnEpisodesByPodcastForVersion:(int64_t)a3;
+ (void)setLastLaunchFromDatabase;
+ (void)touchAllMigrationVersions;
+ (void)touchCoreDataMigrationVersion;
+ (void)updateGlobalDownloadPolicyIfNecessary;
@end

@implementation MTLibraryMigrator

+ (void)migrateDatabaseToSharedContainerIfNeeded
{
  if ((+[MTDB quickCheckForNeedsContainerMigration]& 1) == 0)
  {
    if ([a1 needToMigrateDataToSharedContainer])
    {
      [a1 moveSQLiteFilesFromDocumentsToSharedContainer];
    }

    if (([a1 needToMigrateDataToSharedContainer] & 1) == 0)
    {

      [MTDB setQuickCheckForNeedsContainerMigration:1];
    }
  }
}

+ (BOOL)needsMigration
{
  if (+[MTLibraryMigrationUtil isNewInstall])
  {
    [IMMetrics recordUserAction:@"is_new_install"];
    [a1 touchAllMigrationVersions];
    return 0;
  }

  [a1 fixupDataMigrationVersion];
  if (+[MTLibraryMigrationUtil needsCoreDataMigration](MTLibraryMigrationUtil, "needsCoreDataMigration") & 1) != 0 || (+[MTLibraryMigrationUtil needsDataMigration](MTLibraryMigrationUtil, "needsDataMigration") & 1) != 0 || (+[MTLibraryMigrationUtil needsImageStoreMigration](MTLibraryMigrationUtil, "needsImageStoreMigration") & 1) != 0 || (+[MTDB isCorrupt](MTDB, "isCorrupt") & 1) != 0 || (+[MTDB needsSerpentIdEpisodeMigration](MTDB, "needsSerpentIdEpisodeMigration") & 1) != 0 || (+[MTDB needsCacheBustForFreeAndPaidUrlStorage](MTDB, "needsCacheBustForFreeAndPaidUrlStorage") & 1) != 0 || (+[MTDB needsMigrationToDeltaFeedUpdates](MTDB, "needsMigrationToDeltaFeedUpdates") & 1) != 0 || ([a1 globalDownloadPolicyRequiresMigration] & 1) != 0 || +[MTDataMigrator requiresMigration](MTDataMigrator, "requiresMigration") || (objc_msgSend(a1, "_needsImageStoreMigration"))
  {
    return 1;
  }

  if ((+[PFClientUtil supportsImageStore]& 1) != 0)
  {
    return 0;
  }

  return [a1 _hasMTImageStoreContent];
}

+ (void)fixupDataMigrationVersion
{
  if (!+[MTDB libraryDataVersion])
  {
    v2 = +[MTConstants managedObjectModelArchiveURL];
    v3 = [v2 URLByAppendingPathComponent:@"/MTLibrary 19.mom"];

    v4 = [[NSManagedObjectModel alloc] initWithContentsOfURL:v3];
    if ([MTLibraryMigrationUtil isMomCompatible:v4])
    {
      v5 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Migration] Setting library to data version 6 which matches database version 19", v6, 2u);
      }

      [MTDB setLibraryDataVersion:6];
    }
  }
}

+ (BOOL)globalDownloadPolicyRequiresMigration
{
  if ([a1 needsToComputeLastLaunch])
  {
    return 1;
  }

  [a1 inactiveIntervalForDownloadPolicyUpgrade];

  return [a1 hasBeenInactiveForTimeInterval:?];
}

+ (BOOL)needsToComputeLastLaunch
{
  v2 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 lastAppUseDate];

  v4 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Last application use: %@", &v6, 0xCu);
  }

  return v3 == 0;
}

+ (BOOL)_needsImageStoreMigration
{
  v2 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 BOOLForKey:kMTImageProviderMigrationHasOccurred];

  return v3 ^ 1;
}

+ (BOOL)_hasMTImageStoreContent
{
  v2 = +[MTImageStoreConstants defaultImageStoreURL];
  v3 = +[NSFileManager defaultManager];
  v8 = 0;
  v4 = [v2 path];
  v5 = [v3 fileExistsAtPath:v4 isDirectory:&v8];
  v6 = v8;

  return v5 & v6;
}

+ (BOOL)runDataMigration
{
  os_unfair_lock_lock(&stru_100583DA8);
  v3 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Acquired lock.", v25, 2u);
  }

  v4 = +[MTLibraryMigrationUtil needsDataMigration];
  if (v4)
  {
    v5 = +[MTDB libraryDataVersion];
    v6 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 134217984;
      *&v25[4] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Needs migration with dataVersion %ld.", v25, 0xCu);
    }

    v7 = +[MTLibrary sharedInstance];
    [v7 deleteOrphanedEpisodes];

    v8 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Deleted orphaned episodes.", v25, 2u);
    }

    [a1 migrateSettingsForVersion:v5];
    v9 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Finished migration for settings.", v25, 2u);
    }

    [a1 migratePlaylistsForVersion:v5];
    v10 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Finished migration for playlists.", v25, 2u);
    }

    [a1 runMigrationOnEpisodesByPodcastForVersion:v5];
    v11 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Finished migration for episodes by podcast.", v25, 2u);
    }

    [a1 runMigrationOnAllEpisodesForVersion:v5];
    v12 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Finished migration for ALL episodes.", v25, 2u);
    }

    switch(v5)
    {
      case 32:
        if (!+[PFClientUtil isRunningOnInternalOS])
        {
          goto LABEL_28;
        }

        [a1 deleteDuplicateVideoEpisodesForRdar59691904];
        v13 = _MTLogCategoryDatabase();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          break;
        }

        *v25 = 0;
        v14 = "[Migration] (Data) Deleted duplicate video episodes.";
        goto LABEL_26;
      case 15:
        v15 = +[NSUserDefaults standardUserDefaults];
        [v15 setObject:0 forKey:@"MTPodcastManifestUuid"];

        v13 = _MTLogCategoryDatabase();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          v14 = "[Migration] (Data) Set kMTPodcastManifestUuid to nil in defaults.";
          goto LABEL_26;
        }

        break;
      case 3:
        [a1 recalculateAllPlaylists];
        v13 = _MTLogCategoryDatabase();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *v25 = 0;
          v14 = "[Migration] (Data) Finished recalculation for ALL playlists.";
LABEL_26:
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v14, v25, 2u);
        }

        break;
      default:
        if (v5 >= 34)
        {
          if (v5 > 0x3D)
          {
            if (v5 > 0x45)
            {
              goto LABEL_36;
            }

            goto LABEL_35;
          }

LABEL_34:
          [a1 prunePersistentHistory];
LABEL_35:
          +[MTFeedManager resetCache];
LABEL_36:
          [a1 touchLibraryMigrationVersion];
          v20 = _MTLogCategoryDatabase();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = +[MTDB libraryDataVersion];
            *v25 = 134218240;
            *&v25[4] = v5;
            v26 = 2048;
            v27 = v21;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Set migration version from %ld to %ld", v25, 0x16u);
          }

          goto LABEL_39;
        }

LABEL_28:
        if (+[PFClientUtil isRunningOnHomepod])
        {
          v16 = +[MTLibrary sharedInstance];
          v17 = +[NSPredicate truePredicate];
          [v16 deleteEpisodes:v17];

          v18 = _MTLogCategoryDatabase();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) (HomePod) Deleted episodes.", v25, 2u);
          }

          +[MTBaseFeedManager purgeSubscriptionMetadata];
          v19 = _MTLogCategoryDatabase();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *v25 = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) (HomePod) Purged subscription metadata.", v25, 2u);
          }
        }

        goto LABEL_34;
    }

    goto LABEL_28;
  }

LABEL_39:
  if (+[MTDB needsSerpentIdEpisodeMigration])
  {
    [a1 migrateSerpentId];
    v4 = 1;
  }

  if (+[MTDB needsCacheBustForFreeAndPaidUrlStorage])
  {
    +[MTFeedManager resetCache];
    v4 = 1;
  }

  +[MTDB setStoreBothFreeAndPaidUrlsPreviousBootup];
  if (+[MTDB needsMigrationToDeltaFeedUpdates])
  {
    +[MTFeedManager migrateToDeltaFeedSystem];
    +[MTDB setMigrationToDeltaFeedUpdatesComplete];
  }

  if ([a1 needsToComputeLastLaunch])
  {
    [a1 setLastLaunchFromDatabase];
  }

  [a1 updateGlobalDownloadPolicyIfNecessary];
  if ([a1 _needsImageStoreMigration])
  {
    [a1 _migrateToImageProvider];
  }

  else if ([a1 _hasMTImageStoreContent])
  {
    v22 = _MTLogCategoryArtworkDownload();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "ImageProvider migration is complete, but images remain in MTImageStore. Attempting deletion...", v25, 2u);
    }

    [a1 _removeImageStoreContent];
  }

  +[MTDataMigrator migrate];
  os_unfair_lock_unlock(&stru_100583DA8);
  v23 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 67109120;
    *&v25[4] = v4;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Finished. Did perform migration: %x", v25, 8u);
  }

  return v4;
}

+ (void)_migrateToImageProvider
{
  v3 = _MTLogCategoryArtworkDownload();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Beginning artwork migration from MTImageStore to ImageProvider", buf, 2u);
  }

  v4 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v5 = +[PUIObjCArtworkProvider shared];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014B0EC;
  v7[3] = &unk_1004DDCA0;
  v8 = v4;
  v9 = a1;
  v6 = v4;
  [v5 migrateLibraryArtworkFromImageStoreWithCompletionHandler:v7];
}

+ (void)_removeImageStoreContent
{
  if (!+[PFClientUtil supportsImageStore])
  {
    v2 = +[MTImageStoreConstants defaultImageStoreURL];
    v3 = +[NSFileManager defaultManager];
    v12 = 0;
    v4 = [v3 removeItemAtURL:v2 error:&v12];
    v5 = v12;

    v6 = _MTLogCategoryArtworkDownload();
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v8 = "Successfully removed image store directory";
        v9 = v7;
        v10 = OS_LOG_TYPE_INFO;
        v11 = 2;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v9, v10, v8, buf, v11);
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v5;
      v8 = "Failed to remove image store directory: %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v2 = _MTLogCategoryArtworkDownload();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Skipping image store removal, client supports image store", buf, 2u);
  }

LABEL_11:
}

+ (void)migratePlaylistsForVersion:(int64_t)a3
{
  if ((a3 - 19) >= 0x31)
  {
    if ((a3 - 7) >= 0xC)
    {
      if (a3 > 6)
      {
        return;
      }

      [a1 migratePlaylistDefaultsForVersion7to8];
    }

    [a1 migrateDefaultPlaylistsForVersion18to19];
  }

  [a1 migratePlaylistDefaultsForVersion66to67];
}

+ (void)migratePlaylistDefaultsForVersion66to67
{
  v2 = +[MTDB sharedInstance];
  v3 = [v2 mainOrPrivateContext];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10014B4AC;
  v5[3] = &unk_1004D8358;
  v6 = v3;
  v4 = v3;
  [v4 performBlockAndWaitWithSave:v5];
}

+ (void)migratePlaylistDefaultsForVersion7to8
{
  v2 = +[MTDB sharedInstance];
  v3 = [v2 mainOrPrivateContext];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10014B6A4;
  v5[3] = &unk_1004D8358;
  v6 = v3;
  v4 = v3;
  [v4 performBlockAndWaitWithSave:v5];
}

+ (void)migrateDefaultPlaylistsForVersion18to19
{
  v3 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Migrating playlists from version 18 to 19.", buf, 2u);
  }

  v4 = +[MTDB sharedInstance];
  v5 = [v4 mainOrPrivateContext];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014B8E8;
  v7[3] = &unk_1004D9720;
  v8 = v5;
  v9 = a1;
  v6 = v5;
  [v6 performBlockAndWaitWithSave:v7];
}

+ (void)deleteOrUpdatePlaylist:(id)a3 ifIsDefault:(BOOL)a4
{
  if (a4)
  {
    v4 = a3;
    v5 = +[MTLibrary sharedInstance];
    [v5 deletePlaylist:v4];
  }

  else
  {
    v5 = a3;
    [v5 setIsBuiltIn:0];
  }
}

+ (BOOL)isDefaultSettingsForPlaylist:(id)a3 title:(id)a4 episodesToShow:(int64_t)a5 showPlayedEpisodes:(BOOL)a6 includeAllPodcasts:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v11 = a3;
  v12 = a4;
  v13 = [v11 title];
  v14 = [v13 isEqualToString:v12];

  if (v14)
  {
    v15 = [v11 defaultSettings];
    v16 = [v15 episodesToShow] == a5 && objc_msgSend(v15, "showPlayedEpisodes") == v8 && objc_msgSend(v11, "includesAllPodcasts") == v7 && objc_msgSend(v15, "mediaType") == 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (void)migrateSettingsForVersion:(unint64_t)a3
{
  if (a3 <= 30)
  {
    if (a3 > 10)
    {
LABEL_15:
      [a1 migrateSettingDefaultsForVersion30to31];
      goto LABEL_16;
    }

    if (a3 >= 7)
    {
      if (a3 - 7 >= 3)
      {
        if (a3 != 10)
        {
          return;
        }

        goto LABEL_14;
      }
    }

    else
    {
      [a1 migrateSettingDefaultsForVersion6to7];
    }

    [a1 migrateSettingDefaultsForVersion9to10];
LABEL_14:
    [a1 migrateSettingDefaultsForVersion10to11];
    goto LABEL_15;
  }

  if (a3 > 0x3C)
  {
    goto LABEL_9;
  }

  if (((1 << a3) & 0x7FE000000000000) != 0)
  {
LABEL_19:
    [a1 migrateSettingDefaultsForVersion58to59];
    goto LABEL_20;
  }

  if (((1 << a3) & 0x1E00000000000) != 0)
  {
LABEL_18:
    [a1 migrateSettingDefaultsForVersion48to49];
    goto LABEL_19;
  }

  if (((1 << a3) & 0x1800000000000000) == 0)
  {
LABEL_9:
    if (a3 - 31 >= 0xC)
    {
      if (a3 - 43 >= 2)
      {
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    [a1 migrateSettingDefaultsForVersion42to43];
LABEL_17:
    [a1 migrateSettingDefaultsForVersion44to45];
    goto LABEL_18;
  }

LABEL_20:

  [a1 migrateSettingDefaultsForVersion60to61];
}

+ (void)migrateSettingDefaultsForVersion6to7
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 floatForKey:@"MTAutoDownload"];
  v5 = v4;

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 setBool:(v5 - 1) < 2 forKey:@"MTAutoDownloadDefaultKey"];

  v7 = [a1 episodesToKeepToEpisodeLimit:{objc_msgSend(a1, "episodesToKeepDefaultValue")}];
  v8 = +[NSUserDefaults standardUserDefaults];
  [v8 setInteger:v7 forKey:kMTPodcastEpisodeLimitDefaultKey];
}

+ (void)migrateSettingDefaultsForVersion9to10
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"MTCellularDownload"];

  if (v3)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 setBool:0 forKey:kMTWiFiDownloadOnly];
  }
}

+ (void)migrateSettingDefaultsForVersion10to11
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v9 = @"MTAutoDownloadDefaultKey";
  v10 = &__kCFBooleanTrue;
  v3 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v2 registerDefaults:v3];

  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"MTAutoDownloadDefaultKey"];

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = v6;
  v8 = 0.0;
  if (v5)
  {
    *&v8 = 3.0;
  }

  [v6 setFloat:kMTPodcastAutoDownloadStateDefaultKey forKey:v8];
}

+ (void)migrateSettingDefaultsForVersion42to43
{
  v2 = +[NSUserDefaults _applePodcastsFoundationSettingsUserDefaults];
  v3 = kMTPodcastAutoDownloadStateDefaultKey;
  v4 = [v2 integerForKey:kMTPodcastAutoDownloadStateDefaultKey];

  if (v4 == 1)
  {
    v6 = +[NSUserDefaults _applePodcastsFoundationSettingsUserDefaults];
    LODWORD(v5) = 3.0;
    [v6 setFloat:v3 forKey:v5];
  }
}

+ (void)migrateSettingDefaultsForVersion44to45
{
  v2 = +[NSUserDefaults _applePodcastsFoundationSettingsUserDefaults];
  v3 = kMTPodcastAutoDownloadStateDefaultKey;
  v4 = [v2 integerForKey:kMTPodcastAutoDownloadStateDefaultKey];

  if (v4 == 0x7FFFFFFF)
  {
    v6 = +[NSUserDefaults _applePodcastsFoundationSettingsUserDefaults];
    LODWORD(v5) = 3.0;
    [v6 setFloat:v3 forKey:v5];
  }
}

+ (void)migrateSettingDefaultsForVersion48to49
{
  v2 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Migrating setting defaults from version 48 to 49.", buf, 2u);
  }

  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v4 = +[NSUserDefaults showListShowsAllShowsKey];
  v5 = [v3 objectForKey:v4];

  if (!v5)
  {
    *buf = 0;
    v17 = buf;
    v18 = 0x2020000000;
    v19 = 0;
    v6 = +[MTDB sharedInstance];
    v7 = [v6 mainOrPrivateContext];

    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10014C24C;
    v13 = &unk_1004D8CC8;
    v8 = v7;
    v14 = v8;
    v15 = buf;
    [v8 performBlockAndWait:&v10];
    v9 = [NSUserDefaults _applePodcastsFoundationSharedUserDefaults:v10];
    [v9 setShowListShowsAllShows:v17[24]];

    _Block_object_dispose(buf, 8);
  }
}

+ (void)migrateSettingDefaultsForVersion58to59
{
  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  if ([v3 BOOLForKey:kMTPodcastAutoDownloadStateDefaultKey])
  {
    v2 = &off_100501738;
  }

  else
  {
    v2 = &off_100501750;
  }

  [v3 setObject:v2 forKey:kMTPodcastEpisodeLimitDefaultKey];
}

+ (void)migrateSettingDefaultsForVersion60to61
{
  v2 = +[UITraitCollection currentTraitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 removeObjectForKey:@"didPresentNowPlayingScrollingTip"];
  }
}

+ (void)runMigrationOnEpisodesByPodcastForVersion:(int64_t)a3
{
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10014C5B8;
  v8[3] = &unk_1004DDCC8;
  v9 = v6;
  v10 = a3;
  v11 = a1;
  v7 = v6;
  [v7 performBlockAndWaitWithSave:v8];
}

+ (void)episodeMigrationForVersion29to30:(id)a3
{
  v8 = a3;
  if ([v8 isBackCatalogItem] && objc_msgSend(v8, "saved"))
  {
    [v8 playhead];
    v4 = v3;
    if ([v8 isPartiallyPlayedBackCatalogItem])
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v6 = +[MTLibrary sharedInstance];
    [v6 setPlayState:v5 manually:1 forUserActionOnEpisode:v8 saveChanges:0];

    LODWORD(v7) = v4;
    [v8 setPlayhead:v7];
  }
}

+ (void)migrateSerpentId
{
  v2 = +[MTDB sharedInstance];
  v3 = [v2 mainOrPrivateContext];

  v4 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchBatchSize:200];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10014CF20;
  v10 = &unk_1004D8798;
  v11 = v3;
  v12 = v4;
  v5 = v4;
  v6 = v3;
  [v6 performBlockAndWaitWithSave:&v7];
  [MTDB setSerpentIdMigrationComplete:1, v7, v8, v9, v10];
}

+ (void)episodeMigrationForVersion0to1:(id)a3
{
  v5 = a3;
  v3 = [v5 flags];
  if (v3)
  {
    v4 = v3;
    [v5 setVideo:(v3 >> 3) & 1];
    [v5 setAudio:(v4 >> 4) & 1];
    [v5 setExternalType:(v4 >> 5) & 1];
    [v5 setFlags:0];
  }
}

+ (void)episodeMigrationForVersion6to7:(id)a3
{
  v16 = a3;
  if (![v16 playState])
  {
    v3 = +[MTLibraryLegacyUtil playStateFromHasBeenPlayed:andPlayCount:](MTLibraryLegacyUtil, "playStateFromHasBeenPlayed:andPlayCount:", [v16 hasBeenPlayed], objc_msgSend(v16, "playCount"));
    if (![v16 visible])
    {
      v3 = 0;
    }

    if (v3)
    {
      v4 = [v16 manuallyAdded];
    }

    else
    {
      v4 = ([v16 visible] ^ 1);
    }

    [v16 setPlayState:v3 manually:v4 source:8];
  }

  if ([v16 persistentID])
  {
    v5 = +[MPMediaLibrary defaultMediaLibrary];
    v6 = [v5 itemWithPersistentID:{objc_msgSend(v16, "persistentID")}];

    v7 = [MTMLMediaItem itemWithMPMediaItem:v6];
    v8 = v7;
    if (v7)
    {
      v9 = v6 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      [v16 setIsFromITunesSync:{objc_msgSend(v7, "isFromITunesSync")}];
      if ([v8 isMissingAsset])
      {
        [v16 setAssetURL:0];
      }

      v10 = [v16 persistentID];
      [v16 playhead];
      +[MTMediaLibraryUtil updateMediaLibraryItem:playhead:playState:playCount:](MTMediaLibraryUtil, "updateMediaLibraryItem:playhead:playState:playCount:", v10, [v16 playState], objc_msgSend(v16, "playCount"), v11);
    }
  }

  v12 = [v16 podcast];
  if ([v12 deletePlayedEpisodesResolvedValue])
  {
    if ([v16 manuallyAdded])
    {
      if ([v16 visible])
      {
        if (([v16 userDeleted] & 1) == 0)
        {
          v13 = [v16 assetURL];
          if (v13)
          {
            v14 = v13;
            v15 = [v16 isFromITunesSync];

            if (v15)
            {
              goto LABEL_25;
            }

            [v16 setSaved:1];
            v12 = [v16 podcast];
            [v12 setShowPlacardForSavedEpisodes:1];
          }
        }
      }
    }
  }

LABEL_25:
  [v16 setSuppressAutoDownload:1];
  [v16 pubDate];
  [v16 setImportDate:?];
}

+ (void)episodeMigrationForVersion13to14:(id)a3
{
  v3 = a3;
  v7 = [v3 podcast];
  [v3 pubDate];
  v5 = v4;
  [v7 lastTouchDate];
  [v3 setIsNew:v5 > v6];
}

+ (void)episodeMigrationForVersion16to17:(id)a3
{
  v3 = a3;
  if (![v3 playState] && objc_msgSend(v3, "playStateManuallySet") && objc_msgSend(v3, "playStateSource") == 6)
  {
    [v3 setBackCatalog:1];
  }
}

+ (void)episodeMigrationForVersion17to18:(id)a3
{
  v3 = a3;
  v4 = [v3 itemDescription];
  [v3 setItemDescriptionHasHTML:{objc_msgSend(v4, "hasHTML")}];
}

+ (void)episodeMigrationForVersion21to22:(id)a3
{
  v5 = a3;
  if ([v5 itemDescriptionHasHTML])
  {
    v3 = [v5 itemDescription];
    v4 = [v3 stringBySmartlyStrippingHTML];
    [v5 setItemDescriptionWithoutHTML:v4];
  }
}

+ (void)episodeMigrationForVersion23to24:(id)a3
{
  v12 = a3;
  +[MTUniversalPlaybackPositionDataSource uppLastSyncTime];
  v4 = v3;
  v5 = [v12 managedObjectContext];
  v6 = [v12 metadataIdentifier];
  v7 = [v5 uppMetadataForMetadataIdentifier:v6];

  if (v7)
  {
    [v12 metadataTimestamp];
    v9 = v8;
    [v7 timestamp];
    if (v9 != v10)
    {
      [v12 metadataTimestamp];
      if (v11 < v4)
      {
        [v12 updateUPPTimestamp];
      }
    }
  }
}

+ (BOOL)runMigrationForPodcast:(id)a3 version:(int64_t)a4
{
  v6 = a3;
  v7 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 uuid];
    v13 = 138543618;
    v14 = v8;
    v15 = 2048;
    v16 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Running migration on podcast with uuid %{public}@ for version %ld", &v13, 0x16u);
  }

  switch(a4)
  {
    case 0:
    case 1:
    case 2:
      if (([v6 flags] & 0x40) != 0)
      {
        v9 = 0x7FFFFFFFLL;
      }

      else
      {
        if (![v6 autoDownload])
        {
          goto LABEL_9;
        }

        v9 = 1;
      }

      [v6 setAutoDownloadType:v9];
      goto LABEL_9;
    case 3:
    case 4:
    case 5:
LABEL_9:
      [v6 setUpdateInterval:0];
      v10 = [v6 darkCount];
      if (v10 < kMTGoDarkCountLimit)
      {
        [v6 updateLastTouchDate];
      }

      goto LABEL_11;
    case 6:
LABEL_11:
      [a1 podcastMigrationForVersion6to7:v6];
      goto LABEL_12;
    case 7:
    case 8:
LABEL_12:
      if (([a1 podcastMigrationForVersion8to9:v6] & 1) == 0)
      {
        goto LABEL_14;
      }

      v11 = 1;
      goto LABEL_42;
    case 9:
LABEL_14:
      [a1 podcastMigrationForVersion9to10:v6];
      goto LABEL_15;
    case 10:
    case 11:
LABEL_15:
      [a1 podcastMigrationForVersion11to12:v6];
      goto LABEL_16;
    case 12:
    case 13:
    case 14:
LABEL_16:
      [a1 podcastMigrationForVersion14to15:v6];
      goto LABEL_17;
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
LABEL_17:
      [a1 podcastMigrationForVersion19to20:v6];
      goto LABEL_18;
    case 20:
LABEL_18:
      [a1 podcastMigrationForVersion20to21:v6];
      goto LABEL_19;
    case 21:
    case 22:
    case 23:
    case 24:
LABEL_19:
      [a1 podcastMigrationForVersion24to25:v6];
      goto LABEL_20;
    case 25:
LABEL_20:
      [a1 podcastMigrationForVersion25to26:v6];
      goto LABEL_21;
    case 26:
LABEL_21:
      [a1 podcastMigrationForVersion26to27:v6];
      goto LABEL_22;
    case 27:
LABEL_22:
      [a1 podcastMigrationForVersion27to28:v6];
      goto LABEL_23;
    case 28:
LABEL_23:
      [a1 podcastMigrationForVersion28to29:v6];
      goto LABEL_24;
    case 29:
    case 30:
    case 31:
LABEL_24:
      [a1 podcastMigrationForVersion32to33:v6];
      goto LABEL_25;
    case 32:
    case 33:
    case 34:
LABEL_25:
      [a1 podcastMigrationForVersion34to35:v6];
      goto LABEL_26;
    case 35:
LABEL_26:
      [a1 podcastMigrationForVersion35to36:v6];
      goto LABEL_27;
    case 36:
LABEL_27:
      [a1 podcastMigrationForVersion36to37:v6];
      goto LABEL_28;
    case 37:
    case 38:
LABEL_28:
      [a1 podcastMigrationForVersion38to39:v6];
      goto LABEL_29;
    case 39:
    case 40:
    case 41:
LABEL_29:
      [a1 podcastMigrationForVersion41to42:v6];
      goto LABEL_30;
    case 42:
LABEL_30:
      [a1 podcastMigrationForVersion42to43:v6];
      goto LABEL_31;
    case 43:
    case 44:
LABEL_31:
      [a1 podcastMigrationForVersion44to45:v6];
      goto LABEL_32;
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
LABEL_32:
      [a1 podcastMigrationForVersion49to50:v6];
      goto LABEL_33;
    case 50:
LABEL_33:
      [a1 podcastMigrationForVersion50to51:v6];
      goto LABEL_34;
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
LABEL_34:
      [a1 podcastMigrationForVersion55to56:v6];
      goto LABEL_35;
    case 56:
LABEL_35:
      [a1 podcastMigrationForVersion56to57:v6];
      goto LABEL_36;
    case 57:
LABEL_36:
      [a1 podcastMigrationForVersion57to58:v6];
      goto LABEL_37;
    case 58:
LABEL_37:
      [a1 podcastMigrationForVersion58to59:v6];
      goto LABEL_38;
    case 59:
LABEL_38:
      [a1 podcastMigrationForVersion59to60:v6];
      goto LABEL_39;
    case 60:
    case 61:
    case 62:
LABEL_39:
      [a1 podcastMigrationForVersion62to63:v6];
      goto LABEL_40;
    case 63:
    case 64:
    case 65:
    case 66:
LABEL_40:
      [a1 podcastMigrationForVersion66to67:v6];
      break;
    default:
      break;
  }

  v11 = 0;
LABEL_42:

  return v11;
}

+ (void)podcastMigrationForVersion66to67:(id)a3
{
  v3 = a3;
  v4 = [v3 managedObjectContext];
  v5 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
  [v5 setReturnsObjectsAsFaults:0];
  [v5 setFetchBatchSize:200];
  v6 = [v3 uuid];
  v7 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v6];
  [v5 setPredicate:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014DA34;
  v11[3] = &unk_1004D94C8;
  v12 = v4;
  v13 = v5;
  v14 = v3;
  v8 = v3;
  v9 = v5;
  v10 = v4;
  [v10 performBlockAndWaitWithSave:v11];
}

+ (void)podcastMigrationForVersion62to63:(id)a3
{
  v3 = a3;
  [v3 managedObjectContext];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10014DC30;
  v6[3] = &unk_1004D8798;
  v8 = v7 = v3;
  v4 = v8;
  v5 = v3;
  [v4 performBlockAndWait:v6];
}

+ (void)podcastMigrationForVersion59to60:(id)a3
{
  v3 = a3;
  v4 = [v3 managedObjectContext];
  [v3 calculateNewEpisodeCountIn:v4 serialShowsUseExperimentalRules:0];
}

+ (void)podcastMigrationForVersion58to59:(id)a3
{
  v7 = a3;
  v3 = +[NSUserDefaults _applePodcastsFoundationSettingsUserDefaults];
  v4 = [v3 episodeLimitForKey:kMTPodcastEpisodeLimitDefaultKey];

  if ([v7 autoDownloadEnabled])
  {
    if ([v7 episodeLimit] != v4)
    {
      goto LABEL_8;
    }

    v5 = v7;
    v6 = &_mh_execute_header + 1;
  }

  else
  {
    v5 = v7;
    if (v4 == &_mh_execute_header)
    {
      v6 = (&_mh_execute_header.magic + 1);
    }

    else
    {
      v6 = &_mh_execute_header;
    }
  }

  [v5 setEpisodeLimit:v6];
LABEL_8:
}

+ (void)podcastMigrationForVersion57to58:(id)a3
{
  v3 = a3;
  v13 = [v3 managedObjectContext];
  v4 = [v3 uuid];
  v5 = [MTEpisode predicateForDownloadedEpisodesOnPodcastUuid:v4];
  v6 = [MTEpisode predicateForVisuallyPlayed:0];
  v7 = [v5 AND:v6];

  v8 = kMTEpisodeEntityName;
  [v3 setDownloadedUnplayedEpisodesCount:{objc_msgSend(v13, "countOfObjectsInEntity:predicate:", kMTEpisodeEntityName, v7)}];
  v9 = [v3 uuid];
  v10 = [MTEpisode predicateForBookmarkedEpisodesOnPodcastUuid:v9];
  v11 = [MTEpisode predicateForVisuallyPlayed:0];
  v12 = [v10 AND:v11];

  [v3 setSavedUnplayedEpisodesCount:{objc_msgSend(v13, "countOfObjectsInEntity:predicate:", v8, v12)}];
}

+ (void)podcastMigrationForVersion56to57:(id)a3
{
  v4 = a3;
  if ([v4 hidden])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v4 isImplicitlyFollowed];
  }

  [v4 setIsHiddenOrImplicitlyFollowed:v3];
}

+ (void)podcastMigrationForVersion55to56:(id)a3
{
  v3 = a3;
  if ([v3 isSerialShowTypeInFeed] && objc_msgSend(v3, "showTypeUserSetting") == 1)
  {
    [v3 setShowTypeSetting:2];
  }
}

+ (void)podcastMigrationForVersion50to51:(id)a3
{
  v5 = a3;
  v3 = +[NSUserDefaults _applePodcastsFoundationSettingsUserDefaults];
  v4 = [v3 BOOLForKey:kMTPodcastAutoDownloadStateDefaultKey];

  [v5 setAutoDownloadEnabled:v4];
}

+ (void)podcastMigrationForVersion49to50:(id)a3
{
  v3 = a3;
  v4 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Migrating podcasts from version 49 to 50.", v20, 2u);
  }

  v5 = [v3 managedObjectContext];
  v6 = kMTEpisodeEntityName;
  v7 = [v3 uuid];
  v8 = [MTEpisode predicateForBookmarkedEpisodesOnPodcastUuid:v7];
  v9 = [v5 countOfObjectsInEntity:v6 predicate:v8];

  [v3 setSavedEpisodesCount:v9];
  v10 = [v3 uuid];
  v11 = [MTEpisode predicateForDownloadedEpisodesOnPodcastUuid:v10];
  v12 = [v5 countOfObjectsInEntity:v6 predicate:v11];

  [v3 setDownloadedEpisodesCount:v12];
  v13 = [v3 uuid];
  v14 = [MTEpisode predicateForLibraryEpisodesOnPodcastUuid:v13];
  v15 = [v5 countOfObjectsInEntity:v6 predicate:v14];

  [v3 setLibraryEpisodesCount:v15];
  v16 = [v3 uuid];
  v17 = [MTEpisode predicateForBookmarkedEpisodesOnPodcastUuid:v16];
  v18 = [MTEpisode predicateForVisuallyPlayed:0];
  v19 = [v17 AND:v18];

  [v3 setSavedUnplayedEpisodesCount:{objc_msgSend(v5, "countOfObjectsInEntity:predicate:", v6, v19)}];
}

+ (void)podcastMigrationForVersion44to45:(id)a3
{
  v5 = a3;
  v3 = +[NSUserDefaults _applePodcastsFoundationSettingsUserDefaults];
  v4 = [v3 integerForKey:kMTPodcastAutoDownloadStateDefaultKey];

  if ([v5 autoDownloadType] == 0x7FFFFFFF)
  {
    [v5 setAutoDownloadType:v4];
  }
}

+ (void)podcastMigrationForVersion42to43:(id)a3
{
  v3 = a3;
  if ([v3 autoDownloadType] == 1)
  {
    [v3 setAutoDownloadType:3];
  }
}

+ (void)podcastMigrationForVersion41to42:(id)a3
{
  v5 = a3;
  v3 = [v5 displayType];

  if (!v3)
  {
    v4 = NSPersistentStringForMTDisplayType();
    [v5 setDisplayType:v4];
  }
}

+ (void)podcastMigrationForVersion38to39:(id)a3
{
  v8 = a3;
  v3 = [v8 showTypeSetting];
  if (v3 == 3)
  {
    v5 = +[MTPodcast defaultShowType];
  }

  else
  {
    if (v3 == 2)
    {
      v6 = [v8 isSerialShowTypeInFeed] == 0;
      v7 = v8;
      if (v6)
      {
        v5 = 4;
      }

      else
      {
        v5 = 2;
      }

      goto LABEL_15;
    }

    v4 = v8;
    if (v3)
    {
      goto LABEL_16;
    }

    if ([v8 sortAscending] && (objc_msgSend(v8, "isSerialShowTypeInFeed") & 1) != 0)
    {
      v5 = 2;
    }

    else if ([v8 sortAscending])
    {
      v5 = 4;
    }

    else
    {
      v5 = 1;
    }
  }

  v7 = v8;
LABEL_15:
  [v7 setShowTypeSetting:v5];
  v4 = v8;
LABEL_16:
}

+ (void)podcastMigrationForVersion36to37:(id)a3
{
  v3 = a3;
  v4 = [v3 managedObjectContext];
  v5 = kMTEpisodeEntityName;
  v6 = [v3 uuid];
  v7 = [MTEpisode predicateForListenNowForPodcastUuid:v6];
  v8 = +[MTEpisode sortDescriptorsForListenNow];
  v9 = [v4 objectsInEntity:v5 predicate:v7 sortDescriptors:v8 returnsObjectsAsFaults:0 limit:0];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v19 + 1) + 8 * i);
        v16 = [v15 uuid];
        v17 = [v3 nextEpisodeUuid];
        v18 = [v16 isEqualToString:v17];

        if ((v18 & 1) == 0)
        {
          [v15 setListenNowEpisode:0];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }
}

+ (void)podcastMigrationForVersion34to35:(id)a3
{
  v16 = a3;
  v3 = [v16 managedObjectContext];
  v4 = [v16 uuid];
  v5 = [MTRecencyUtil upNextForPodcastUuid:v4 excludeExplicit:0 ctx:v3];

  [v5 modifiedDate];
  [v16 setModifiedDate:?];
  v6 = [v16 nextEpisodeUuid];
  v7 = [v5 episodeUuid];
  v8 = [v6 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [v16 nextEpisodeUuid];

    if (v9)
    {
      v10 = [v16 nextEpisodeUuid];
      v11 = [v3 episodeForUuid:v10];

      [v11 setListenNowEpisode:0];
    }

    v12 = [v5 episodeUuid];

    if (v12)
    {
      v13 = [v5 episodeUuid];
      v14 = [v3 episodeForUuid:v13];

      [v14 setListenNowEpisode:1];
    }

    v15 = [v5 episodeUuid];
    [v16 setNextEpisodeUuid:v15];
  }
}

+ (void)podcastMigrationForVersion28to29:(id)a3
{
  v9 = a3;
  [v9 addedDate];
  v4 = v3;
  v5 = [v9 newestEpisode];
  [v5 pubDate];
  if (v6 <= 0.0)
  {
    [v5 importDate];
    if (v8 <= 0.0)
    {
      goto LABEL_6;
    }

    [v5 importDate];
  }

  else
  {
    [v5 pubDate];
  }

  v4 = v7;
LABEL_6:
  [v9 setFeedChangedDate:v4];
}

+ (void)podcastMigrationForVersion27to28:(id)a3
{
  v3 = a3;
  if ([v3 episodeLimit] == 0xFFFFFFFFLL)
  {
    [v3 setEpisodeLimit:{+[MTPodcast episodeLimitDefaultValue](MTPodcast, "episodeLimitDefaultValue")}];
  }
}

+ (void)podcastMigrationForVersion19to20:(id)a3
{
  v3 = a3;
  v4 = [v3 managedObjectContext];
  v5 = kMTEpisodeEntityName;
  v6 = [v3 uuid];
  v7 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v6];
  v8 = kEpisodeLastDatePlayed;
  v9 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeLastDatePlayed ascending:0];
  v17 = v9;
  v10 = [NSArray arrayWithObjects:&v17 count:1];
  v16 = v8;
  v11 = [NSArray arrayWithObjects:&v16 count:1];
  LOBYTE(v15) = 0;
  v12 = [v4 objectDictionariesInEntity:v5 predicate:v7 sortDescriptors:v10 propertiesToFetch:v11 includeObjectId:0 limit:1 distinct:v15 groupBy:0];

  v13 = [v12 firstObject];
  v14 = [v13 objectForKeyedSubscript:v8];

  if (v14)
  {
    [v14 timeIntervalSinceReferenceDate];
    [v3 setLastDatePlayed:?];
  }
}

+ (void)podcastMigrationForVersion14to15:(id)a3
{
  v9 = a3;
  [v9 setNeedsArtworkUpdate:1];
  v3 = [v9 imageURL];

  if (v3)
  {
    v4 = [_TtC18PodcastsFoundation22DownloadableURLOptions alloc];
    v5 = [v9 imageURL];
    v6 = [v4 init:v5 nonAppInitiated:{objc_msgSend(v9, "requestsAreNonAppInitiated")}];

    v7 = +[MTImageDownloader sharedInstance];
    v8 = [v9 uuid];
    [v7 downloadImageForPodcastUuid:v8 urlOptions:v6 userInitiated:0 useBackgroundFetch:0 callback:0];
  }
}

+ (void)podcastMigrationForVersion11to12:(id)a3
{
  v3 = a3;
  if ([v3 autoDownloadType] == -1)
  {
    [v3 setAutoDownloadType:0x7FFFFFFFLL];
  }
}

+ (void)podcastMigrationForVersion9to10:(id)a3
{
  v3 = a3;
  [v3 setDarkCountLocal:{objc_msgSend(v3, "darkCount")}];
}

+ (void)podcastMigrationForVersion6to7:(id)a3
{
  v9 = a3;
  v4 = [v9 uuid];

  if (!v4)
  {
    v5 = +[NSString UUID];
    [v9 setUuid:v5];
  }

  v6 = [v9 keepEpisodes];
  v7 = v6;
  if (v6 == -1)
  {
    v7 = [a1 episodesToKeepDefaultValue];
  }

  if (v7 == 1)
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  [v9 setDeletePlayedEpisodes:v8];
  if (v7 != 1)
  {
    [v9 setShowPlacardForRemovePlayedEpisodes:1];
  }

  [v9 setEpisodeLimit:{objc_msgSend(a1, "episodesToKeepToEpisodeLimit:", v6)}];
  if ([v9 autoDownloadType] == 2)
  {
    [v9 setAutoDownloadType:1];
  }
}

+ (BOOL)podcastMigrationForVersion8to9:(id)a3
{
  v3 = a3;
  v4 = [v3 feedURL];
  if (![v4 length])
  {
    v5 = [v3 episodes];
    v6 = [v5 count];

    if (v6 != 1)
    {
      goto LABEL_6;
    }

    v7 = [v3 episodes];
    v8 = [v7 anyObject];

    v9 = [v8 assetURL];
    if ([v9 length])
    {
    }

    else
    {
      v12 = [v8 enclosureURL];
      v13 = [v12 length];

      if (!v13)
      {
        v14 = _MTLogCategoryDatabase();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v3 uuid];
          v18 = 138543362;
          v19 = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Will delete podcast %{public}@ during migration", &v18, 0xCu);
        }

        v16 = +[MTLibrary sharedInstance];
        v17 = [v3 uuid];
        [v16 deletePodcastWithUuid:v17];

        v10 = 1;
        goto LABEL_10;
      }
    }

    v10 = 0;
LABEL_10:

    goto LABEL_7;
  }

LABEL_6:
  v10 = 0;
LABEL_7:

  return v10;
}

+ (void)runMigrationOnAllEpisodesForVersion:(int64_t)a3
{
  v5 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Running migration on all episodes for version %ld", buf, 0xCu);
  }

  v6 = +[MTDB sharedInstance];
  v7 = [v6 mainOrPrivateContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014F064;
  v9[3] = &unk_1004DDCC8;
  v11 = a3;
  v12 = a1;
  v10 = v7;
  v8 = v7;
  [v8 performBlockAndWaitWithSave:v9];
}

+ (void)allEpisodesMigrationForVersion68to69In:(id)a3
{
  v3 = a3;
  v4 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Deleting itemDescriptionWithHTML for upgrade from version 68 to 69.", buf, 2u);
  }

  v5 = [NSBatchUpdateRequest alloc];
  v6 = +[MTEpisode entity];
  v7 = [v5 initWithEntity:v6];

  v8 = [NSPredicate predicateWithFormat:@"%@ != nil", @"itemDescriptionWithHTML"];
  [v7 setPredicate:v8];

  v25 = @"itemDescriptionWithHTML";
  v9 = +[NSNull null];
  v26 = v9;
  v10 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  [v7 setPropertiesToUpdate:v10];

  v20 = 0;
  v11 = [v3 executeRequest:v7 error:&v20];
  v12 = v20;
  v13 = _MTLogCategoryDatabase();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v15 = +[MTDB libraryDataVersion];
      *buf = 134218242;
      v22 = v15;
      v23 = 2112;
      v24 = v12;
      v16 = "[Migration] (Data) (Initial Version: %li) itemDescriptionWithHTML migration failed with error %@";
      v17 = v14;
      v18 = OS_LOG_TYPE_FAULT;
      v19 = 22;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v17, v18, v16, buf, v19);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v16 = "[Migration] (Data) Finished deleting itemDescriptionWithHTML for upgrade from version 68 to 69.";
    v17 = v14;
    v18 = OS_LOG_TYPE_DEFAULT;
    v19 = 2;
    goto LABEL_8;
  }
}

+ (void)allEpisodesMigrationForVersion65to66In:(id)a3
{
  v3 = a3;
  v4 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Migrating all episodes from version 65 to 66 (migrate all Up Next episodes to have calculated modifiedDateScore values", buf, 2u);
  }

  v5 = +[MTEpisode predicateForListenNow];
  [v3 objectsInEntity:kMTEpisodeEntityName predicate:v5 sortDescriptors:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014F50C;
  v8 = v7[3] = &unk_1004D8358;
  v6 = v8;
  [v3 performBlockAndWaitWithSave:v7];
}

+ (void)allEpisodesMigrationForVersion59to60In:(id)a3
{
  v3 = a3;
  v4 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Migrating all trailers from version 54 to 55 (migrate all episode 0's to nulls", buf, 2u);
  }

  v5 = kEpisodeEpisodeNumber;
  v6 = [NSPredicate predicateWithFormat:@"(%K = 0)", kEpisodeEpisodeNumber];
  v7 = [MTEpisode predicateForEpisodeType:1];
  v8 = [v6 AND:v7];

  v9 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:kMTEpisodeEntityName];
  [v9 setPredicate:v8];
  v20 = v5;
  v10 = +[NSNull null];
  v21 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [v9 setPropertiesToUpdate:v11];

  [v9 setResultType:2];
  v17 = 0;
  v12 = [v3 executeRequest:v9 error:&v17];

  v13 = v17;
  v14 = _MTLogCategoryDatabase();
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[Migration] (Data) Batch request to migrate all episode 0's to nulls failed with error: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v12 result];
    *buf = 138412290;
    v19 = v16;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) %@ episodes successfully migrated from episode 0 to null", buf, 0xCu);
  }
}

+ (void)allEpisodesMigrationForVersion54to55In:(id)a3
{
  v3 = a3;
  v4 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Migrating all trailers from version 54 to 55 (migrate all episode 0's to nulls", buf, 2u);
  }

  v5 = kEpisodeEpisodeNumber;
  v6 = [NSPredicate predicateWithFormat:@"(%K = NULL)", kEpisodeEpisodeNumber];
  v7 = [MTEpisode predicateForEpisodeType:1];
  v8 = [v6 AND:v7];

  v9 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:kMTEpisodeEntityName];
  [v9 setPredicate:v8];
  v19 = v5;
  v20 = &off_100501768;
  v10 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [v9 setPropertiesToUpdate:v10];

  [v9 setResultType:2];
  v16 = 0;
  v11 = [v3 executeRequest:v9 error:&v16];

  v12 = v16;
  v13 = _MTLogCategoryDatabase();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[Migration] (Data) Batch request to migrate all episode 0's to nulls failed with error: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 result];
    *buf = 138412290;
    v18 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) %@ episodes successfully migrated from episode 0 to null", buf, 0xCu);
  }
}

+ (void)allEpisodesMigrationForVersion53to54In:(id)a3
{
  v3 = a3;
  v4 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Migrating all episodes from version 53 to 54 (migrate all episode 0's to nulls", buf, 2u);
  }

  v5 = kEpisodeEpisodeNumber;
  v6 = [NSPredicate predicateWithFormat:@"(%K = 0)", kEpisodeEpisodeNumber];
  v7 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:kMTEpisodeEntityName];
  [v7 setPredicate:v6];
  v18 = v5;
  v8 = +[NSNull null];
  v19 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v7 setPropertiesToUpdate:v9];

  [v7 setResultType:2];
  v15 = 0;
  v10 = [v3 executeRequest:v7 error:&v15];

  v11 = v15;
  v12 = _MTLogCategoryDatabase();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[Migration] (Data) Batch request to migrate all episode 0's to nulls failed with error: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 result];
    *buf = 138412290;
    v17 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) %@ episodes successfully migrated from episode 0 to null", buf, 0xCu);
  }
}

+ (void)allEpisodesMigrationForVersion51to52In:(id)a3
{
  v3 = a3;
  v4 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Migrating all episodes from version 51 to 52 (migrate all season 0's to nulls", buf, 2u);
  }

  v5 = kEpisodeSeasonNumber;
  v6 = [NSPredicate predicateWithFormat:@"(%K = 0)", kEpisodeSeasonNumber];
  v7 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:kMTEpisodeEntityName];
  [v7 setPredicate:v6];
  v18 = v5;
  v8 = +[NSNull null];
  v19 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v7 setPropertiesToUpdate:v9];

  [v7 setResultType:2];
  v15 = 0;
  v10 = [v3 executeRequest:v7 error:&v15];

  v11 = v15;
  v12 = _MTLogCategoryDatabase();
  v13 = v12;
  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[Migration] (Data) Batch request to migrate all season 0's to nulls failed with error: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v10 result];
    *buf = 138412290;
    v17 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) %@ episodes successfully migrated from season 0 to null", buf, 0xCu);
  }
}

+ (void)allEpisodesMigrationForVersion47to48In:(id)a3
{
  v3 = a3;
  v4 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Migrating all episodes from version 47 to 48.", buf, 2u);
  }

  v5 = [MTEpisode predicateForDownloaded:0 excludeHidden:0];
  v6 = [MTEpisode predicateForDownloadBehavior:3];
  v7 = [NSCompoundPredicate notPredicateWithSubpredicate:v6];
  v8 = [v5 AND:v7];

  v9 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:kMTEpisodeEntityName];
  [v9 setPredicate:v8];
  v19 = kEpisodeDownloadBehavior;
  v20 = &off_100501780;
  v10 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [v9 setPropertiesToUpdate:v10];

  [v9 setResultType:2];
  v16 = 0;
  v11 = [v3 executeRequest:v9 error:&v16];

  v12 = v16;
  v13 = _MTLogCategoryDatabase();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[Migration] (Data) Batch request to migrate undownloaded episodes to MTEpisodeDownloadBehaviorAutomaticSuppressed %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v11 result];
    *buf = 138412290;
    v18 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) %@ My Episodes successfully migrated undownloaded episodes to MTEpisodeDownloadBehaviorAutomaticSuppressed", buf, 0xCu);
  }
}

+ (void)allEpisodesMigrationForVersion46to47In:(id)a3
{
  v3 = a3;
  v4 = +[MTEpisode predicateForEpisodesWhichNeedEntitlementStateUpdate];
  v5 = [v3 objectsInEntity:kMTEpisodeEntityName predicate:v4 sortDescriptors:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) updateEntitlementState];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

+ (void)allEpisodesMigrationForVersion45to46In:(id)a3
{
  v3 = a3;
  v4 = [MTEpisode predicateForSaved:1];
  v5 = [MTEpisode predicateForDownloaded:1 excludeHidden:0];
  v6 = [v4 AND:v5];

  [v3 objectsInEntity:kMTEpisodeEntityName predicate:v6 sortDescriptors:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100150458;
  v9 = v8[3] = &unk_1004D8358;
  v7 = v9;
  [v3 performBlockAndWaitWithSave:v8];
}

+ (void)allEpisodesMigrationForVersion43to44In:(id)a3
{
  v4 = a3;
  [a1 rollbackMigrationV40IfNeededInContext:v4];
  v5 = kMTEpisodeEntityName;
  v6 = [MTEpisode predicateForSaved:1];
  v7 = [MTEpisode sortDescriptorsForPubDateAscending:0];
  v8 = [v4 objectsInEntity:v5 predicate:v6 sortDescriptors:v7];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v28;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        if (v12 > 0x12B)
        {
          [*(*(&v27 + 1) + 8 * i) setIsBookmarksMigrationRecoveredEpisode:1];
        }

        else
        {
          [*(*(&v27 + 1) + 8 * i) setIsBookmarked:1];
          [v15 pubDate];
          [v15 setLastBookmarkedDate:?];
          ++v12;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v16 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = v12;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Bookmarks migration run for %lu previously saved episodes.", buf, 0xCu);
  }

  if ([v9 count] >= 0x12D)
  {
    v17 = +[NSUserDefaults standardUserDefaults];
    [v17 setBool:1 forKey:kHasSavedEpisodesOffLimitsMigratedOnDataVersion44];
  }

  v18 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:v5];
  v19 = [NSPredicate predicateWithFormat:@"%K = %@", kEpisodeUserEpisode, &__kCFBooleanTrue];
  [v18 setPredicate:v19];

  v31 = kEpisodeIsBookmarksMigrationRecoveredEpisode;
  v32 = &__kCFBooleanTrue;
  v20 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  [v18 setPropertiesToUpdate:v20];

  [v18 setResultType:2];
  v26 = 0;
  v21 = [v4 executeRequest:v18 error:&v26];
  v22 = v26;
  v23 = _MTLogCategoryDatabase();
  v24 = v23;
  if (v22)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v22;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[Migration] (Data) Batch request to migrate My Episodes to recoveredEpisodes failed %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v25 = [v21 result];
    *buf = 138412290;
    v34 = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) %@ My Episodes successfully migrated to Recovered Episodes.", buf, 0xCu);
  }
}

+ (void)rollbackMigrationV40IfNeededInContext:(id)a3
{
  v3 = a3;
  v4 = [_TtC8Podcasts26BookmarksMigrationRegistry migrationRegisteredAtVersion:40];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 uuids];
    v7 = [NSSet setWithArray:v6];
    v8 = [MTEpisode predicateForEpisodeUuids:v7];

    v9 = +[MTEpisode predicateForAllBookmarkedEpisodes];
    v10 = [MTEpisode predicateForSaved:0];
    v11 = [v5 date];
    v12 = [v11 dateByAddingTimeInterval:120.0];

    v13 = [v5 date];
    v14 = [v13 dateByAddingTimeInterval:-120.0];

    v15 = kEpisodeLastBookmarkedDate;
    v29 = v12;
    v16 = [NSPredicate predicateForDateKey:kEpisodeLastBookmarkedDate isLessThanOrEqualToDate:v12];
    v28 = v14;
    v17 = [NSPredicate predicateForDateKey:v15 isGreaterThanOrEqualToDate:v14];
    v18 = [v17 AND:v16];
    v19 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:kMTEpisodeEntityName];
    v30 = v10;
    v20 = [v10 AND:v18];
    v31 = v9;
    v21 = [v9 AND:v20];
    v22 = [v8 AND:v21];
    [v19 setPredicate:v22];

    v35 = kEpisodeIsBookmarked;
    v36 = &__kCFBooleanFalse;
    v23 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    [v19 setPropertiesToUpdate:v23];

    v32 = 0;
    v24 = [v3 executeRequest:v19 error:&v32];
    v25 = v32;
    v26 = _MTLogCategoryDatabase();
    v27 = v26;
    if (v25)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v25;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "[Migration] (Data) Batch request to roll back version 40 migration failed %@", buf, 0xCu);
      }
    }

    else
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Version 40 migration correctly rolled back.", buf, 2u);
      }

      [_TtC8Podcasts26BookmarksMigrationRegistry deleteMigrationRegistryAtVersion:40];
    }
  }

  else
  {
    v8 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) No v40 migration detected, nothing to roll back", buf, 2u);
    }
  }
}

+ (void)allEpisodesMigrationForVersion40to41In:(id)a3
{
  v3 = a3;
  v4 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
  v5 = [MTEpisode predicateForSuppressAutoDownload:1];
  [v4 setPredicate:v5];

  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchBatchSize:200];
  [v3 executeFetchRequest:v4];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v18 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v16;
    do
    {
      v11 = 0;
      v12 = v9 + 1;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v15 + 1) + 8 * v11);
        v14 = objc_autoreleasePoolPush();
        [v13 setDownloadBehavior:{1, v15}];
        if (!(v12 % [v4 fetchBatchSize]))
        {
          [v3 saveInCurrentBlock];
        }

        objc_autoreleasePoolPop(v14);
        v11 = v11 + 1;
        ++v12;
      }

      while (v8 != v11);
      v9 += v8;
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [v3 saveInCurrentBlock];
}

+ (void)deleteDuplicateVideoEpisodesForRdar59691904
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100008BEC;
  v10 = sub_10003B5CC;
  v11 = 0;
  v2 = +[MTDB sharedInstance];
  v3 = [v2 mainOrPrivateContext];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100150FD0;
  v5[3] = &unk_1004D8688;
  v5[4] = &v6;
  [v3 performBlockAndWait:v5];
  v4 = +[MTLibrary sharedInstance];
  [v4 deleteEpisodeUuids:v7[5] forced:1];

  _Block_object_dispose(&v6, 8);
}

+ (void)moveEpisodeAssetsToSharedContainer
{
  v2 = +[MTDB sharedInstance];
  v3 = [v2 mainOrPrivateContext];

  v4 = +[NSFileManager defaultManager];
  v5 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
  v6 = [MTEpisode predicateForDownloaded:1 excludeHidden:0];
  [v5 setPredicate:v6];

  v15[0] = kEpisodeUuid;
  v15[1] = kEpisodeAssetURL;
  v7 = [NSArray arrayWithObjects:v15 count:2];
  [v5 setPropertiesToFetch:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001513C4;
  v11[3] = &unk_1004D94C8;
  v12 = v3;
  v13 = v5;
  v14 = v4;
  v8 = v4;
  v9 = v5;
  v10 = v3;
  [v10 performBlockAndWaitWithSave:v11];
}

+ (void)removeAllEpisodesFromMediaLibrary
{
  [MPMediaQuery setFilteringDisabled:1];
  +[MPMediaLibrary defaultMediaLibrary];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100151A44;
  v13 = v12[3] = &unk_1004DDCF0;
  v2 = v13;
  [v2 performTransactionWithBlock:v12];
  [MPMediaQuery setFilteringDisabled:0];
  v3 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:kMTEpisodeEntityName];
  v14 = kEpisodePersistentID;
  v15 = &off_100501768;
  v4 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  [v3 setPropertiesToUpdate:v4];

  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100151A8C;
  v9[3] = &unk_1004D8798;
  v10 = v6;
  v11 = v3;
  v7 = v3;
  v8 = v6;
  [v8 performBlockAndWait:v9];
}

+ (void)prunePersistentHistory
{
  v2 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = 14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Will prune persistent history older than %d days old", buf, 8u);
  }

  v3 = [NSDate dateWithTimeIntervalSinceNow:-1209600.0];
  v4 = [NSPersistentHistoryChangeRequest deleteHistoryBeforeDate:v3];

  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100151D1C;
  v9[3] = &unk_1004DD110;
  v10 = v6;
  v11 = v4;
  v12 = 14;
  v7 = v4;
  v8 = v6;
  [v8 performBlockAndWait:v9];
}

+ (int)episodesToKeepDefaultValue
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:@"MTPodcastKeepEpisodesDefault"];

  return v3;
}

+ (int64_t)episodesToKeepToEpisodeLimit:(int)a3
{
  if ((a3 + 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_1003FEAB0[a3 + 1];
  }
}

+ (void)recalculateAllPlaylists
{
  v2 = +[MTDB sharedInstance];
  v3 = [v2 mainOrPrivateContext];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100151F64;
  v5[3] = &unk_1004D8358;
  v6 = v3;
  v4 = v3;
  [v4 performBlockAndWaitWithSave:v5];
}

+ (void)touchAllMigrationVersions
{
  [a1 touchLibraryMigrationVersion];

  [a1 touchCoreDataMigrationVersion];
}

+ (void)touchCoreDataMigrationVersion
{
  v2 = +[MTDB managedObjectModel];
  v3 = [v2 versionChecksum];

  if (v3)
  {
    [MTDB setCoreDataChecksum:v3];
  }

  else
  {
    v4 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to update Core Data checksum.", v5, 2u);
    }
  }
}

+ (BOOL)needToMigrateDataToSharedContainer
{
  v2 = [objc_opt_class() legacyLibraryPath];
  v3 = [v2 path];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  v6 = +[MTDB libraryPath];
  v7 = [v6 path];

  v8 = +[NSFileManager defaultManager];
  v9 = [v8 fileExistsAtPath:v7];

  v10 = +[IMLogger sharedLogger];
  v11 = v10;
  v12 = @"not required";
  v13 = v5 & (v9 ^ 1);
  if (v13)
  {
    v12 = @"required";
  }

  [v10 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Migration/MTLibraryMigrator.m" lineNumber:2554 format:{@"Migrate data to shared container is %@", v12}];

  return v13;
}

+ (BOOL)runCoreDataMigration
{
  os_unfair_lock_lock(&stru_100583DAC);
  v3 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Migration] (CoreData) Acquired lock.", &v13, 2u);
  }

  if (+[MTDB isCorrupt])
  {
    os_unfair_lock_unlock(&stru_100583DAC);
    v4 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[Migration] (CoreData) DB is corrupt, returning immediately.", &v13, 2u);
    }

    LOBYTE(v5) = 0;
  }

  else if ((+[MTLibraryMigrationUtil needsCoreDataMigration]& 1) != 0)
  {
    v6 = +[MTDB managedObjectModel];
    v5 = [MTLibraryMigrationUtil createPersistentStoreForModel:v6 attemptMigration:1];

    if (v5)
    {
      v7 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = +[MTDB coreDataChecksum];
        v9 = +[MTDB managedObjectModel];
        v10 = [v9 versionChecksum];
        v13 = 138412546;
        v14 = v8;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Migration] (CoreData) Successfully migrated. Set migration version from %@ to %@", &v13, 0x16u);
      }

      [a1 touchCoreDataMigrationVersion];
    }

    os_unfair_lock_unlock(&stru_100583DAC);
  }

  else
  {
    os_unfair_lock_unlock(&stru_100583DAC);
    v11 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Migration] (CoreData) DB does not need migration, returning immediately.", &v13, 2u);
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

+ (id)legacyLibraryPath
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 URLsForDirectory:9 inDomains:1];

  v4 = [v3 lastObject];
  v5 = [NSString alloc];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 initWithFormat:@"%@.sqlite", v7];

  v9 = [v4 URLByAppendingPathComponent:v8];

  return v9;
}

+ (BOOL)moveSQLiteFilesFromDocumentsToSharedContainer
{
  v2 = [objc_opt_class() legacyLibraryPath];
  v3 = +[MTDB libraryPath];
  v4 = +[NSFileManager defaultManager];
  v35 = 0;
  v5 = [v4 moveItemAtURL:v2 toURL:v3 error:&v35];
  v6 = v35;

  if (v6)
  {
    v7 = +[IMLogger sharedLogger];
    [v7 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Migration/MTLibraryMigrator.m" lineNumber:2722 format:{@"Error moving database to %@ from %@", v3, v2}];

    [v6 logAndThrow:0 printStackTrace:0];
  }

  v8 = [v2 absoluteString];
  v9 = [v8 stringByAppendingString:@"-shm"];
  v10 = [NSURL URLWithString:v9];

  if (v5)
  {
    v11 = +[NSFileManager defaultManager];
    v12 = [v10 path];
    v13 = [v11 fileExistsAtPath:v12];

    if (v13)
    {
      v14 = [v3 absoluteString];
      v15 = [v14 stringByAppendingString:@"-shm"];
      v16 = [NSURL URLWithString:v15];

      v17 = +[NSFileManager defaultManager];
      v34 = 0;
      [v17 moveItemAtURL:v10 toURL:v16 error:&v34];
      v18 = v34;

      if (v18)
      {
        v19 = +[IMLogger sharedLogger];
        [v19 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Migration/MTLibraryMigrator.m" lineNumber:2735 format:{@"Error moving database shm to %@ from %@", v16, v10}];

        [v18 logAndThrow:0 printStackTrace:0];
      }
    }
  }

  v20 = [v2 absoluteString];
  v21 = [v20 stringByAppendingString:@"-wal"];
  v22 = [NSURL URLWithString:v21];

  if (v5)
  {
    v23 = +[NSFileManager defaultManager];
    v24 = [v22 path];
    v25 = [v23 fileExistsAtPath:v24];

    if (v25)
    {
      v26 = [v3 absoluteString];
      v27 = [v26 stringByAppendingString:@"-wal"];
      v28 = [NSURL URLWithString:v27];

      v29 = +[NSFileManager defaultManager];
      v33 = 0;
      [v29 moveItemAtURL:v22 toURL:v28 error:&v33];
      v30 = v33;

      if (v30)
      {
        v31 = +[IMLogger sharedLogger];
        [v31 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Migration/MTLibraryMigrator.m" lineNumber:2749 format:{@"Error moving database wal to %@ from %@", v30, v22}];

        [v30 logAndThrow:0 printStackTrace:0];
      }
    }
  }

  return v5;
}

+ (BOOL)runImageStoreMigration
{
  v3 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[Migration] (ImageStore) Start image store migration.", buf, 2u);
  }

  v4 = [a1 runImageStorePathMigration];
  v5 = [a1 runImageFormatMigration];
  v6 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Migration] (ImageStore) Image store migration has been completed.", v8, 2u);
  }

  return (v4 | v5) & 1;
}

+ (BOOL)runImageStorePathMigration
{
  if (+[MTLibraryMigrationUtil needsImageStoreMigration])
  {
    v2 = +[MTImageStoreConstants deprecatedImageStoreURL];
    v3 = [v2 path];

    v4 = +[MTImageStoreConstants defaultImageStoreURL];
    v5 = [v4 path];

    v6 = &kPlaylistITunesPlaylistUuid_ptr;
    v7 = +[NSFileManager defaultManager];
    v44 = v3;
    v8 = v3;
    v9 = v5;
    v10 = [v7 fileExistsAtPath:v8];

    if (v10)
    {
      v11 = +[NSFileManager defaultManager];
      v12 = [v11 fileExistsAtPath:v5];

      if ((v12 & 1) == 0)
      {
        v13 = +[NSFileManager defaultManager];
        v52 = 0;
        v14 = [v13 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v52];
        v15 = v52;

        if ((v14 & 1) == 0)
        {
          v16 = +[IMLogger sharedLogger];
          v17 = [v15 localizedDescription];
          [v16 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Migration/MTLibraryMigrator.m" lineNumber:2785 format:{@"Failed to create new image store at %@: %@", v9, v17}];
        }
      }

      v18 = +[NSFileManager defaultManager];
      v51 = 0;
      v19 = [v18 contentsOfDirectoryAtPath:v44 error:&v51];
      v20 = v51;

      if (v20)
      {
        v21 = +[IMLogger sharedLogger];
        v22 = [v20 localizedDescription];
        [v21 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Migration/MTLibraryMigrator.m" lineNumber:2794 format:{@"Error enumerating image cache directory for migration: %@", v22}];
      }

      v41 = v20;
      v42 = v10;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = v19;
      v23 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v48;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v48 != v25)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v47 + 1) + 8 * i);
            v28 = [v44 stringByAppendingPathComponent:v27];
            v29 = [v9 stringByAppendingPathComponent:v27];
            v30 = [v6[123] defaultManager];
            v46 = 0;
            [v30 moveItemAtPath:v28 toPath:v29 error:&v46];
            v31 = v46;

            if (v31)
            {
              v32 = +[IMLogger sharedLogger];
              [v31 localizedDescription];
              v33 = v9;
              v35 = v34 = v6;
              [v32 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Migration/MTLibraryMigrator.m" lineNumber:2806 format:{@"Error moving image to new cache location: %@", v35}];

              v6 = v34;
              v9 = v33;
            }
          }

          v24 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
        }

        while (v24);
      }

      v36 = [v6[123] defaultManager];
      v45 = 0;
      [v36 removeItemAtPath:v44 error:&v45];
      v37 = v45;

      if (v37)
      {
        v38 = +[IMLogger sharedLogger];
        v39 = [v37 localizedDescription];
        [v38 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Migration/MTLibraryMigrator.m" lineNumber:2815 format:{@"Error deleting old image cache: %@", v39}];
      }

      LOBYTE(v10) = v42;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

+ (BOOL)runImageFormatMigration
{
  v2 = +[MTImageStoreConstants fileType];
  v3 = +[MTImageStoreConstants defaultImageStoreURL];
  v4 = +[IMImageStore defaultStore];
  v5 = [v4 diskCache];

  v6 = +[NSFileManager defaultManager];
  v20 = NSURLContentTypeKey;
  v7 = [NSArray arrayWithObjects:&v20 count:1];
  v19 = 0;
  v8 = [v6 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:v7 options:0 error:&v19];
  v9 = v19;

  if (v9)
  {
    v10 = +[IMLogger sharedLogger];
    v11 = [v9 localizedDescription];
    [v10 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Migration/MTLibraryMigrator.m" lineNumber:2834 format:{@"Error enumerating image cache directory for migration: %@", v11}];
  }

  v12 = dispatch_get_global_queue(2, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100153200;
  v16[3] = &unk_1004DDD40;
  v17 = v2;
  v18 = v5;
  v13 = v5;
  v14 = v2;
  [v8 concurrentMapWithStrideSize:5 on:v12 withBlock:v16];

  [MTLibraryMigrationUtil setLibraryImageStoreType:v14];
  return 1;
}

+ (void)setLastLaunchFromDatabase
{
  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v4 = _MTLogCategoryLifecycle();
  v5 = os_signpost_id_generate(v4);
  v6 = v4;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SourceLastLaunchFromDB", "", &v13, 2u);
  }

  v8 = [a1 _mostRecentPlayTimeFromDatabase];
  v9 = v7;
  v10 = v9;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v5, "SourceLastLaunchFromDB", "", &v13, 2u);
  }

  v11 = _MTLogCategoryLifecycle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Setting new value for last use from database: %@", &v13, 0xCu);
    }

    [v3 setLastAppUseDate:v8];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Failed to update last launch from the database.", &v13, 2u);
    }
  }
}

+ (id)_mostRecentPlayTimeFromDatabase
{
  v3 = +[MTDB sharedInstance];
  v4 = [v3 privateQueueContext];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100008BEC;
  v16 = sub_10003B5CC;
  v17 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10015371C;
  v8[3] = &unk_1004D90B8;
  v11 = a1;
  v5 = v4;
  v9 = v5;
  v10 = &v12;
  [v5 performBlockAndWait:v8];
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

+ (id)_fetchRequestForMostRecentlyPlayedEpisode
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
  [v2 setResultType:2];
  v3 = [NSSortDescriptor alloc];
  v4 = kEpisodeLastDatePlayed;
  v5 = [v3 initWithKey:kEpisodeLastDatePlayed ascending:0];
  v11 = v5;
  v6 = [NSArray arrayWithObjects:&v11 count:1];
  [v2 setSortDescriptors:v6];

  v10[0] = kObjectID;
  v10[1] = v4;
  v7 = [NSArray arrayWithObjects:v10 count:2];
  [v2 setPropertiesToFetch:v7];

  v8 = [NSPredicate predicateWithFormat:@"%K != NULL", v4];
  [v2 setPredicate:v8];

  [v2 setFetchLimit:1];

  return v2;
}

+ (void)updateGlobalDownloadPolicyIfNecessary
{
  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [a1 inactiveIntervalForDownloadPolicyUpgrade];
  if ([a1 hasBeenInactiveForTimeInterval:?])
  {
    [a1 _updateGlobalPolicyLimitIfMoreRestrictiveInDefaults:v3];
  }
}

+ (void)_updateGlobalPolicyLimitIfMoreRestrictiveInDefaults:(id)a3
{
  v3 = a3;
  v4 = kMTPodcastEpisodeLimitDefaultKey;
  v8 = v3;
  v5 = [v3 episodeLimitForKey:kMTPodcastEpisodeLimitDefaultKey];
  +[MTPreferences defaultEpisodeLimit];
  v6 = PFMostRestrictiveLimit();
  if (v6 != v5)
  {
    v7 = [NSNumber numberWithLongLong:v6];
    [v8 setObject:v7 forKey:v4];
  }
}

+ (BOOL)hasBeenInactiveForTimeInterval:(double)a3
{
  v4 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v5 = [v4 lastAppUseDate];
  if (v5)
  {
    v6 = +[NSDate now];
    [v6 timeIntervalSinceDate:v5];
    v8 = v7;

    v9 = v8 > a3;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end