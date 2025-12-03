@interface MTLibraryMigrator
+ (BOOL)_hasMTImageStoreContent;
+ (BOOL)_needsImageStoreMigration;
+ (BOOL)globalDownloadPolicyRequiresMigration;
+ (BOOL)hasBeenInactiveForTimeInterval:(double)interval;
+ (BOOL)isDefaultSettingsForPlaylist:(id)playlist title:(id)title episodesToShow:(int64_t)show showPlayedEpisodes:(BOOL)episodes includeAllPodcasts:(BOOL)podcasts;
+ (BOOL)moveSQLiteFilesFromDocumentsToSharedContainer;
+ (BOOL)needToMigrateDataToSharedContainer;
+ (BOOL)needsMigration;
+ (BOOL)needsToComputeLastLaunch;
+ (BOOL)podcastMigrationForVersion8to9:(id)version8to9;
+ (BOOL)runCoreDataMigration;
+ (BOOL)runDataMigration;
+ (BOOL)runImageFormatMigration;
+ (BOOL)runImageStoreMigration;
+ (BOOL)runImageStorePathMigration;
+ (BOOL)runMigrationForPodcast:(id)podcast version:(int64_t)version;
+ (id)_fetchRequestForMostRecentlyPlayedEpisode;
+ (id)_mostRecentPlayTimeFromDatabase;
+ (id)legacyLibraryPath;
+ (int)episodesToKeepDefaultValue;
+ (int64_t)episodesToKeepToEpisodeLimit:(int)limit;
+ (void)_migrateToImageProvider;
+ (void)_removeImageStoreContent;
+ (void)_updateGlobalPolicyLimitIfMoreRestrictiveInDefaults:(id)defaults;
+ (void)allEpisodesMigrationForVersion40to41In:(id)in;
+ (void)allEpisodesMigrationForVersion43to44In:(id)in;
+ (void)allEpisodesMigrationForVersion45to46In:(id)in;
+ (void)allEpisodesMigrationForVersion46to47In:(id)in;
+ (void)allEpisodesMigrationForVersion47to48In:(id)in;
+ (void)allEpisodesMigrationForVersion51to52In:(id)in;
+ (void)allEpisodesMigrationForVersion53to54In:(id)in;
+ (void)allEpisodesMigrationForVersion54to55In:(id)in;
+ (void)allEpisodesMigrationForVersion59to60In:(id)in;
+ (void)allEpisodesMigrationForVersion65to66In:(id)in;
+ (void)allEpisodesMigrationForVersion68to69In:(id)in;
+ (void)deleteDuplicateVideoEpisodesForRdar59691904;
+ (void)deleteOrUpdatePlaylist:(id)playlist ifIsDefault:(BOOL)default;
+ (void)episodeMigrationForVersion0to1:(id)version0to1;
+ (void)episodeMigrationForVersion13to14:(id)version13to14;
+ (void)episodeMigrationForVersion16to17:(id)version16to17;
+ (void)episodeMigrationForVersion17to18:(id)version17to18;
+ (void)episodeMigrationForVersion21to22:(id)version21to22;
+ (void)episodeMigrationForVersion23to24:(id)version23to24;
+ (void)episodeMigrationForVersion29to30:(id)version29to30;
+ (void)episodeMigrationForVersion6to7:(id)version6to7;
+ (void)fixupDataMigrationVersion;
+ (void)migrateDatabaseToSharedContainerIfNeeded;
+ (void)migrateDefaultPlaylistsForVersion18to19;
+ (void)migratePlaylistDefaultsForVersion66to67;
+ (void)migratePlaylistDefaultsForVersion7to8;
+ (void)migratePlaylistsForVersion:(int64_t)version;
+ (void)migrateSerpentId;
+ (void)migrateSettingDefaultsForVersion10to11;
+ (void)migrateSettingDefaultsForVersion42to43;
+ (void)migrateSettingDefaultsForVersion44to45;
+ (void)migrateSettingDefaultsForVersion48to49;
+ (void)migrateSettingDefaultsForVersion58to59;
+ (void)migrateSettingDefaultsForVersion60to61;
+ (void)migrateSettingDefaultsForVersion6to7;
+ (void)migrateSettingDefaultsForVersion9to10;
+ (void)migrateSettingsForVersion:(unint64_t)version;
+ (void)moveEpisodeAssetsToSharedContainer;
+ (void)podcastMigrationForVersion11to12:(id)version11to12;
+ (void)podcastMigrationForVersion14to15:(id)version14to15;
+ (void)podcastMigrationForVersion19to20:(id)version19to20;
+ (void)podcastMigrationForVersion27to28:(id)version27to28;
+ (void)podcastMigrationForVersion28to29:(id)version28to29;
+ (void)podcastMigrationForVersion34to35:(id)version34to35;
+ (void)podcastMigrationForVersion36to37:(id)version36to37;
+ (void)podcastMigrationForVersion38to39:(id)version38to39;
+ (void)podcastMigrationForVersion41to42:(id)version41to42;
+ (void)podcastMigrationForVersion42to43:(id)version42to43;
+ (void)podcastMigrationForVersion44to45:(id)version44to45;
+ (void)podcastMigrationForVersion49to50:(id)version49to50;
+ (void)podcastMigrationForVersion50to51:(id)version50to51;
+ (void)podcastMigrationForVersion55to56:(id)version55to56;
+ (void)podcastMigrationForVersion56to57:(id)version56to57;
+ (void)podcastMigrationForVersion57to58:(id)version57to58;
+ (void)podcastMigrationForVersion58to59:(id)version58to59;
+ (void)podcastMigrationForVersion59to60:(id)version59to60;
+ (void)podcastMigrationForVersion62to63:(id)version62to63;
+ (void)podcastMigrationForVersion66to67:(id)version66to67;
+ (void)podcastMigrationForVersion6to7:(id)version6to7;
+ (void)podcastMigrationForVersion9to10:(id)version9to10;
+ (void)prunePersistentHistory;
+ (void)recalculateAllPlaylists;
+ (void)removeAllEpisodesFromMediaLibrary;
+ (void)rollbackMigrationV40IfNeededInContext:(id)context;
+ (void)runMigrationOnAllEpisodesForVersion:(int64_t)version;
+ (void)runMigrationOnEpisodesByPodcastForVersion:(int64_t)version;
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
    if ([self needToMigrateDataToSharedContainer])
    {
      [self moveSQLiteFilesFromDocumentsToSharedContainer];
    }

    if (([self needToMigrateDataToSharedContainer] & 1) == 0)
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
    [self touchAllMigrationVersions];
    return 0;
  }

  [self fixupDataMigrationVersion];
  if (+[MTLibraryMigrationUtil needsCoreDataMigration](MTLibraryMigrationUtil, "needsCoreDataMigration") & 1) != 0 || (+[MTLibraryMigrationUtil needsDataMigration](MTLibraryMigrationUtil, "needsDataMigration") & 1) != 0 || (+[MTLibraryMigrationUtil needsImageStoreMigration](MTLibraryMigrationUtil, "needsImageStoreMigration") & 1) != 0 || (+[MTDB isCorrupt](MTDB, "isCorrupt") & 1) != 0 || (+[MTDB needsSerpentIdEpisodeMigration](MTDB, "needsSerpentIdEpisodeMigration") & 1) != 0 || (+[MTDB needsCacheBustForFreeAndPaidUrlStorage](MTDB, "needsCacheBustForFreeAndPaidUrlStorage") & 1) != 0 || (+[MTDB needsMigrationToDeltaFeedUpdates](MTDB, "needsMigrationToDeltaFeedUpdates") & 1) != 0 || ([self globalDownloadPolicyRequiresMigration] & 1) != 0 || +[MTDataMigrator requiresMigration](MTDataMigrator, "requiresMigration") || (objc_msgSend(self, "_needsImageStoreMigration"))
  {
    return 1;
  }

  if ((+[PFClientUtil supportsImageStore]& 1) != 0)
  {
    return 0;
  }

  return [self _hasMTImageStoreContent];
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
  if ([self needsToComputeLastLaunch])
  {
    return 1;
  }

  [self inactiveIntervalForDownloadPolicyUpgrade];

  return [self hasBeenInactiveForTimeInterval:?];
}

+ (BOOL)needsToComputeLastLaunch
{
  v2 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  lastAppUseDate = [v2 lastAppUseDate];

  v4 = _MTLogCategoryLifecycle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = lastAppUseDate;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Last application use: %@", &v6, 0xCu);
  }

  return lastAppUseDate == 0;
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
  path = [v2 path];
  v5 = [v3 fileExistsAtPath:path isDirectory:&v8];
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

    [self migrateSettingsForVersion:v5];
    v9 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Finished migration for settings.", v25, 2u);
    }

    [self migratePlaylistsForVersion:v5];
    v10 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Finished migration for playlists.", v25, 2u);
    }

    [self runMigrationOnEpisodesByPodcastForVersion:v5];
    v11 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Finished migration for episodes by podcast.", v25, 2u);
    }

    [self runMigrationOnAllEpisodesForVersion:v5];
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

        [self deleteDuplicateVideoEpisodesForRdar59691904];
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
        [self recalculateAllPlaylists];
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
          [self prunePersistentHistory];
LABEL_35:
          +[MTFeedManager resetCache];
LABEL_36:
          [self touchLibraryMigrationVersion];
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
    [self migrateSerpentId];
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

  if ([self needsToComputeLastLaunch])
  {
    [self setLastLaunchFromDatabase];
  }

  [self updateGlobalDownloadPolicyIfNecessary];
  if ([self _needsImageStoreMigration])
  {
    [self _migrateToImageProvider];
  }

  else if ([self _hasMTImageStoreContent])
  {
    v22 = _MTLogCategoryArtworkDownload();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "ImageProvider migration is complete, but images remain in MTImageStore. Attempting deletion...", v25, 2u);
    }

    [self _removeImageStoreContent];
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
  selfCopy = self;
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

+ (void)migratePlaylistsForVersion:(int64_t)version
{
  if ((version - 19) >= 0x31)
  {
    if ((version - 7) >= 0xC)
    {
      if (version > 6)
      {
        return;
      }

      [self migratePlaylistDefaultsForVersion7to8];
    }

    [self migrateDefaultPlaylistsForVersion18to19];
  }

  [self migratePlaylistDefaultsForVersion66to67];
}

+ (void)migratePlaylistDefaultsForVersion66to67
{
  v2 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v2 mainOrPrivateContext];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10014B4AC;
  v5[3] = &unk_1004D8358;
  v6 = mainOrPrivateContext;
  v4 = mainOrPrivateContext;
  [v4 performBlockAndWaitWithSave:v5];
}

+ (void)migratePlaylistDefaultsForVersion7to8
{
  v2 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v2 mainOrPrivateContext];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10014B6A4;
  v5[3] = &unk_1004D8358;
  v6 = mainOrPrivateContext;
  v4 = mainOrPrivateContext;
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
  mainOrPrivateContext = [v4 mainOrPrivateContext];

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014B8E8;
  v7[3] = &unk_1004D9720;
  v8 = mainOrPrivateContext;
  selfCopy = self;
  v6 = mainOrPrivateContext;
  [v6 performBlockAndWaitWithSave:v7];
}

+ (void)deleteOrUpdatePlaylist:(id)playlist ifIsDefault:(BOOL)default
{
  if (default)
  {
    playlistCopy = playlist;
    playlistCopy2 = +[MTLibrary sharedInstance];
    [playlistCopy2 deletePlaylist:playlistCopy];
  }

  else
  {
    playlistCopy2 = playlist;
    [playlistCopy2 setIsBuiltIn:0];
  }
}

+ (BOOL)isDefaultSettingsForPlaylist:(id)playlist title:(id)title episodesToShow:(int64_t)show showPlayedEpisodes:(BOOL)episodes includeAllPodcasts:(BOOL)podcasts
{
  podcastsCopy = podcasts;
  episodesCopy = episodes;
  playlistCopy = playlist;
  titleCopy = title;
  title = [playlistCopy title];
  v14 = [title isEqualToString:titleCopy];

  if (v14)
  {
    defaultSettings = [playlistCopy defaultSettings];
    v16 = [defaultSettings episodesToShow] == show && objc_msgSend(defaultSettings, "showPlayedEpisodes") == episodesCopy && objc_msgSend(playlistCopy, "includesAllPodcasts") == podcastsCopy && objc_msgSend(defaultSettings, "mediaType") == 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (void)migrateSettingsForVersion:(unint64_t)version
{
  if (version <= 30)
  {
    if (version > 10)
    {
LABEL_15:
      [self migrateSettingDefaultsForVersion30to31];
      goto LABEL_16;
    }

    if (version >= 7)
    {
      if (version - 7 >= 3)
      {
        if (version != 10)
        {
          return;
        }

        goto LABEL_14;
      }
    }

    else
    {
      [self migrateSettingDefaultsForVersion6to7];
    }

    [self migrateSettingDefaultsForVersion9to10];
LABEL_14:
    [self migrateSettingDefaultsForVersion10to11];
    goto LABEL_15;
  }

  if (version > 0x3C)
  {
    goto LABEL_9;
  }

  if (((1 << version) & 0x7FE000000000000) != 0)
  {
LABEL_19:
    [self migrateSettingDefaultsForVersion58to59];
    goto LABEL_20;
  }

  if (((1 << version) & 0x1E00000000000) != 0)
  {
LABEL_18:
    [self migrateSettingDefaultsForVersion48to49];
    goto LABEL_19;
  }

  if (((1 << version) & 0x1800000000000000) == 0)
  {
LABEL_9:
    if (version - 31 >= 0xC)
    {
      if (version - 43 >= 2)
      {
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    [self migrateSettingDefaultsForVersion42to43];
LABEL_17:
    [self migrateSettingDefaultsForVersion44to45];
    goto LABEL_18;
  }

LABEL_20:

  [self migrateSettingDefaultsForVersion60to61];
}

+ (void)migrateSettingDefaultsForVersion6to7
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 floatForKey:@"MTAutoDownload"];
  v5 = v4;

  v6 = +[NSUserDefaults standardUserDefaults];
  [v6 setBool:(v5 - 1) < 2 forKey:@"MTAutoDownloadDefaultKey"];

  v7 = [self episodesToKeepToEpisodeLimit:{objc_msgSend(self, "episodesToKeepDefaultValue")}];
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
    mainOrPrivateContext = [v6 mainOrPrivateContext];

    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_10014C24C;
    v13 = &unk_1004D8CC8;
    v8 = mainOrPrivateContext;
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
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    v4 = +[NSUserDefaults standardUserDefaults];
    [v4 removeObjectForKey:@"didPresentNowPlayingScrollingTip"];
  }
}

+ (void)runMigrationOnEpisodesByPodcastForVersion:(int64_t)version
{
  v5 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v5 mainOrPrivateContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10014C5B8;
  v8[3] = &unk_1004DDCC8;
  v9 = mainOrPrivateContext;
  versionCopy = version;
  selfCopy = self;
  v7 = mainOrPrivateContext;
  [v7 performBlockAndWaitWithSave:v8];
}

+ (void)episodeMigrationForVersion29to30:(id)version29to30
{
  version29to30Copy = version29to30;
  if ([version29to30Copy isBackCatalogItem] && objc_msgSend(version29to30Copy, "saved"))
  {
    [version29to30Copy playhead];
    v4 = v3;
    if ([version29to30Copy isPartiallyPlayedBackCatalogItem])
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    v6 = +[MTLibrary sharedInstance];
    [v6 setPlayState:v5 manually:1 forUserActionOnEpisode:version29to30Copy saveChanges:0];

    LODWORD(v7) = v4;
    [version29to30Copy setPlayhead:v7];
  }
}

+ (void)migrateSerpentId
{
  v2 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v2 mainOrPrivateContext];

  v4 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchBatchSize:200];
  v7 = _NSConcreteStackBlock;
  v8 = 3221225472;
  v9 = sub_10014CF20;
  v10 = &unk_1004D8798;
  v11 = mainOrPrivateContext;
  v12 = v4;
  v5 = v4;
  v6 = mainOrPrivateContext;
  [v6 performBlockAndWaitWithSave:&v7];
  [MTDB setSerpentIdMigrationComplete:1, v7, v8, v9, v10];
}

+ (void)episodeMigrationForVersion0to1:(id)version0to1
{
  version0to1Copy = version0to1;
  flags = [version0to1Copy flags];
  if (flags)
  {
    v4 = flags;
    [version0to1Copy setVideo:(flags >> 3) & 1];
    [version0to1Copy setAudio:(v4 >> 4) & 1];
    [version0to1Copy setExternalType:(v4 >> 5) & 1];
    [version0to1Copy setFlags:0];
  }
}

+ (void)episodeMigrationForVersion6to7:(id)version6to7
{
  version6to7Copy = version6to7;
  if (![version6to7Copy playState])
  {
    v3 = +[MTLibraryLegacyUtil playStateFromHasBeenPlayed:andPlayCount:](MTLibraryLegacyUtil, "playStateFromHasBeenPlayed:andPlayCount:", [version6to7Copy hasBeenPlayed], objc_msgSend(version6to7Copy, "playCount"));
    if (![version6to7Copy visible])
    {
      v3 = 0;
    }

    if (v3)
    {
      manuallyAdded = [version6to7Copy manuallyAdded];
    }

    else
    {
      manuallyAdded = ([version6to7Copy visible] ^ 1);
    }

    [version6to7Copy setPlayState:v3 manually:manuallyAdded source:8];
  }

  if ([version6to7Copy persistentID])
  {
    v5 = +[MPMediaLibrary defaultMediaLibrary];
    v6 = [v5 itemWithPersistentID:{objc_msgSend(version6to7Copy, "persistentID")}];

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
      [version6to7Copy setIsFromITunesSync:{objc_msgSend(v7, "isFromITunesSync")}];
      if ([v8 isMissingAsset])
      {
        [version6to7Copy setAssetURL:0];
      }

      persistentID = [version6to7Copy persistentID];
      [version6to7Copy playhead];
      +[MTMediaLibraryUtil updateMediaLibraryItem:playhead:playState:playCount:](MTMediaLibraryUtil, "updateMediaLibraryItem:playhead:playState:playCount:", persistentID, [version6to7Copy playState], objc_msgSend(version6to7Copy, "playCount"), v11);
    }
  }

  podcast = [version6to7Copy podcast];
  if ([podcast deletePlayedEpisodesResolvedValue])
  {
    if ([version6to7Copy manuallyAdded])
    {
      if ([version6to7Copy visible])
      {
        if (([version6to7Copy userDeleted] & 1) == 0)
        {
          assetURL = [version6to7Copy assetURL];
          if (assetURL)
          {
            v14 = assetURL;
            isFromITunesSync = [version6to7Copy isFromITunesSync];

            if (isFromITunesSync)
            {
              goto LABEL_25;
            }

            [version6to7Copy setSaved:1];
            podcast = [version6to7Copy podcast];
            [podcast setShowPlacardForSavedEpisodes:1];
          }
        }
      }
    }
  }

LABEL_25:
  [version6to7Copy setSuppressAutoDownload:1];
  [version6to7Copy pubDate];
  [version6to7Copy setImportDate:?];
}

+ (void)episodeMigrationForVersion13to14:(id)version13to14
{
  version13to14Copy = version13to14;
  podcast = [version13to14Copy podcast];
  [version13to14Copy pubDate];
  v5 = v4;
  [podcast lastTouchDate];
  [version13to14Copy setIsNew:v5 > v6];
}

+ (void)episodeMigrationForVersion16to17:(id)version16to17
{
  version16to17Copy = version16to17;
  if (![version16to17Copy playState] && objc_msgSend(version16to17Copy, "playStateManuallySet") && objc_msgSend(version16to17Copy, "playStateSource") == 6)
  {
    [version16to17Copy setBackCatalog:1];
  }
}

+ (void)episodeMigrationForVersion17to18:(id)version17to18
{
  version17to18Copy = version17to18;
  itemDescription = [version17to18Copy itemDescription];
  [version17to18Copy setItemDescriptionHasHTML:{objc_msgSend(itemDescription, "hasHTML")}];
}

+ (void)episodeMigrationForVersion21to22:(id)version21to22
{
  version21to22Copy = version21to22;
  if ([version21to22Copy itemDescriptionHasHTML])
  {
    itemDescription = [version21to22Copy itemDescription];
    stringBySmartlyStrippingHTML = [itemDescription stringBySmartlyStrippingHTML];
    [version21to22Copy setItemDescriptionWithoutHTML:stringBySmartlyStrippingHTML];
  }
}

+ (void)episodeMigrationForVersion23to24:(id)version23to24
{
  version23to24Copy = version23to24;
  +[MTUniversalPlaybackPositionDataSource uppLastSyncTime];
  v4 = v3;
  managedObjectContext = [version23to24Copy managedObjectContext];
  metadataIdentifier = [version23to24Copy metadataIdentifier];
  v7 = [managedObjectContext uppMetadataForMetadataIdentifier:metadataIdentifier];

  if (v7)
  {
    [version23to24Copy metadataTimestamp];
    v9 = v8;
    [v7 timestamp];
    if (v9 != v10)
    {
      [version23to24Copy metadataTimestamp];
      if (v11 < v4)
      {
        [version23to24Copy updateUPPTimestamp];
      }
    }
  }
}

+ (BOOL)runMigrationForPodcast:(id)podcast version:(int64_t)version
{
  podcastCopy = podcast;
  v7 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [podcastCopy uuid];
    v13 = 138543618;
    v14 = uuid;
    v15 = 2048;
    versionCopy = version;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Running migration on podcast with uuid %{public}@ for version %ld", &v13, 0x16u);
  }

  switch(version)
  {
    case 0:
    case 1:
    case 2:
      if (([podcastCopy flags] & 0x40) != 0)
      {
        v9 = 0x7FFFFFFFLL;
      }

      else
      {
        if (![podcastCopy autoDownload])
        {
          goto LABEL_9;
        }

        v9 = 1;
      }

      [podcastCopy setAutoDownloadType:v9];
      goto LABEL_9;
    case 3:
    case 4:
    case 5:
LABEL_9:
      [podcastCopy setUpdateInterval:0];
      darkCount = [podcastCopy darkCount];
      if (darkCount < kMTGoDarkCountLimit)
      {
        [podcastCopy updateLastTouchDate];
      }

      goto LABEL_11;
    case 6:
LABEL_11:
      [self podcastMigrationForVersion6to7:podcastCopy];
      goto LABEL_12;
    case 7:
    case 8:
LABEL_12:
      if (([self podcastMigrationForVersion8to9:podcastCopy] & 1) == 0)
      {
        goto LABEL_14;
      }

      v11 = 1;
      goto LABEL_42;
    case 9:
LABEL_14:
      [self podcastMigrationForVersion9to10:podcastCopy];
      goto LABEL_15;
    case 10:
    case 11:
LABEL_15:
      [self podcastMigrationForVersion11to12:podcastCopy];
      goto LABEL_16;
    case 12:
    case 13:
    case 14:
LABEL_16:
      [self podcastMigrationForVersion14to15:podcastCopy];
      goto LABEL_17;
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
LABEL_17:
      [self podcastMigrationForVersion19to20:podcastCopy];
      goto LABEL_18;
    case 20:
LABEL_18:
      [self podcastMigrationForVersion20to21:podcastCopy];
      goto LABEL_19;
    case 21:
    case 22:
    case 23:
    case 24:
LABEL_19:
      [self podcastMigrationForVersion24to25:podcastCopy];
      goto LABEL_20;
    case 25:
LABEL_20:
      [self podcastMigrationForVersion25to26:podcastCopy];
      goto LABEL_21;
    case 26:
LABEL_21:
      [self podcastMigrationForVersion26to27:podcastCopy];
      goto LABEL_22;
    case 27:
LABEL_22:
      [self podcastMigrationForVersion27to28:podcastCopy];
      goto LABEL_23;
    case 28:
LABEL_23:
      [self podcastMigrationForVersion28to29:podcastCopy];
      goto LABEL_24;
    case 29:
    case 30:
    case 31:
LABEL_24:
      [self podcastMigrationForVersion32to33:podcastCopy];
      goto LABEL_25;
    case 32:
    case 33:
    case 34:
LABEL_25:
      [self podcastMigrationForVersion34to35:podcastCopy];
      goto LABEL_26;
    case 35:
LABEL_26:
      [self podcastMigrationForVersion35to36:podcastCopy];
      goto LABEL_27;
    case 36:
LABEL_27:
      [self podcastMigrationForVersion36to37:podcastCopy];
      goto LABEL_28;
    case 37:
    case 38:
LABEL_28:
      [self podcastMigrationForVersion38to39:podcastCopy];
      goto LABEL_29;
    case 39:
    case 40:
    case 41:
LABEL_29:
      [self podcastMigrationForVersion41to42:podcastCopy];
      goto LABEL_30;
    case 42:
LABEL_30:
      [self podcastMigrationForVersion42to43:podcastCopy];
      goto LABEL_31;
    case 43:
    case 44:
LABEL_31:
      [self podcastMigrationForVersion44to45:podcastCopy];
      goto LABEL_32;
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
LABEL_32:
      [self podcastMigrationForVersion49to50:podcastCopy];
      goto LABEL_33;
    case 50:
LABEL_33:
      [self podcastMigrationForVersion50to51:podcastCopy];
      goto LABEL_34;
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
LABEL_34:
      [self podcastMigrationForVersion55to56:podcastCopy];
      goto LABEL_35;
    case 56:
LABEL_35:
      [self podcastMigrationForVersion56to57:podcastCopy];
      goto LABEL_36;
    case 57:
LABEL_36:
      [self podcastMigrationForVersion57to58:podcastCopy];
      goto LABEL_37;
    case 58:
LABEL_37:
      [self podcastMigrationForVersion58to59:podcastCopy];
      goto LABEL_38;
    case 59:
LABEL_38:
      [self podcastMigrationForVersion59to60:podcastCopy];
      goto LABEL_39;
    case 60:
    case 61:
    case 62:
LABEL_39:
      [self podcastMigrationForVersion62to63:podcastCopy];
      goto LABEL_40;
    case 63:
    case 64:
    case 65:
    case 66:
LABEL_40:
      [self podcastMigrationForVersion66to67:podcastCopy];
      break;
    default:
      break;
  }

  v11 = 0;
LABEL_42:

  return v11;
}

+ (void)podcastMigrationForVersion66to67:(id)version66to67
{
  version66to67Copy = version66to67;
  managedObjectContext = [version66to67Copy managedObjectContext];
  v5 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
  [v5 setReturnsObjectsAsFaults:0];
  [v5 setFetchBatchSize:200];
  uuid = [version66to67Copy uuid];
  v7 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:uuid];
  [v5 setPredicate:v7];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014DA34;
  v11[3] = &unk_1004D94C8;
  v12 = managedObjectContext;
  v13 = v5;
  v14 = version66to67Copy;
  v8 = version66to67Copy;
  v9 = v5;
  v10 = managedObjectContext;
  [v10 performBlockAndWaitWithSave:v11];
}

+ (void)podcastMigrationForVersion62to63:(id)version62to63
{
  version62to63Copy = version62to63;
  [version62to63Copy managedObjectContext];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10014DC30;
  v6[3] = &unk_1004D8798;
  v8 = v7 = version62to63Copy;
  v4 = v8;
  v5 = version62to63Copy;
  [v4 performBlockAndWait:v6];
}

+ (void)podcastMigrationForVersion59to60:(id)version59to60
{
  version59to60Copy = version59to60;
  managedObjectContext = [version59to60Copy managedObjectContext];
  [version59to60Copy calculateNewEpisodeCountIn:managedObjectContext serialShowsUseExperimentalRules:0];
}

+ (void)podcastMigrationForVersion58to59:(id)version58to59
{
  version58to59Copy = version58to59;
  v3 = +[NSUserDefaults _applePodcastsFoundationSettingsUserDefaults];
  v4 = [v3 episodeLimitForKey:kMTPodcastEpisodeLimitDefaultKey];

  if ([version58to59Copy autoDownloadEnabled])
  {
    if ([version58to59Copy episodeLimit] != v4)
    {
      goto LABEL_8;
    }

    v5 = version58to59Copy;
    v6 = &_mh_execute_header + 1;
  }

  else
  {
    v5 = version58to59Copy;
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

+ (void)podcastMigrationForVersion57to58:(id)version57to58
{
  version57to58Copy = version57to58;
  managedObjectContext = [version57to58Copy managedObjectContext];
  uuid = [version57to58Copy uuid];
  v5 = [MTEpisode predicateForDownloadedEpisodesOnPodcastUuid:uuid];
  v6 = [MTEpisode predicateForVisuallyPlayed:0];
  v7 = [v5 AND:v6];

  v8 = kMTEpisodeEntityName;
  [version57to58Copy setDownloadedUnplayedEpisodesCount:{objc_msgSend(managedObjectContext, "countOfObjectsInEntity:predicate:", kMTEpisodeEntityName, v7)}];
  uuid2 = [version57to58Copy uuid];
  v10 = [MTEpisode predicateForBookmarkedEpisodesOnPodcastUuid:uuid2];
  v11 = [MTEpisode predicateForVisuallyPlayed:0];
  v12 = [v10 AND:v11];

  [version57to58Copy setSavedUnplayedEpisodesCount:{objc_msgSend(managedObjectContext, "countOfObjectsInEntity:predicate:", v8, v12)}];
}

+ (void)podcastMigrationForVersion56to57:(id)version56to57
{
  version56to57Copy = version56to57;
  if ([version56to57Copy hidden])
  {
    isImplicitlyFollowed = 1;
  }

  else
  {
    isImplicitlyFollowed = [version56to57Copy isImplicitlyFollowed];
  }

  [version56to57Copy setIsHiddenOrImplicitlyFollowed:isImplicitlyFollowed];
}

+ (void)podcastMigrationForVersion55to56:(id)version55to56
{
  version55to56Copy = version55to56;
  if ([version55to56Copy isSerialShowTypeInFeed] && objc_msgSend(version55to56Copy, "showTypeUserSetting") == 1)
  {
    [version55to56Copy setShowTypeSetting:2];
  }
}

+ (void)podcastMigrationForVersion50to51:(id)version50to51
{
  version50to51Copy = version50to51;
  v3 = +[NSUserDefaults _applePodcastsFoundationSettingsUserDefaults];
  v4 = [v3 BOOLForKey:kMTPodcastAutoDownloadStateDefaultKey];

  [version50to51Copy setAutoDownloadEnabled:v4];
}

+ (void)podcastMigrationForVersion49to50:(id)version49to50
{
  version49to50Copy = version49to50;
  v4 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Migrating podcasts from version 49 to 50.", v20, 2u);
  }

  managedObjectContext = [version49to50Copy managedObjectContext];
  v6 = kMTEpisodeEntityName;
  uuid = [version49to50Copy uuid];
  v8 = [MTEpisode predicateForBookmarkedEpisodesOnPodcastUuid:uuid];
  v9 = [managedObjectContext countOfObjectsInEntity:v6 predicate:v8];

  [version49to50Copy setSavedEpisodesCount:v9];
  uuid2 = [version49to50Copy uuid];
  v11 = [MTEpisode predicateForDownloadedEpisodesOnPodcastUuid:uuid2];
  v12 = [managedObjectContext countOfObjectsInEntity:v6 predicate:v11];

  [version49to50Copy setDownloadedEpisodesCount:v12];
  uuid3 = [version49to50Copy uuid];
  v14 = [MTEpisode predicateForLibraryEpisodesOnPodcastUuid:uuid3];
  v15 = [managedObjectContext countOfObjectsInEntity:v6 predicate:v14];

  [version49to50Copy setLibraryEpisodesCount:v15];
  uuid4 = [version49to50Copy uuid];
  v17 = [MTEpisode predicateForBookmarkedEpisodesOnPodcastUuid:uuid4];
  v18 = [MTEpisode predicateForVisuallyPlayed:0];
  v19 = [v17 AND:v18];

  [version49to50Copy setSavedUnplayedEpisodesCount:{objc_msgSend(managedObjectContext, "countOfObjectsInEntity:predicate:", v6, v19)}];
}

+ (void)podcastMigrationForVersion44to45:(id)version44to45
{
  version44to45Copy = version44to45;
  v3 = +[NSUserDefaults _applePodcastsFoundationSettingsUserDefaults];
  v4 = [v3 integerForKey:kMTPodcastAutoDownloadStateDefaultKey];

  if ([version44to45Copy autoDownloadType] == 0x7FFFFFFF)
  {
    [version44to45Copy setAutoDownloadType:v4];
  }
}

+ (void)podcastMigrationForVersion42to43:(id)version42to43
{
  version42to43Copy = version42to43;
  if ([version42to43Copy autoDownloadType] == 1)
  {
    [version42to43Copy setAutoDownloadType:3];
  }
}

+ (void)podcastMigrationForVersion41to42:(id)version41to42
{
  version41to42Copy = version41to42;
  displayType = [version41to42Copy displayType];

  if (!displayType)
  {
    v4 = NSPersistentStringForMTDisplayType();
    [version41to42Copy setDisplayType:v4];
  }
}

+ (void)podcastMigrationForVersion38to39:(id)version38to39
{
  version38to39Copy = version38to39;
  showTypeSetting = [version38to39Copy showTypeSetting];
  if (showTypeSetting == 3)
  {
    v5 = +[MTPodcast defaultShowType];
  }

  else
  {
    if (showTypeSetting == 2)
    {
      v6 = [version38to39Copy isSerialShowTypeInFeed] == 0;
      v7 = version38to39Copy;
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

    v4 = version38to39Copy;
    if (showTypeSetting)
    {
      goto LABEL_16;
    }

    if ([version38to39Copy sortAscending] && (objc_msgSend(version38to39Copy, "isSerialShowTypeInFeed") & 1) != 0)
    {
      v5 = 2;
    }

    else if ([version38to39Copy sortAscending])
    {
      v5 = 4;
    }

    else
    {
      v5 = 1;
    }
  }

  v7 = version38to39Copy;
LABEL_15:
  [v7 setShowTypeSetting:v5];
  v4 = version38to39Copy;
LABEL_16:
}

+ (void)podcastMigrationForVersion36to37:(id)version36to37
{
  version36to37Copy = version36to37;
  managedObjectContext = [version36to37Copy managedObjectContext];
  v5 = kMTEpisodeEntityName;
  uuid = [version36to37Copy uuid];
  v7 = [MTEpisode predicateForListenNowForPodcastUuid:uuid];
  v8 = +[MTEpisode sortDescriptorsForListenNow];
  v9 = [managedObjectContext objectsInEntity:v5 predicate:v7 sortDescriptors:v8 returnsObjectsAsFaults:0 limit:0];

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
        uuid2 = [v15 uuid];
        nextEpisodeUuid = [version36to37Copy nextEpisodeUuid];
        v18 = [uuid2 isEqualToString:nextEpisodeUuid];

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

+ (void)podcastMigrationForVersion34to35:(id)version34to35
{
  version34to35Copy = version34to35;
  managedObjectContext = [version34to35Copy managedObjectContext];
  uuid = [version34to35Copy uuid];
  v5 = [MTRecencyUtil upNextForPodcastUuid:uuid excludeExplicit:0 ctx:managedObjectContext];

  [v5 modifiedDate];
  [version34to35Copy setModifiedDate:?];
  nextEpisodeUuid = [version34to35Copy nextEpisodeUuid];
  episodeUuid = [v5 episodeUuid];
  v8 = [nextEpisodeUuid isEqualToString:episodeUuid];

  if ((v8 & 1) == 0)
  {
    nextEpisodeUuid2 = [version34to35Copy nextEpisodeUuid];

    if (nextEpisodeUuid2)
    {
      nextEpisodeUuid3 = [version34to35Copy nextEpisodeUuid];
      v11 = [managedObjectContext episodeForUuid:nextEpisodeUuid3];

      [v11 setListenNowEpisode:0];
    }

    episodeUuid2 = [v5 episodeUuid];

    if (episodeUuid2)
    {
      episodeUuid3 = [v5 episodeUuid];
      v14 = [managedObjectContext episodeForUuid:episodeUuid3];

      [v14 setListenNowEpisode:1];
    }

    episodeUuid4 = [v5 episodeUuid];
    [version34to35Copy setNextEpisodeUuid:episodeUuid4];
  }
}

+ (void)podcastMigrationForVersion28to29:(id)version28to29
{
  version28to29Copy = version28to29;
  [version28to29Copy addedDate];
  v4 = v3;
  newestEpisode = [version28to29Copy newestEpisode];
  [newestEpisode pubDate];
  if (v6 <= 0.0)
  {
    [newestEpisode importDate];
    if (v8 <= 0.0)
    {
      goto LABEL_6;
    }

    [newestEpisode importDate];
  }

  else
  {
    [newestEpisode pubDate];
  }

  v4 = v7;
LABEL_6:
  [version28to29Copy setFeedChangedDate:v4];
}

+ (void)podcastMigrationForVersion27to28:(id)version27to28
{
  version27to28Copy = version27to28;
  if ([version27to28Copy episodeLimit] == 0xFFFFFFFFLL)
  {
    [version27to28Copy setEpisodeLimit:{+[MTPodcast episodeLimitDefaultValue](MTPodcast, "episodeLimitDefaultValue")}];
  }
}

+ (void)podcastMigrationForVersion19to20:(id)version19to20
{
  version19to20Copy = version19to20;
  managedObjectContext = [version19to20Copy managedObjectContext];
  v5 = kMTEpisodeEntityName;
  uuid = [version19to20Copy uuid];
  v7 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:uuid];
  v8 = kEpisodeLastDatePlayed;
  v9 = [NSSortDescriptor sortDescriptorWithKey:kEpisodeLastDatePlayed ascending:0];
  v17 = v9;
  v10 = [NSArray arrayWithObjects:&v17 count:1];
  v16 = v8;
  v11 = [NSArray arrayWithObjects:&v16 count:1];
  LOBYTE(v15) = 0;
  v12 = [managedObjectContext objectDictionariesInEntity:v5 predicate:v7 sortDescriptors:v10 propertiesToFetch:v11 includeObjectId:0 limit:1 distinct:v15 groupBy:0];

  firstObject = [v12 firstObject];
  v14 = [firstObject objectForKeyedSubscript:v8];

  if (v14)
  {
    [v14 timeIntervalSinceReferenceDate];
    [version19to20Copy setLastDatePlayed:?];
  }
}

+ (void)podcastMigrationForVersion14to15:(id)version14to15
{
  version14to15Copy = version14to15;
  [version14to15Copy setNeedsArtworkUpdate:1];
  imageURL = [version14to15Copy imageURL];

  if (imageURL)
  {
    v4 = [_TtC18PodcastsFoundation22DownloadableURLOptions alloc];
    imageURL2 = [version14to15Copy imageURL];
    v6 = [v4 init:imageURL2 nonAppInitiated:{objc_msgSend(version14to15Copy, "requestsAreNonAppInitiated")}];

    v7 = +[MTImageDownloader sharedInstance];
    uuid = [version14to15Copy uuid];
    [v7 downloadImageForPodcastUuid:uuid urlOptions:v6 userInitiated:0 useBackgroundFetch:0 callback:0];
  }
}

+ (void)podcastMigrationForVersion11to12:(id)version11to12
{
  version11to12Copy = version11to12;
  if ([version11to12Copy autoDownloadType] == -1)
  {
    [version11to12Copy setAutoDownloadType:0x7FFFFFFFLL];
  }
}

+ (void)podcastMigrationForVersion9to10:(id)version9to10
{
  version9to10Copy = version9to10;
  [version9to10Copy setDarkCountLocal:{objc_msgSend(version9to10Copy, "darkCount")}];
}

+ (void)podcastMigrationForVersion6to7:(id)version6to7
{
  version6to7Copy = version6to7;
  uuid = [version6to7Copy uuid];

  if (!uuid)
  {
    v5 = +[NSString UUID];
    [version6to7Copy setUuid:v5];
  }

  keepEpisodes = [version6to7Copy keepEpisodes];
  episodesToKeepDefaultValue = keepEpisodes;
  if (keepEpisodes == -1)
  {
    episodesToKeepDefaultValue = [self episodesToKeepDefaultValue];
  }

  if (episodesToKeepDefaultValue == 1)
  {
    v8 = 0xFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  [version6to7Copy setDeletePlayedEpisodes:v8];
  if (episodesToKeepDefaultValue != 1)
  {
    [version6to7Copy setShowPlacardForRemovePlayedEpisodes:1];
  }

  [version6to7Copy setEpisodeLimit:{objc_msgSend(self, "episodesToKeepToEpisodeLimit:", keepEpisodes)}];
  if ([version6to7Copy autoDownloadType] == 2)
  {
    [version6to7Copy setAutoDownloadType:1];
  }
}

+ (BOOL)podcastMigrationForVersion8to9:(id)version8to9
{
  version8to9Copy = version8to9;
  feedURL = [version8to9Copy feedURL];
  if (![feedURL length])
  {
    episodes = [version8to9Copy episodes];
    v6 = [episodes count];

    if (v6 != 1)
    {
      goto LABEL_6;
    }

    episodes2 = [version8to9Copy episodes];
    anyObject = [episodes2 anyObject];

    assetURL = [anyObject assetURL];
    if ([assetURL length])
    {
    }

    else
    {
      enclosureURL = [anyObject enclosureURL];
      v13 = [enclosureURL length];

      if (!v13)
      {
        v14 = _MTLogCategoryDatabase();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          uuid = [version8to9Copy uuid];
          v18 = 138543362;
          v19 = uuid;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Will delete podcast %{public}@ during migration", &v18, 0xCu);
        }

        v16 = +[MTLibrary sharedInstance];
        uuid2 = [version8to9Copy uuid];
        [v16 deletePodcastWithUuid:uuid2];

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

+ (void)runMigrationOnAllEpisodesForVersion:(int64_t)version
{
  v5 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    versionCopy = version;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Running migration on all episodes for version %ld", buf, 0xCu);
  }

  v6 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v6 mainOrPrivateContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10014F064;
  v9[3] = &unk_1004DDCC8;
  versionCopy2 = version;
  selfCopy = self;
  v10 = mainOrPrivateContext;
  v8 = mainOrPrivateContext;
  [v8 performBlockAndWaitWithSave:v9];
}

+ (void)allEpisodesMigrationForVersion68to69In:(id)in
{
  inCopy = in;
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
  v11 = [inCopy executeRequest:v7 error:&v20];
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

+ (void)allEpisodesMigrationForVersion65to66In:(id)in
{
  inCopy = in;
  v4 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Migrating all episodes from version 65 to 66 (migrate all Up Next episodes to have calculated modifiedDateScore values", buf, 2u);
  }

  v5 = +[MTEpisode predicateForListenNow];
  [inCopy objectsInEntity:kMTEpisodeEntityName predicate:v5 sortDescriptors:0];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10014F50C;
  v8 = v7[3] = &unk_1004D8358;
  v6 = v8;
  [inCopy performBlockAndWaitWithSave:v7];
}

+ (void)allEpisodesMigrationForVersion59to60In:(id)in
{
  inCopy = in;
  v4 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Migrating all trailers from version 54 to 55 (migrate all episode 0's to nulls", buf, 2u);
  }

  v5 = kEpisodeEpisodeNumber;
  kEpisodeEpisodeNumber = [NSPredicate predicateWithFormat:@"(%K = 0)", kEpisodeEpisodeNumber];
  v7 = [MTEpisode predicateForEpisodeType:1];
  v8 = [kEpisodeEpisodeNumber AND:v7];

  v9 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:kMTEpisodeEntityName];
  [v9 setPredicate:v8];
  v20 = v5;
  v10 = +[NSNull null];
  v21 = v10;
  v11 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [v9 setPropertiesToUpdate:v11];

  [v9 setResultType:2];
  v17 = 0;
  v12 = [inCopy executeRequest:v9 error:&v17];

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
    result = [v12 result];
    *buf = 138412290;
    v19 = result;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) %@ episodes successfully migrated from episode 0 to null", buf, 0xCu);
  }
}

+ (void)allEpisodesMigrationForVersion54to55In:(id)in
{
  inCopy = in;
  v4 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Migrating all trailers from version 54 to 55 (migrate all episode 0's to nulls", buf, 2u);
  }

  v5 = kEpisodeEpisodeNumber;
  kEpisodeEpisodeNumber = [NSPredicate predicateWithFormat:@"(%K = NULL)", kEpisodeEpisodeNumber];
  v7 = [MTEpisode predicateForEpisodeType:1];
  v8 = [kEpisodeEpisodeNumber AND:v7];

  v9 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:kMTEpisodeEntityName];
  [v9 setPredicate:v8];
  v19 = v5;
  v20 = &off_100501768;
  v10 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [v9 setPropertiesToUpdate:v10];

  [v9 setResultType:2];
  v16 = 0;
  v11 = [inCopy executeRequest:v9 error:&v16];

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
    result = [v11 result];
    *buf = 138412290;
    v18 = result;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) %@ episodes successfully migrated from episode 0 to null", buf, 0xCu);
  }
}

+ (void)allEpisodesMigrationForVersion53to54In:(id)in
{
  inCopy = in;
  v4 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Migrating all episodes from version 53 to 54 (migrate all episode 0's to nulls", buf, 2u);
  }

  v5 = kEpisodeEpisodeNumber;
  kEpisodeEpisodeNumber = [NSPredicate predicateWithFormat:@"(%K = 0)", kEpisodeEpisodeNumber];
  v7 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:kMTEpisodeEntityName];
  [v7 setPredicate:kEpisodeEpisodeNumber];
  v18 = v5;
  v8 = +[NSNull null];
  v19 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v7 setPropertiesToUpdate:v9];

  [v7 setResultType:2];
  v15 = 0;
  v10 = [inCopy executeRequest:v7 error:&v15];

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
    result = [v10 result];
    *buf = 138412290;
    v17 = result;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) %@ episodes successfully migrated from episode 0 to null", buf, 0xCu);
  }
}

+ (void)allEpisodesMigrationForVersion51to52In:(id)in
{
  inCopy = in;
  v4 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) Migrating all episodes from version 51 to 52 (migrate all season 0's to nulls", buf, 2u);
  }

  v5 = kEpisodeSeasonNumber;
  kEpisodeSeasonNumber = [NSPredicate predicateWithFormat:@"(%K = 0)", kEpisodeSeasonNumber];
  v7 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:kMTEpisodeEntityName];
  [v7 setPredicate:kEpisodeSeasonNumber];
  v18 = v5;
  v8 = +[NSNull null];
  v19 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v7 setPropertiesToUpdate:v9];

  [v7 setResultType:2];
  v15 = 0;
  v10 = [inCopy executeRequest:v7 error:&v15];

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
    result = [v10 result];
    *buf = 138412290;
    v17 = result;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) %@ episodes successfully migrated from season 0 to null", buf, 0xCu);
  }
}

+ (void)allEpisodesMigrationForVersion47to48In:(id)in
{
  inCopy = in;
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
  v11 = [inCopy executeRequest:v9 error:&v16];

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
    result = [v11 result];
    *buf = 138412290;
    v18 = result;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) %@ My Episodes successfully migrated undownloaded episodes to MTEpisodeDownloadBehaviorAutomaticSuppressed", buf, 0xCu);
  }
}

+ (void)allEpisodesMigrationForVersion46to47In:(id)in
{
  inCopy = in;
  v4 = +[MTEpisode predicateForEpisodesWhichNeedEntitlementStateUpdate];
  v5 = [inCopy objectsInEntity:kMTEpisodeEntityName predicate:v4 sortDescriptors:0];
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

+ (void)allEpisodesMigrationForVersion45to46In:(id)in
{
  inCopy = in;
  v4 = [MTEpisode predicateForSaved:1];
  v5 = [MTEpisode predicateForDownloaded:1 excludeHidden:0];
  v6 = [v4 AND:v5];

  [inCopy objectsInEntity:kMTEpisodeEntityName predicate:v6 sortDescriptors:0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100150458;
  v9 = v8[3] = &unk_1004D8358;
  v7 = v9;
  [inCopy performBlockAndWaitWithSave:v8];
}

+ (void)allEpisodesMigrationForVersion43to44In:(id)in
{
  inCopy = in;
  [self rollbackMigrationV40IfNeededInContext:inCopy];
  v5 = kMTEpisodeEntityName;
  v6 = [MTEpisode predicateForSaved:1];
  v7 = [MTEpisode sortDescriptorsForPubDateAscending:0];
  v8 = [inCopy objectsInEntity:v5 predicate:v6 sortDescriptors:v7];

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
  v21 = [inCopy executeRequest:v18 error:&v26];
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
    result = [v21 result];
    *buf = 138412290;
    v34 = result;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[Migration] (Data) %@ My Episodes successfully migrated to Recovered Episodes.", buf, 0xCu);
  }
}

+ (void)rollbackMigrationV40IfNeededInContext:(id)context
{
  contextCopy = context;
  v4 = [_TtC8Podcasts26BookmarksMigrationRegistry migrationRegisteredAtVersion:40];
  v5 = v4;
  if (v4)
  {
    uuids = [v4 uuids];
    v7 = [NSSet setWithArray:uuids];
    v8 = [MTEpisode predicateForEpisodeUuids:v7];

    v9 = +[MTEpisode predicateForAllBookmarkedEpisodes];
    v10 = [MTEpisode predicateForSaved:0];
    date = [v5 date];
    v12 = [date dateByAddingTimeInterval:120.0];

    date2 = [v5 date];
    v14 = [date2 dateByAddingTimeInterval:-120.0];

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
    v24 = [contextCopy executeRequest:v19 error:&v32];
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

+ (void)allEpisodesMigrationForVersion40to41In:(id)in
{
  inCopy = in;
  v4 = [NSFetchRequest fetchRequestWithEntityName:kMTEpisodeEntityName];
  v5 = [MTEpisode predicateForSuppressAutoDownload:1];
  [v4 setPredicate:v5];

  [v4 setReturnsObjectsAsFaults:0];
  [v4 setFetchBatchSize:200];
  [inCopy executeFetchRequest:v4];
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
          [inCopy saveInCurrentBlock];
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

  [inCopy saveInCurrentBlock];
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
  mainOrPrivateContext = [v2 mainOrPrivateContext];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100150FD0;
  v5[3] = &unk_1004D8688;
  v5[4] = &v6;
  [mainOrPrivateContext performBlockAndWait:v5];
  v4 = +[MTLibrary sharedInstance];
  [v4 deleteEpisodeUuids:v7[5] forced:1];

  _Block_object_dispose(&v6, 8);
}

+ (void)moveEpisodeAssetsToSharedContainer
{
  v2 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v2 mainOrPrivateContext];

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
  v12 = mainOrPrivateContext;
  v13 = v5;
  v14 = v4;
  v8 = v4;
  v9 = v5;
  v10 = mainOrPrivateContext;
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
  mainOrPrivateContext = [v5 mainOrPrivateContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100151A8C;
  v9[3] = &unk_1004D8798;
  v10 = mainOrPrivateContext;
  v11 = v3;
  v7 = v3;
  v8 = mainOrPrivateContext;
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
  mainOrPrivateContext = [v5 mainOrPrivateContext];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100151D1C;
  v9[3] = &unk_1004DD110;
  v10 = mainOrPrivateContext;
  v11 = v4;
  v12 = 14;
  v7 = v4;
  v8 = mainOrPrivateContext;
  [v8 performBlockAndWait:v9];
}

+ (int)episodesToKeepDefaultValue
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 integerForKey:@"MTPodcastKeepEpisodesDefault"];

  return v3;
}

+ (int64_t)episodesToKeepToEpisodeLimit:(int)limit
{
  if ((limit + 1) > 7)
  {
    return 0;
  }

  else
  {
    return qword_1003FEAB0[limit + 1];
  }
}

+ (void)recalculateAllPlaylists
{
  v2 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v2 mainOrPrivateContext];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100151F64;
  v5[3] = &unk_1004D8358;
  v6 = mainOrPrivateContext;
  v4 = mainOrPrivateContext;
  [v4 performBlockAndWaitWithSave:v5];
}

+ (void)touchAllMigrationVersions
{
  [self touchLibraryMigrationVersion];

  [self touchCoreDataMigrationVersion];
}

+ (void)touchCoreDataMigrationVersion
{
  v2 = +[MTDB managedObjectModel];
  versionChecksum = [v2 versionChecksum];

  if (versionChecksum)
  {
    [MTDB setCoreDataChecksum:versionChecksum];
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
  legacyLibraryPath = [objc_opt_class() legacyLibraryPath];
  path = [legacyLibraryPath path];

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:path];

  v6 = +[MTDB libraryPath];
  path2 = [v6 path];

  v8 = +[NSFileManager defaultManager];
  v9 = [v8 fileExistsAtPath:path2];

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
        versionChecksum = [v9 versionChecksum];
        v13 = 138412546;
        v14 = v8;
        v15 = 2112;
        v16 = versionChecksum;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Migration] (CoreData) Successfully migrated. Set migration version from %@ to %@", &v13, 0x16u);
      }

      [self touchCoreDataMigrationVersion];
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

  lastObject = [v3 lastObject];
  v5 = [NSString alloc];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v5 initWithFormat:@"%@.sqlite", v7];

  v9 = [lastObject URLByAppendingPathComponent:v8];

  return v9;
}

+ (BOOL)moveSQLiteFilesFromDocumentsToSharedContainer
{
  legacyLibraryPath = [objc_opt_class() legacyLibraryPath];
  v3 = +[MTDB libraryPath];
  v4 = +[NSFileManager defaultManager];
  v35 = 0;
  v5 = [v4 moveItemAtURL:legacyLibraryPath toURL:v3 error:&v35];
  v6 = v35;

  if (v6)
  {
    v7 = +[IMLogger sharedLogger];
    [v7 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Migration/MTLibraryMigrator.m" lineNumber:2722 format:{@"Error moving database to %@ from %@", v3, legacyLibraryPath}];

    [v6 logAndThrow:0 printStackTrace:0];
  }

  absoluteString = [legacyLibraryPath absoluteString];
  v9 = [absoluteString stringByAppendingString:@"-shm"];
  v10 = [NSURL URLWithString:v9];

  if (v5)
  {
    v11 = +[NSFileManager defaultManager];
    path = [v10 path];
    v13 = [v11 fileExistsAtPath:path];

    if (v13)
    {
      absoluteString2 = [v3 absoluteString];
      v15 = [absoluteString2 stringByAppendingString:@"-shm"];
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

  absoluteString3 = [legacyLibraryPath absoluteString];
  v21 = [absoluteString3 stringByAppendingString:@"-wal"];
  v22 = [NSURL URLWithString:v21];

  if (v5)
  {
    v23 = +[NSFileManager defaultManager];
    path2 = [v22 path];
    v25 = [v23 fileExistsAtPath:path2];

    if (v25)
    {
      absoluteString4 = [v3 absoluteString];
      v27 = [absoluteString4 stringByAppendingString:@"-wal"];
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

  runImageStorePathMigration = [self runImageStorePathMigration];
  runImageFormatMigration = [self runImageFormatMigration];
  v6 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Migration] (ImageStore) Image store migration has been completed.", v8, 2u);
  }

  return (runImageStorePathMigration | runImageFormatMigration) & 1;
}

+ (BOOL)runImageStorePathMigration
{
  if (+[MTLibraryMigrationUtil needsImageStoreMigration])
  {
    v2 = +[MTImageStoreConstants deprecatedImageStoreURL];
    path = [v2 path];

    v4 = +[MTImageStoreConstants defaultImageStoreURL];
    path2 = [v4 path];

    v6 = &kPlaylistITunesPlaylistUuid_ptr;
    v7 = +[NSFileManager defaultManager];
    v44 = path;
    v8 = path;
    v9 = path2;
    v10 = [v7 fileExistsAtPath:v8];

    if (v10)
    {
      v11 = +[NSFileManager defaultManager];
      v12 = [v11 fileExistsAtPath:path2];

      if ((v12 & 1) == 0)
      {
        v13 = +[NSFileManager defaultManager];
        v52 = 0;
        v14 = [v13 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:&v52];
        v15 = v52;

        if ((v14 & 1) == 0)
        {
          v16 = +[IMLogger sharedLogger];
          localizedDescription = [v15 localizedDescription];
          [v16 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Migration/MTLibraryMigrator.m" lineNumber:2785 format:{@"Failed to create new image store at %@: %@", v9, localizedDescription}];
        }
      }

      v18 = +[NSFileManager defaultManager];
      v51 = 0;
      v19 = [v18 contentsOfDirectoryAtPath:v44 error:&v51];
      v20 = v51;

      if (v20)
      {
        v21 = +[IMLogger sharedLogger];
        localizedDescription2 = [v20 localizedDescription];
        [v21 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Migration/MTLibraryMigrator.m" lineNumber:2794 format:{@"Error enumerating image cache directory for migration: %@", localizedDescription2}];
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
            defaultManager = [v6[123] defaultManager];
            v46 = 0;
            [defaultManager moveItemAtPath:v28 toPath:v29 error:&v46];
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

      defaultManager2 = [v6[123] defaultManager];
      v45 = 0;
      [defaultManager2 removeItemAtPath:v44 error:&v45];
      v37 = v45;

      if (v37)
      {
        v38 = +[IMLogger sharedLogger];
        localizedDescription3 = [v37 localizedDescription];
        [v38 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Migration/MTLibraryMigrator.m" lineNumber:2815 format:{@"Error deleting old image cache: %@", localizedDescription3}];
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
  diskCache = [v4 diskCache];

  v6 = +[NSFileManager defaultManager];
  v20 = NSURLContentTypeKey;
  v7 = [NSArray arrayWithObjects:&v20 count:1];
  v19 = 0;
  v8 = [v6 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:v7 options:0 error:&v19];
  v9 = v19;

  if (v9)
  {
    v10 = +[IMLogger sharedLogger];
    localizedDescription = [v9 localizedDescription];
    [v10 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Migration/MTLibraryMigrator.m" lineNumber:2834 format:{@"Error enumerating image cache directory for migration: %@", localizedDescription}];
  }

  v12 = dispatch_get_global_queue(2, 0);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100153200;
  v16[3] = &unk_1004DDD40;
  v17 = v2;
  v18 = diskCache;
  v13 = diskCache;
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

  _mostRecentPlayTimeFromDatabase = [self _mostRecentPlayTimeFromDatabase];
  v9 = v7;
  v10 = v9;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, v5, "SourceLastLaunchFromDB", "", &v13, 2u);
  }

  v11 = _MTLogCategoryLifecycle();
  v12 = v11;
  if (_mostRecentPlayTimeFromDatabase)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = _mostRecentPlayTimeFromDatabase;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Setting new value for last use from database: %@", &v13, 0xCu);
    }

    [v3 setLastAppUseDate:_mostRecentPlayTimeFromDatabase];
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
  privateQueueContext = [v3 privateQueueContext];

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
  selfCopy = self;
  v5 = privateQueueContext;
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
  [self inactiveIntervalForDownloadPolicyUpgrade];
  if ([self hasBeenInactiveForTimeInterval:?])
  {
    [self _updateGlobalPolicyLimitIfMoreRestrictiveInDefaults:v3];
  }
}

+ (void)_updateGlobalPolicyLimitIfMoreRestrictiveInDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v4 = kMTPodcastEpisodeLimitDefaultKey;
  v8 = defaultsCopy;
  v5 = [defaultsCopy episodeLimitForKey:kMTPodcastEpisodeLimitDefaultKey];
  +[MTPreferences defaultEpisodeLimit];
  v6 = PFMostRestrictiveLimit();
  if (v6 != v5)
  {
    v7 = [NSNumber numberWithLongLong:v6];
    [v8 setObject:v7 forKey:v4];
  }
}

+ (BOOL)hasBeenInactiveForTimeInterval:(double)interval
{
  v4 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  lastAppUseDate = [v4 lastAppUseDate];
  if (lastAppUseDate)
  {
    v6 = +[NSDate now];
    [v6 timeIntervalSinceDate:lastAppUseDate];
    v8 = v7;

    v9 = v8 > interval;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

@end