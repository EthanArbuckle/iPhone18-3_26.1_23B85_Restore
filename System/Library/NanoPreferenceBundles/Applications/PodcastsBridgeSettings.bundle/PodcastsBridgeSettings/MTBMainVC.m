@interface MTBMainVC
- (BOOL)_isOutOfSpace;
- (BOOL)_isPodcastWithFeedURLPinned:(id)a3;
- (BOOL)_isStationWithUUIDPinned:(id)a3;
- (BOOL)_legacyIsCharging;
- (BOOL)_shouldShowProgress;
- (MTBMainVC)init;
- (NMBUISyncInfoController)syncInfoController;
- (NSFetchedResultsController)availablePodcastStationsFetchedResultsController;
- (NSFetchedResultsController)availablePodcastsFetchedResultsController;
- (NSOrderedSet)cachedPinnedFeedURLs;
- (NSOrderedSet)cachedPinnedStationUUIDs;
- (PSSpecifier)podcastsSettingsSpecifier;
- (PSSpecifier)signInSpecifier;
- (float)_contentHeaderViewProgress;
- (id)_cellImageWithSymbolName:(id)a3;
- (id)_contentHeaderViewSubtitle;
- (id)_contentHeaderViewTitle;
- (id)_localizedEpisodeDownloadExplanation;
- (id)_newLoadingSpecifier;
- (id)_podcastSpecifiers;
- (id)_podcastSwitchCellValueForSpecifier:(id)a3;
- (id)_savedAndStationSpecifiers;
- (id)_savedEpisodesSwitchCellValueForSpecifier:(id)a3;
- (id)_selfOrPresentedViewController;
- (id)_specifierForPodcast:(id)a3;
- (id)_specifierForSavedEpisodes;
- (id)_specifierForStation:(id)a3;
- (id)_stationSwitchCellValueForSpecifier:(id)a3;
- (id)_syncGroupSpecifiers;
- (id)specifiers;
- (unint64_t)_resolvedProgressViewStateForState:(unint64_t)a3;
- (void)_configureHeaderIfNeeded;
- (void)_handleApplicationDidEnterBackgroundNotification:(id)a3;
- (void)_handleApplicationWillEnterForegroundNotification:(id)a3;
- (void)_handlePodcastsDidUpdateNotification;
- (void)_handlePodcastsIdentifiersDidChangeNotification:(id)a3;
- (void)_handleSyncInfoDidUpdateNotification:(id)a3;
- (void)_launchPodcasts;
- (void)_podcastsSettingsAction:(id)a3;
- (void)_reload;
- (void)_setPodcastSwitchCell:(id)a3 specifier:(id)a4;
- (void)_setSavedEpisodesSwitchCell:(id)a3 specifier:(id)a4;
- (void)_setStationSwitchCell:(id)a3 specifier:(id)a4;
- (void)_showSyncStorageWarning;
- (void)_signInAction:(id)a3;
- (void)_updateHeaderAndSyncProgress;
- (void)_updateProgressIfNeeded;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation MTBMainVC

- (MTBMainVC)init
{
  v17.receiver = self;
  v17.super_class = MTBMainVC;
  v2 = [(MTBMainVC *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSCache);
    imageCache = v2->_imageCache;
    v2->_imageCache = v3;

    v2->_waitingForDatabaseSetup = +[MTDB canExtensionOpenDatabase]^ 1;
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_handleAccountDidChangeNotification:" name:NMBUIITunesAccountDidChangeNotification object:0];
    [v5 addObserver:v2 selector:"_handlePodcastsIdentifiersDidChangeNotification:" name:NMSMediaPinningManagerPodcastsIdentifiersDidChangeNotification object:0];
    v6 = +[NRPairedDeviceRegistry sharedInstance];
    v7 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v8 = [v6 getAllDevicesWithArchivedAltAccountDevicesMatching:v7];
    v9 = [v8 firstObject];
    v10 = [[NSUUID alloc] initWithUUIDString:@"2E9A45BB-4F07-4D6B-9B65-41933EED0DCA"];
    v11 = [v9 supportsCapability:v10];

    if (v11)
    {
      [v5 addObserver:v2 selector:"_handleSyncInfoDidUpdateNotification:" name:NMBUIMediaSyncInfoDidUpdateNotification object:0];
      [v5 addObserver:v2 selector:"_handleApplicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
      [v5 addObserver:v2 selector:"_handleApplicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];
    }

    else
    {
      [v5 addObserver:v2 selector:"_handlePreferencesDidChangeNotification:" name:NMSyncPreferencesDidChangeRemotelyNotification object:0];
      v12 = NMSSyncManagerSyncStateDidChangeNotification;
      v13 = +[NMSSyncManager sharedManager];
      [v5 addObserver:v2 selector:"_handleSyncStateDidChangeNotification:" name:v12 object:v13];
    }

    v14 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
    [v14 addObserver:v2 forKeyPath:kMTSyncSubscriptionsKey options:0 context:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_9F44, @"com.apple.podcasts.podcastsDidUpdate", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v4 removeObserver:self forKeyPath:kMTSyncSubscriptionsKey];

  v5.receiver = self;
  v5.super_class = MTBMainVC;
  [(MTBMainVC *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MTBMainVC;
  [(MTBMainVC *)&v3 viewDidLoad];
  [(MTBMainVC *)self _configureHeaderIfNeeded];
}

- (NMBUISyncInfoController)syncInfoController
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"2E9A45BB-4F07-4D6B-9B65-41933EED0DCA"];
  if ([v6 supportsCapability:v7])
  {
    syncInfoController = self->_syncInfoController;

    if (!syncInfoController)
    {
      v9 = [[NMBUISyncInfoController alloc] initWithSyncInfoTarget:1];
      [v9 setDataSource:self];
      v10 = self->_syncInfoController;
      self->_syncInfoController = v9;
    }
  }

  else
  {
  }

  v11 = self->_syncInfoController;

  return v11;
}

- (NSOrderedSet)cachedPinnedFeedURLs
{
  cachedPinnedFeedURLs = self->_cachedPinnedFeedURLs;
  if (!cachedPinnedFeedURLs)
  {
    v4 = +[NMSMediaPinningManager sharedManager];
    v5 = [v4 podcastFeedURLs];
    v6 = [NSOrderedSet orderedSetWithArray:v5];
    v7 = self->_cachedPinnedFeedURLs;
    self->_cachedPinnedFeedURLs = v6;

    cachedPinnedFeedURLs = self->_cachedPinnedFeedURLs;
  }

  return cachedPinnedFeedURLs;
}

- (NSOrderedSet)cachedPinnedStationUUIDs
{
  cachedPinnedStationUUIDs = self->_cachedPinnedStationUUIDs;
  if (!cachedPinnedStationUUIDs)
  {
    v4 = +[NMSMediaPinningManager sharedManager];
    v5 = [v4 podcastStationUUIDs];
    v6 = [NSOrderedSet orderedSetWithArray:v5];
    v7 = self->_cachedPinnedStationUUIDs;
    self->_cachedPinnedStationUUIDs = v6;

    cachedPinnedStationUUIDs = self->_cachedPinnedStationUUIDs;
  }

  return cachedPinnedStationUUIDs;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->BPSNotificationAppController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = +[NSMutableArray array];
    v6 = +[NMBUIAccountUtil sharedInstance];
    v7 = [v6 hasITunesAccount];

    if (v7)
    {
      v8 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
      v9 = [v8 BOOLForKey:kMTSyncSubscriptionsKey];

      if (v9)
      {
        v10 = [PSSpecifier groupSpecifierWithName:&stru_1CB88];
        v11 = +[MTBridgeUtilities localizedPodcastsDownloadsExplanation];
        [v10 setProperty:v11 forKey:PSFooterTextGroupKey];

        [v5 addObject:v10];
        v12 = [(MTBMainVC *)self _syncGroupSpecifiers];
        [v5 addObjectsFromArray:v12];

        v13 = +[NMSMediaPinningManager sharedManager];
        v14 = [v13 pinnedPodcastsAreUserSet];

        if (!v14)
        {
LABEL_10:

          v30.receiver = self;
          v30.super_class = MTBMainVC;
          v21 = [(MTBMainVC *)&v30 specifiers];
          v22 = v21;
          if (v21)
          {
            v23 = v21;
          }

          else
          {
            v23 = +[NSArray array];
          }

          v24 = v23;

          v25 = [v24 specifierForID:BPSMirrorGroupID];
          v26 = +[MTBridgeUtilities localizedNotificationsString];
          [v25 setName:v26];

          [v5 addObjectsFromArray:v24];
          v27 = [NSArray arrayWithArray:v5];
          v28 = *&self->BPSNotificationAppController_opaque[v3];
          *&self->BPSNotificationAppController_opaque[v3] = v27;

          v4 = *&self->BPSNotificationAppController_opaque[v3];
          goto LABEL_14;
        }

        v15 = [(MTBMainVC *)self _savedAndStationSpecifiers];
        [v5 addObjectsFromArray:v15];

        v16 = [(MTBMainVC *)self _podcastSpecifiers];
        [v5 addObjectsFromArray:v16];
LABEL_9:

        goto LABEL_10;
      }

      v10 = [PSSpecifier groupSpecifierWithID:@"NMTSignIntoITunesGroupSpecifierID" name:0];
      v19 = +[MTBridgeUtilities localizedSettingsMessage];
      [v10 setProperty:v19 forKey:PSFooterTextGroupKey];

      v31[0] = v10;
      v16 = [(MTBMainVC *)self podcastsSettingsSpecifier];
      v31[1] = v16;
      v18 = v31;
    }

    else
    {
      v10 = [PSSpecifier groupSpecifierWithID:@"NMTSignIntoITunesGroupSpecifierID" name:0];
      v17 = +[MTBridgeUtilities localizedSignInMessage];
      [v10 setProperty:v17 forKey:PSFooterTextGroupKey];

      v32[0] = v10;
      v16 = [(MTBMainVC *)self signInSpecifier];
      v32[1] = v16;
      v18 = v32;
    }

    v20 = [NSArray arrayWithObjects:v18 count:2];
    [v5 addObjectsFromArray:v20];

    goto LABEL_9;
  }

LABEL_14:

  return v4;
}

- (id)_syncGroupSpecifiers
{
  p_syncUpNextCellSpecifier = &self->_syncUpNextCellSpecifier;
  if (!self->_syncUpNextCellSpecifier)
  {
    v4 = +[MTBridgeUtilities localizedUpNextString];
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v5 setIdentifier:@"NMTSyncUpNextCellSpecifierID"];
    v6 = *p_syncUpNextCellSpecifier;
    *p_syncUpNextCellSpecifier = v5;
  }

  p_syncCustomCellSpecifier = &self->_syncCustomCellSpecifier;
  if (!self->_syncCustomCellSpecifier)
  {
    v8 = +[NSBundle podcastsFoundationBundle];
    v9 = [v8 localizedStringForKey:@"CUSTOM_CELL_STRING" value:@"Custom" table:0];
    v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:3 edit:0];

    [v10 setIdentifier:@"NMTSyncCustomCellSpecifierID"];
    v11 = *p_syncCustomCellSpecifier;
    *p_syncCustomCellSpecifier = v10;
  }

  syncGroupSpecifier = self->_syncGroupSpecifier;
  if (!syncGroupSpecifier)
  {
    v13 = +[MTBridgeUtilities localizedAddEpisodesString];
    v14 = [PSSpecifier groupSpecifierWithID:@"NMTSyncGroupSpecifierID" name:v13];

    [v14 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    v15 = +[NMSMediaPinningManager sharedManager];
    v16 = [v15 pinnedPodcastsAreUserSet];

    if (v16)
    {
      v17 = [(MTBMainVC *)self _localizedEpisodeDownloadExplanation];
      [v14 setProperty:v17 forKey:PSFooterTextGroupKey];
      v18 = &self->_syncCustomCellSpecifier;
    }

    else
    {
      v17 = +[NSBundle podcastsFoundationBundle];
      v19 = [v17 localizedStringForKey:@"UP_NEXT_FOOTER_STRING" value:@"Your iPhone will try to add one episode from each of the top 10 shows in Up Next." table:0];
      [v14 setProperty:v19 forKey:PSFooterTextGroupKey];

      v18 = p_syncUpNextCellSpecifier;
    }

    [v14 setProperty:*v18 forKey:PSRadioGroupCheckedSpecifierKey];
    v20 = self->_syncGroupSpecifier;
    self->_syncGroupSpecifier = v14;

    syncGroupSpecifier = self->_syncGroupSpecifier;
  }

  v21 = *p_syncUpNextCellSpecifier;
  v24[0] = syncGroupSpecifier;
  v24[1] = v21;
  v24[2] = *p_syncCustomCellSpecifier;
  v22 = [NSArray arrayWithObjects:v24 count:3];

  return v22;
}

- (PSSpecifier)signInSpecifier
{
  signInSpecifier = self->_signInSpecifier;
  if (!signInSpecifier)
  {
    v4 = +[MTBridgeUtilities localizedSignInString];
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v6 = self->_signInSpecifier;
    self->_signInSpecifier = v5;

    [(PSSpecifier *)self->_signInSpecifier setButtonAction:"_signInAction:"];
    *(self->_signInSpecifier + OBJC_IVAR___PSSpecifier_textFieldType) = 1;
    signInSpecifier = self->_signInSpecifier;
  }

  return signInSpecifier;
}

- (void)_signInAction:(id)a3
{
  v4 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=STORE_SERVICE"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (PSSpecifier)podcastsSettingsSpecifier
{
  podcastsSettingsSpecifier = self->_podcastsSettingsSpecifier;
  if (!podcastsSettingsSpecifier)
  {
    v4 = +[MTBridgeUtilities localizedSettingsString];
    v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];
    v6 = self->_podcastsSettingsSpecifier;
    self->_podcastsSettingsSpecifier = v5;

    [(PSSpecifier *)self->_podcastsSettingsSpecifier setButtonAction:"_podcastsSettingsAction:"];
    *(self->_podcastsSettingsSpecifier + OBJC_IVAR___PSSpecifier_textFieldType) = 1;
    podcastsSettingsSpecifier = self->_podcastsSettingsSpecifier;
  }

  return podcastsSettingsSpecifier;
}

- (BOOL)_isPodcastWithFeedURLPinned:(id)a3
{
  v4 = a3;
  v5 = [(MTBMainVC *)self cachedPinnedFeedURLs];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)_isStationWithUUIDPinned:(id)a3
{
  v4 = a3;
  v5 = [(MTBMainVC *)self cachedPinnedStationUUIDs];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)_podcastsSettingsAction:(id)a3
{
  v4 = [NSURL URLWithString:@"app-prefs:com.apple.podcasts"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (id)_newLoadingSpecifier
{
  v2 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
  +[NMBUIMediaTableCell defaultCellHeight];
  v3 = [NSNumber numberWithDouble:?];
  [v2 setProperty:v3 forKey:PSTableCellHeightKey];

  return v2;
}

- (void)_setPodcastSwitchCell:(id)a3 specifier:(id)a4
{
  v5 = NMBUISpecifierModelObjectKey;
  v6 = a3;
  v9 = [a4 propertyForKey:v5];
  LODWORD(v5) = [v6 BOOLValue];

  v7 = +[NMSMediaPinningManager sharedManager];
  v8 = v7;
  if (v5)
  {
    [v7 pinPodcastWithFeedURL:v9];
  }

  else
  {
    [v7 unpinPodcastWithFeedURL:v9];
  }
}

- (id)_podcastSwitchCellValueForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:NMBUISpecifierModelObjectKey];
  v5 = [NSNumber numberWithBool:[(MTBMainVC *)self _isPodcastWithFeedURLPinned:v4]];

  return v5;
}

- (void)_setSavedEpisodesSwitchCell:(id)a3 specifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[NMSMediaPinningManager sharedManager];
  [v5 setSavedEpisodesEnabled:v4];
}

- (id)_savedEpisodesSwitchCellValueForSpecifier:(id)a3
{
  v3 = +[NMSMediaPinningManager sharedManager];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 savedEpisodesEnabled]);

  return v4;
}

- (void)_setStationSwitchCell:(id)a3 specifier:(id)a4
{
  v5 = NMBUISpecifierModelObjectKey;
  v6 = a3;
  v9 = [a4 propertyForKey:v5];
  LODWORD(v5) = [v6 BOOLValue];

  v7 = +[NMSMediaPinningManager sharedManager];
  v8 = v7;
  if (v5)
  {
    [v7 pinPodcastStationWithUUID:v9];
  }

  else
  {
    [v7 unpinPodcastStationWithUUID:v9];
  }
}

- (id)_stationSwitchCellValueForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:NMBUISpecifierModelObjectKey];
  v5 = [NSNumber numberWithBool:[(MTBMainVC *)self _isStationWithUUIDPinned:v4]];

  return v5;
}

- (NSFetchedResultsController)availablePodcastsFetchedResultsController
{
  if (!self->_availablePodcastsFetchedResultsController)
  {
    if (+[MTDB canExtensionOpenDatabase])
    {
      v3 = [NSFetchRequest fetchRequestWithEntityName:kMTPodcastEntityName];
      v4 = +[MTPodcast predicateForSubscribedAndNotHidden];
      v5 = +[MTPodcast predicateForEntitledShows];
      v6 = [v4 AND:v5];
      v7 = kPodcastTitle;
      v8 = [NSPredicate predicateWithFormat:@"%K != NULL", kPodcastTitle];
      v9 = [v6 AND:v8];
      [v3 setPredicate:v9];

      v10 = [MTPodcast sortDescriptorsForTitle:1];
      [v3 setSortDescriptors:v10];

      v25[0] = v7;
      v25[1] = kPodcastFeedUrl;
      v25[2] = kPodcastUuid;
      v11 = [NSArray arrayWithObjects:v25 count:3];
      [v3 setPropertiesToFetch:v11];

      [v3 setFetchBatchSize:20];
      v12 = [NSFetchedResultsController alloc];
      v13 = +[MTDB sharedInstance];
      v14 = [v13 mainQueueContext];
      v15 = [v12 initWithFetchRequest:v3 managedObjectContext:v14 sectionNameKeyPath:0 cacheName:0];

      v22 = 0;
      LOBYTE(v14) = [(NSFetchedResultsController *)v15 performFetch:&v22];
      v16 = v22;
      if ((v14 & 1) == 0)
      {
        v17 = _MTLogCategoryBridge();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v24 = v16;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "Could not fetch podcasts: %@", buf, 0xCu);
        }
      }

      availablePodcastsFetchedResultsController = self->_availablePodcastsFetchedResultsController;
      self->_availablePodcastsFetchedResultsController = v15;
      v19 = v15;
    }

    else
    {
      self->_waitingForDatabaseSetup = 1;
      v3 = _MTLogCategoryBridge();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Failed to fetch available podcasts because database not ready yet!", buf, 2u);
      }
    }
  }

  v20 = self->_availablePodcastsFetchedResultsController;

  return v20;
}

- (NSFetchedResultsController)availablePodcastStationsFetchedResultsController
{
  if (!self->_availablePodcastStationsFetchedResultsController)
  {
    if (+[MTDB canExtensionOpenDatabase])
    {
      v3 = [NSFetchRequest fetchRequestWithEntityName:kMTPlaylistEntityName];
      v4 = +[MTPlaylist topLevelPlaylistsPredicate];
      v5 = [NSPredicate predicateWithFormat:@"%K != NULL", kPlaylistTitle];
      v6 = [v4 AND:v5];
      [v3 setPredicate:v6];

      v7 = +[MTPlaylist sortDescriptors];
      [v3 setSortDescriptors:v7];

      [v3 setFetchBatchSize:20];
      v8 = +[MTDB sharedInstance];
      v9 = [v8 mainQueueContext];

      v10 = [[NSFetchedResultsController alloc] initWithFetchRequest:v3 managedObjectContext:v9 sectionNameKeyPath:0 cacheName:0];
      v18 = 0;
      v11 = [(NSFetchedResultsController *)v10 performFetch:&v18];
      v12 = v18;
      if ((v11 & 1) == 0)
      {
        v13 = _MTLogCategoryBridge();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v20 = v12;
          _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "Could not fetch podcast stations: %@", buf, 0xCu);
        }
      }

      availablePodcastStationsFetchedResultsController = self->_availablePodcastStationsFetchedResultsController;
      self->_availablePodcastStationsFetchedResultsController = v10;
      v15 = v10;
    }

    else
    {
      self->_waitingForDatabaseSetup = 1;
      v3 = _MTLogCategoryBridge();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Failed to fetch available podcast stations because database not ready yet!", buf, 2u);
      }
    }
  }

  v16 = self->_availablePodcastStationsFetchedResultsController;

  return v16;
}

- (void)_handlePodcastsIdentifiersDidChangeNotification:(id)a3
{
  cachedPinnedFeedURLs = self->_cachedPinnedFeedURLs;
  self->_cachedPinnedFeedURLs = 0;

  cachedPinnedStationUUIDs = self->_cachedPinnedStationUUIDs;
  self->_cachedPinnedStationUUIDs = 0;

  [(MTBMainVC *)self _reload];
}

- (void)_handleSyncInfoDidUpdateNotification:(id)a3
{
  v4 = [a3 object];
  v5 = [(MTBMainVC *)self syncInfoController];

  if (v4 == v5)
  {

    [(MTBMainVC *)self _updateHeaderAndSyncProgress];
  }

  else
  {
    v6 = _MTLogCategoryBridge();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Ignoring media sync info update from a different syncInfoController.", v7, 2u);
    }
  }
}

- (void)_handleApplicationWillEnterForegroundNotification:(id)a3
{
  v3 = [(MTBMainVC *)self syncInfoController];
  [v3 beginObservingSyncInfo];
}

- (void)_handleApplicationDidEnterBackgroundNotification:(id)a3
{
  v3 = [(MTBMainVC *)self syncInfoController];
  [v3 endObservingSyncInfo];
}

- (void)_handlePodcastsDidUpdateNotification
{
  [(MTBMainVC *)self setWaitingForDatabaseSetup:0];
  v3 = [(MTBMainVC *)self availablePodcastsFetchedResultsController];
  [v3 performFetch:0];

  v4 = [(MTBMainVC *)self availablePodcastStationsFetchedResultsController];
  [v4 performFetch:0];

  [(MTBMainVC *)self _reload];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v14 = v13;
  if (v13 != v11)
  {

LABEL_5:
    v16.receiver = self;
    v16.super_class = MTBMainVC;
    [(MTBMainVC *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    goto LABEL_6;
  }

  v15 = [v10 isEqualToString:kMTSyncSubscriptionsKey];

  if (!v15)
  {
    goto LABEL_5;
  }

  [(MTBMainVC *)self _reload];
LABEL_6:
}

- (id)_contentHeaderViewTitle
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"C7C06707-D0C2-405E-AFB4-7F215413B262"];
  v8 = [v6 supportsCapability:v7];

  if (!v8)
  {
    v13 = +[NMSMediaPinningManager sharedManager];
    v14 = [v13 podcastFeedURLs];
    v15 = [v14 count];

    v16 = +[NMSMediaPinningManager sharedManager];
    v17 = [v16 podcastStationUUIDs];
    v18 = [v17 count];

    if (v15 && v18)
    {
      v19 = +[NSBundle podcastsFoundationBundle];
      v20 = [v19 localizedStringForKey:@"SYNC_SETTINGS_CONTENT_SUMMARY_HEADER_SHOWS_STATIONS" value:&stru_1CB88 table:0];
      v21 = [NSString localizedStringWithFormat:v20, v15, v18];

      goto LABEL_14;
    }

    if (v15)
    {
      v22 = +[NSBundle podcastsFoundationBundle];
      v23 = [v22 localizedStringForKey:@"SYNC_SETTINGS_CONTENT_SUMMARY_HEADER_SHOWS" value:&stru_1CB88 table:0];
      [NSString localizedStringWithFormat:v23, v15];
    }

    else
    {
      if (!v18)
      {
        goto LABEL_12;
      }

      v22 = +[NSBundle podcastsFoundationBundle];
      v23 = [v22 localizedStringForKey:@"SYNC_SETTINGS_CONTENT_SUMMARY_HEADER_STATIONS" value:&stru_1CB88 table:0];
      [NSString localizedStringWithFormat:v23, v18];
    }
    v21 = ;

    goto LABEL_14;
  }

  v9 = [(MTBMainVC *)self syncInfoController];
  v10 = [v9 syncInfo];
  v11 = [v10 itemCount];

  if (!v11)
  {
LABEL_12:
    v12 = +[MTBridgeUtilities localizedNoPodcastsString];
    goto LABEL_13;
  }

  v12 = [MTBridgeUtilities localizedStringForEpisodeCount:v11];
LABEL_13:
  v21 = v12;
LABEL_14:

  return v21;
}

- (id)_contentHeaderViewSubtitle
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"C7C06707-D0C2-405E-AFB4-7F215413B262"];
  v8 = [v6 supportsCapability:v7];

  if (!v8)
  {
    v16 = +[NMSMediaPinningManager sharedManager];
    v17 = [v16 podcastFeedURLs];
    if (![v17 count])
    {
      v18 = +[NMSMediaPinningManager sharedManager];
      v19 = [v18 podcastStationUUIDs];
      if (![v19 count])
      {
        v30 = +[NMSMediaPinningManager sharedManager];
        v31 = [v30 savedEpisodesEnabled];

        if ((v31 & 1) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_8;
      }
    }

    goto LABEL_8;
  }

  v9 = [(MTBMainVC *)self syncInfoController];
  v10 = [v9 syncInfo];
  v11 = [v10 itemCount];

  if (!v11)
  {
LABEL_3:
    v12 = +[NSBundle podcastsFoundationBundle];
    v13 = v12;
    v14 = @"SYNC_SETTINGS_CONTENT_SUMMARY_HEADER_NOTHING_ADDED_MESSAGE";
    v15 = @"You can choose to automatically keep your Up Next episodes up-to-date on your Apple Watch, or manually add shows and stations from your iPhone.";
LABEL_13:
    v26 = [v12 localizedStringForKey:v14 value:v15 table:0];
    goto LABEL_14;
  }

LABEL_8:
  v20 = +[NRPairedDeviceRegistry sharedInstance];
  v21 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v22 = [v20 getAllDevicesWithArchivedAltAccountDevicesMatching:v21];
  v23 = [v22 firstObject];
  v24 = [[NSUUID alloc] initWithUUIDString:@"2E9A45BB-4F07-4D6B-9B65-41933EED0DCA"];
  v25 = [v23 supportsCapability:v24];

  if (!v25)
  {
    if ([(MTBMainVC *)self _legacyIsCharging])
    {
      v13 = +[NMSSyncManager sharedManager];
      v27 = [v13 podcastsProgressInfo];
      v28 = [v27 _trackProgressTextForMediaType:4];

      goto LABEL_15;
    }

    v12 = +[NSBundle podcastsFoundationBundle];
    v13 = v12;
    v14 = @"SYNC_SETTINGS_OFF_PUCK_HEADER_MESSAGE";
    v15 = @"Podcasts download when Apple Watch is charging";
    goto LABEL_13;
  }

  v13 = [(MTBMainVC *)self syncInfoController];
  v26 = [v13 syncStatusDetailText];
LABEL_14:
  v28 = v26;
LABEL_15:

  return v28;
}

- (float)_contentHeaderViewProgress
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"2E9A45BB-4F07-4D6B-9B65-41933EED0DCA"];
  v8 = [v6 supportsCapability:v7];

  if (v8)
  {
    v9 = [(MTBMainVC *)self syncInfoController];
    v10 = [v9 syncInfo];
    [v10 progress];
  }

  else
  {
    v9 = +[NMSSyncManager sharedManager];
    v10 = [v9 podcastsProgressInfo];
    [v10 estimatedSyncProgress];
  }

  v12 = v11;

  return v12;
}

- (BOOL)_isOutOfSpace
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"2E9A45BB-4F07-4D6B-9B65-41933EED0DCA"];
  v8 = [v6 supportsCapability:v7];

  if (v8)
  {
    v9 = [(MTBMainVC *)self syncInfoController];
    v10 = [v9 syncInfo];
    v11 = [v10 hasItemsOverStorageLimit];

    return v11;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v13 = +[NMSMediaPinningManager sharedManager];
  v14 = [v13 podcastFeedURLs];

  v15 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v35;
LABEL_5:
    v18 = 0;
    while (1)
    {
      if (*v35 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = [NMSMediaItemGroup itemGroupWithCustomPodcastFeedURL:*(*(&v34 + 1) + 8 * v18) downloadedItemsOnly:0];
      v20 = +[NMSMediaPinningManager sharedManager];
      v21 = [v20 isItemGroupWithinQuota:v19];

      if (!v21)
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v16)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = +[NMSMediaPinningManager sharedManager];
    v14 = [v22 podcastStationUUIDs];

    v23 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (!v23)
    {
LABEL_19:

      return 0;
    }

    v24 = v23;
    v25 = *v31;
LABEL_13:
    v26 = 0;
    while (1)
    {
      if (*v31 != v25)
      {
        objc_enumerationMutation(v14);
      }

      v27 = [NMSMediaItemGroup itemGroupWithPodcastStationUUID:*(*(&v30 + 1) + 8 * v26) downloadedItemsOnly:0];
      v28 = +[NMSMediaPinningManager sharedManager];
      v29 = [v28 isItemGroupWithinQuota:v27];

      if (!v29)
      {
        break;
      }

      if (v24 == ++v26)
      {
        v24 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v24)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }
  }

  return 1;
}

- (BOOL)_shouldShowProgress
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"C7C06707-D0C2-405E-AFB4-7F215413B262"];
  v8 = [v6 supportsCapability:v7];

  if (v8)
  {
    v9 = [(MTBMainVC *)self syncInfoController];
    v10 = [v9 syncInfo];
    if ([v10 itemCount])
    {
      v11 = [(MTBMainVC *)self syncInfoController];
      v12 = [v11 syncInfo];
      v13 = [v12 status] != &dword_4;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_15;
  }

  v14 = +[NRPairedDeviceRegistry sharedInstance];
  v15 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v16 = [v14 getAllDevicesWithArchivedAltAccountDevicesMatching:v15];
  v17 = [v16 firstObject];
  v18 = [[NSUUID alloc] initWithUUIDString:@"2E9A45BB-4F07-4D6B-9B65-41933EED0DCA"];
  v19 = [v17 supportsCapability:v18];

  if (v19)
  {
    v20 = +[NMSMediaPinningManager sharedManager];
    v21 = [v20 podcastFeedURLs];
    v22 = [v21 count];

    v23 = +[NMSMediaPinningManager sharedManager];
    v24 = [v23 podcastStationUUIDs];
    v25 = [v24 count];

    v26 = -v25;
    v27 = +[NRPairedDeviceRegistry sharedInstance];
    v28 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v29 = [v27 getAllDevicesWithArchivedAltAccountDevicesMatching:v28];
    v30 = [v29 firstObject];
    v31 = [[NSUUID alloc] initWithUUIDString:@"B743795D-BA43-40D7-BA73-D1415B0895D4"];
    v32 = [v30 supportsCapability:v31];

    if (v32)
    {
      if (v22 != v26)
      {
        goto LABEL_14;
      }

      v33 = +[NMSMediaPinningManager sharedManager];
      v34 = [v33 savedEpisodesEnabled];

      if (v34)
      {
        goto LABEL_14;
      }
    }

    else if (v22 != v26)
    {
LABEL_14:
      v9 = [(MTBMainVC *)self syncInfoController];
      v10 = [v9 syncInfo];
      v13 = [v10 status] != &dword_4;
      goto LABEL_15;
    }
  }

  else if ([(MTBMainVC *)self _legacyIsCharging])
  {
    v9 = +[NMSSyncManager sharedManager];
    v10 = [v9 podcastsProgressInfo];
    v13 = [v10 _isSyncing];
LABEL_15:

    return v13;
  }

  return 0;
}

- (void)_configureHeaderIfNeeded
{
  if (![(MTBMainVC *)self isViewLoaded])
  {
    return;
  }

  v39 = [(MTBMainVC *)self table];
  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  if ([v3 BOOLForKey:kMTSyncSubscriptionsKey])
  {
    v4 = +[NMBUIAccountUtil sharedInstance];
    v5 = [v4 hasITunesAccount];

    if (v5)
    {
      v6 = +[NSMutableArray array];
      if ([(MTBMainVC *)self _isOutOfSpace])
      {
        v7 = [NMBUIAlertHeaderView alloc];
        x = CGRectZero.origin.x;
        y = CGRectZero.origin.y;
        width = CGRectZero.size.width;
        height = CGRectZero.size.height;
        v12 = [v7 initWithFrame:{CGRectZero.origin.x, y, width, height}];
        v13 = +[UIColor systemYellowColor];
        [v12 setTintColor:v13];

        v14 = +[MTBridgeUtilities localizedOutOfSpaceHeaderTitle];
        v15 = [v12 textLabel];
        [v15 setText:v14];

        v16 = +[MTBridgeUtilities localizedOutOfSpaceHeaderMessage];
        v17 = [v12 detailTextLabel];
        [v17 setText:v16];

        [v12 setPreservesSuperviewLayoutMargins:1];
        [v6 addObject:v12];
      }

      else
      {
        x = CGRectZero.origin.x;
        y = CGRectZero.origin.y;
        width = CGRectZero.size.width;
        height = CGRectZero.size.height;
      }

      v18 = [[NMBUIContentHeaderView alloc] initWithFrame:{x, y, width, height}];
      v19 = [(MTBMainVC *)self _contentHeaderViewTitle];
      v20 = [v18 textLabel];
      [v20 setText:v19];

      v21 = [(MTBMainVC *)self _contentHeaderViewSubtitle];
      v22 = [v18 detailTextLabel];
      [v22 setText:v21];

      [v18 setPreservesSuperviewLayoutMargins:1];
      if ([(MTBMainVC *)self _shouldShowProgress])
      {
        [(MTBMainVC *)self _contentHeaderViewProgress];
        v24 = v23;
        v25 = [v18 progressView];
        LODWORD(v26) = v24;
        [v25 setProgress:v26];
      }

      [v6 addObject:v18];
      v27 = [[UIStackView alloc] initWithArrangedSubviews:v6];
      [v27 setAxis:1];
      [v39 directionalLayoutMargins];
      v29 = v28;
      v30 = +[UIListContentConfiguration cellConfiguration];
      [v30 directionalLayoutMargins];
      v32 = v29 + v31;

      [v27 setDirectionalLayoutMargins:{0.0, v32, 0.0, v32}];
      [v39 bounds];
      v34 = v33;
      v36 = v35;
      LODWORD(v33) = 1148846080;
      LODWORD(v35) = 1112014848;
      [v27 systemLayoutSizeFittingSize:v34 withHorizontalFittingPriority:v36 verticalFittingPriority:{v33, v35}];
      [v27 setBounds:{0.0, 0.0, v37, v38}];
      [v39 setTableHeaderView:v27];

      goto LABEL_13;
    }
  }

  else
  {
  }

  [v39 setTableHeaderView:0];
LABEL_13:
}

- (void)_updateProgressIfNeeded
{
  v2 = self;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(MTBMainVC *)self specifiers];
  v3 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v3)
  {
    v4 = v3;
    v38 = NMBUISpecifierModelObjectKey;
    v39 = *v43;
    v33 = kNMSMediaSyncInfoSavedEpisodesIdentifier;
    v37 = NMBUISpecifierDownloadStateKey;
    v36 = NMBUISpecifierDownloadProgressKey;
    do
    {
      v5 = 0;
      v35 = v4;
      do
      {
        if (*v43 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v42 + 1) + 8 * v5);
        v7 = [v6 propertyForKey:v38];
        if (v7)
        {
          if (-[MTBMainVC _isPodcastWithFeedURLPinned:](v2, "_isPodcastWithFeedURLPinned:", v7) || -[MTBMainVC _isStationWithUUIDPinned:](v2, "_isStationWithUUIDPinned:", v7) || [v7 isEqualToString:v33] && (+[NMSMediaPinningManager sharedManager](NMSMediaPinningManager, "sharedManager"), v30 = objc_claimAutoreleasedReturnValue(), v31 = objc_msgSend(v30, "savedEpisodesEnabled"), v30, v31))
          {
            v8 = [v6 propertyForKey:v37];
            v41 = [v8 unsignedIntegerValue];

            v9 = [v6 propertyForKey:v36];
            [v9 floatValue];
            v11 = v10;

            v12 = [(MTBMainVC *)v2 syncInfoController];
            v40 = [v12 downloadStateForModelObject:v7];

            v13 = +[NRPairedDeviceRegistry sharedInstance];
            +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
            v15 = v14 = v2;
            v16 = [v13 getAllDevicesWithArchivedAltAccountDevicesMatching:v15];
            v17 = [v16 firstObject];
            v18 = [[NSUUID alloc] initWithUUIDString:@"2E9A45BB-4F07-4D6B-9B65-41933EED0DCA"];
            v19 = [v17 supportsCapability:v18];

            if (v19)
            {
              v2 = v14;
              v20 = v40;
            }

            else
            {
              v20 = [(MTBMainVC *)v14 _resolvedProgressViewStateForState:v40];
              v2 = v14;
            }

            v21 = [(MTBMainVC *)v2 syncInfoController];
            [v21 progressForModelObject:v7];
            v23 = v22;

            v4 = v35;
            if (v41 != v20 || vabds_f32(v11, v23) > 0.00000011921)
            {
              v24 = [(MTBMainVC *)v2 table];
              v25 = [(MTBMainVC *)v2 indexPathForSpecifier:v6];
              v26 = [v24 cellForRowAtIndexPath:v25];

              v27 = [NSNumber numberWithUnsignedInteger:v20];
              [v6 setProperty:v27 forKey:v37];

              *&v28 = v23;
              v29 = [NSNumber numberWithFloat:v28];
              [v6 setProperty:v29 forKey:v36];

              [v26 refreshCellContentsWithSpecifier:v6];
            }
          }
        }

        v5 = v5 + 1;
      }

      while (v4 != v5);
      v32 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      v4 = v32;
    }

    while (v32);
  }
}

- (void)_updateHeaderAndSyncProgress
{
  if ([(MTBMainVC *)self isViewLoaded])
  {
    [(MTBMainVC *)self _configureHeaderIfNeeded];

    [(MTBMainVC *)self _updateProgressIfNeeded];
  }

  else
  {
    v3 = _MTLogCategoryBridge();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Ignoring media sync info update due to view not being loaded.", v4, 2u);
    }
  }
}

- (void)_reload
{
  [(MTBMainVC *)self reloadSpecifiers];

  [(MTBMainVC *)self _updateHeaderAndSyncProgress];
}

- (id)_savedAndStationSpecifiers
{
  v3 = +[NRPairedDeviceRegistry sharedInstance];
  v4 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v5 = [v3 getAllDevicesWithArchivedAltAccountDevicesMatching:v4];
  v6 = [v5 firstObject];
  v7 = [[NSUUID alloc] initWithUUIDString:@"B743795D-BA43-40D7-BA73-D1415B0895D4"];
  if ([v6 supportsCapability:v7])
  {
  }

  else
  {
    v40 = +[NRPairedDeviceRegistry sharedInstance];
    +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v8 = v41 = v3;
    v9 = [v40 getAllDevicesWithArchivedAltAccountDevicesMatching:v8];
    v10 = [v9 firstObject];
    v11 = [[NSUUID alloc] initWithUUIDString:@"B51CCBC5-6C2B-47BB-90EA-002DE9C4DA79"];
    v12 = [v10 supportsCapability:v11];

    if ((v12 & 1) == 0)
    {
      v38 = &__NSArray0__struct;
      goto LABEL_19;
    }
  }

  v13 = +[NSBundle podcastsFoundationBundle];
  v14 = [v13 localizedStringForKey:@"CHOOSE_STATIONS_GROUP_HEADER" value:@"Choose Stations" table:0];
  v15 = [PSSpecifier groupSpecifierWithID:@"NMTPodcastStationsGroupSpecifierID" name:v14];
  v16 = [NSMutableArray arrayWithObject:v15];

  if ([(MTBMainVC *)self isWaitingForDatabaseSetup])
  {
    v17 = [(MTBMainVC *)self _newLoadingSpecifier];
    [v16 addObject:v17];
  }

  else
  {
    v18 = +[NRPairedDeviceRegistry sharedInstance];
    v19 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v20 = [v18 getAllDevicesWithArchivedAltAccountDevicesMatching:v19];
    v21 = [v20 firstObject];
    v22 = [[NSUUID alloc] initWithUUIDString:@"B743795D-BA43-40D7-BA73-D1415B0895D4"];
    v23 = [v21 supportsCapability:v22];

    if (v23)
    {
      v24 = [(MTBMainVC *)self _specifierForSavedEpisodes];
      [v16 addObject:v24];
    }

    v25 = +[NRPairedDeviceRegistry sharedInstance];
    v26 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v27 = [v25 getAllDevicesWithArchivedAltAccountDevicesMatching:v26];
    v28 = [v27 firstObject];
    v29 = [[NSUUID alloc] initWithUUIDString:@"B51CCBC5-6C2B-47BB-90EA-002DE9C4DA79"];
    v30 = [v28 supportsCapability:v29];

    if (v30)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v31 = [(MTBMainVC *)self availablePodcastStationsFetchedResultsController];
      v32 = [v31 fetchedObjects];

      v33 = [v32 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v43;
        do
        {
          for (i = 0; i != v34; i = i + 1)
          {
            if (*v43 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = [(MTBMainVC *)self _specifierForStation:*(*(&v42 + 1) + 8 * i)];
            [v16 addObject:v37];
          }

          v34 = [v32 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v34);
      }
    }
  }

  v38 = [v16 copy];

LABEL_19:

  return v38;
}

- (id)_specifierForSavedEpisodes
{
  v3 = +[MTBridgeUtilities localizedSavedString];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"_setSavedEpisodesSwitchCell:specifier:" get:"_savedEpisodesSwitchCellValueForSpecifier:" detail:0 cell:4 edit:0];

  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v5 = +[MTBridgeUtilities localizedSavedString];
  [v4 setProperty:v5 forKey:NMBUISpecifierTitleKey];

  v6 = [(MTBMainVC *)self _cellImageWithSymbolName:@"bookmark"];
  [v4 setProperty:v6 forKey:NMBUISpecifierPlaceholderImageKey];

  v7 = kNMSMediaSyncInfoSavedEpisodesIdentifier;
  [v4 setProperty:kNMSMediaSyncInfoSavedEpisodesIdentifier forKey:NMBUISpecifierModelObjectKey];
  [v4 setProperty:&__kCFBooleanTrue forKey:NMBUISpecifierShouldShowSwitchKey];
  v8 = +[NMSMediaPinningManager sharedManager];
  v9 = [v8 savedEpisodesEnabled];

  if (v9)
  {
    v10 = +[NRPairedDeviceRegistry sharedInstance];
    v11 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v12 = [v10 getAllDevicesWithArchivedAltAccountDevicesMatching:v11];
    v13 = [v12 firstObject];
    v14 = [[NSUUID alloc] initWithUUIDString:@"2E9A45BB-4F07-4D6B-9B65-41933EED0DCA"];
    v15 = [v13 supportsCapability:v14];

    if (v15)
    {
      v16 = [(MTBMainVC *)self syncInfoController];
      v17 = [v16 downloadStateForModelObject:v7];

      v18 = [(MTBMainVC *)self syncInfoController];
      [v18 progressForModelObject:v7];
      v20 = v19;

      [v4 setProperty:&__kCFBooleanTrue forKey:NMBUISpecifierShouldShowDownloadInfoKey];
      v21 = [NSNumber numberWithUnsignedInteger:v17];
      [v4 setProperty:v21 forKey:NMBUISpecifierDownloadStateKey];

      LODWORD(v22) = v20;
      self = [NSNumber numberWithFloat:v22];
      v23 = &NMBUISpecifierDownloadProgressKey;
      v24 = self;
    }

    else
    {
      v24 = [NMSMediaItemGroup itemGroupWithSavedEpisodesDownloadedItemsOnly:0];
      v25 = +[NMSMediaPinningManager sharedManager];
      v26 = [v25 isItemGroupWithinQuota:v24];

      if (v26)
      {
LABEL_7:

        goto LABEL_8;
      }

      [v4 setProperty:&__kCFBooleanTrue forKey:NMBUISpecifierShouldShowExclamationIconKey];
      v27 = NSStringFromSelector("_showSyncStorageWarning");
      [v4 setProperty:v27 forKey:NMBUISpecifierIconActionStringKey];

      v23 = &NMBUISpecifierIconTargetKey;
    }

    [v4 setProperty:self forKey:*v23];
    goto LABEL_7;
  }

LABEL_8:

  return v4;
}

- (id)_specifierForStation:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryBridge();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 title];
    *buf = 138412290;
    v38 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "podcast station specifier <%@>", buf, 0xCu);
  }

  v7 = [v4 title];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"_setStationSwitchCell:specifier:" get:"_stationSwitchCellValueForSpecifier:" detail:0 cell:4 edit:0];

  [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v9 = [v4 title];
  [v8 setProperty:v9 forKey:NMBUISpecifierTitleKey];

  v10 = [v4 artworkCatalog];
  [v8 setProperty:v10 forKey:NMBUISpecifierArtworkCatalogKey];

  v11 = [(MTBMainVC *)self _placeholderPodcastsImage];
  [v8 setProperty:v11 forKey:NMBUISpecifierPlaceholderImageKey];

  v12 = [v4 uuid];
  [v8 setProperty:v12 forKey:NMBUISpecifierModelObjectKey];

  [v8 setProperty:&__kCFBooleanTrue forKey:NMBUISpecifierShouldShowSwitchKey];
  v13 = [v4 uuid];
  v14 = [(MTBMainVC *)self _isStationWithUUIDPinned:v13];

  if (v14)
  {
    v15 = +[NRPairedDeviceRegistry sharedInstance];
    v16 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v17 = [v15 getAllDevicesWithArchivedAltAccountDevicesMatching:v16];
    v18 = [v17 firstObject];
    v19 = [[NSUUID alloc] initWithUUIDString:@"2E9A45BB-4F07-4D6B-9B65-41933EED0DCA"];
    v20 = [v18 supportsCapability:v19];

    if (v20)
    {
      v21 = [(MTBMainVC *)self syncInfoController];
      v22 = [v4 uuid];
      v23 = [v21 downloadStateForModelObject:v22];

      v24 = [(MTBMainVC *)self syncInfoController];
      v25 = [v4 uuid];
      [v24 progressForModelObject:v25];
      v27 = v26;

      [v8 setProperty:&__kCFBooleanTrue forKey:NMBUISpecifierShouldShowDownloadInfoKey];
      v28 = [NSNumber numberWithUnsignedInteger:v23];
      [v8 setProperty:v28 forKey:NMBUISpecifierDownloadStateKey];

      LODWORD(v29) = v27;
      self = [NSNumber numberWithFloat:v29];
      v30 = &NMBUISpecifierDownloadProgressKey;
      v31 = self;
    }

    else
    {
      v32 = [v4 uuid];
      v31 = [NMSMediaItemGroup itemGroupWithPodcastStationUUID:v32 downloadedItemsOnly:0];

      v33 = +[NMSMediaPinningManager sharedManager];
      v34 = [v33 isItemGroupWithinQuota:v31];

      if (v34)
      {
LABEL_9:

        goto LABEL_10;
      }

      [v8 setProperty:&__kCFBooleanTrue forKey:NMBUISpecifierShouldShowExclamationIconKey];
      v35 = NSStringFromSelector("_showSyncStorageWarning");
      [v8 setProperty:v35 forKey:NMBUISpecifierIconActionStringKey];

      v30 = &NMBUISpecifierIconTargetKey;
    }

    [v8 setProperty:self forKey:*v30];
    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

- (id)_podcastSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = +[MTBridgeUtilities localizedChooseShowsString];
  v5 = [PSSpecifier groupSpecifierWithID:@"NMTPodcastsGroupSpecifierID" name:v4];
  [v3 addObject:v5];

  if ([(MTBMainVC *)self isWaitingForDatabaseSetup])
  {
    v6 = [(MTBMainVC *)self _newLoadingSpecifier];
    [v3 addObject:v6];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [(MTBMainVC *)self availablePodcastsFetchedResultsController];
    v8 = [v7 fetchedObjects];

    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(MTBMainVC *)self _specifierForPodcast:*(*(&v16 + 1) + 8 * i)];
          [v3 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  v14 = [v3 copy];

  return v14;
}

- (id)_specifierForPodcast:(id)a3
{
  v4 = a3;
  v5 = _MTLogCategoryBridge();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 title];
    *buf = 138412290;
    v38 = v6;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "podcast specifier <%@>", buf, 0xCu);
  }

  v7 = [v4 title];
  v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:"_setPodcastSwitchCell:specifier:" get:"_podcastSwitchCellValueForSpecifier:" detail:0 cell:4 edit:0];

  [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v9 = [v4 title];
  [v8 setProperty:v9 forKey:NMBUISpecifierTitleKey];

  v10 = [v4 artworkCatalog];
  [v8 setProperty:v10 forKey:NMBUISpecifierArtworkCatalogKey];

  v11 = [(MTBMainVC *)self _placeholderPodcastsImage];
  [v8 setProperty:v11 forKey:NMBUISpecifierPlaceholderImageKey];

  v12 = [v4 feedURL];
  [v8 setProperty:v12 forKey:NMBUISpecifierModelObjectKey];

  [v8 setProperty:&__kCFBooleanTrue forKey:NMBUISpecifierShouldShowSwitchKey];
  v13 = [v4 feedURL];
  v14 = [(MTBMainVC *)self _isPodcastWithFeedURLPinned:v13];

  if (v14)
  {
    v15 = +[NRPairedDeviceRegistry sharedInstance];
    v16 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v17 = [v15 getAllDevicesWithArchivedAltAccountDevicesMatching:v16];
    v18 = [v17 firstObject];
    v19 = [[NSUUID alloc] initWithUUIDString:@"2E9A45BB-4F07-4D6B-9B65-41933EED0DCA"];
    v20 = [v18 supportsCapability:v19];

    if (v20)
    {
      v21 = [(MTBMainVC *)self syncInfoController];
      v22 = [v4 feedURL];
      v23 = [v21 downloadStateForModelObject:v22];

      v24 = [(MTBMainVC *)self syncInfoController];
      v25 = [v4 feedURL];
      [v24 progressForModelObject:v25];
      v27 = v26;

      [v8 setProperty:&__kCFBooleanTrue forKey:NMBUISpecifierShouldShowDownloadInfoKey];
      v28 = [NSNumber numberWithUnsignedInteger:v23];
      [v8 setProperty:v28 forKey:NMBUISpecifierDownloadStateKey];

      LODWORD(v29) = v27;
      self = [NSNumber numberWithFloat:v29];
      v30 = &NMBUISpecifierDownloadProgressKey;
      v31 = self;
    }

    else
    {
      v32 = [v4 feedURL];
      v31 = [NMSMediaItemGroup itemGroupWithCustomPodcastFeedURL:v32 downloadedItemsOnly:0];

      v33 = +[NMSMediaPinningManager sharedManager];
      v34 = [v33 isItemGroupWithinQuota:v31];

      if (v34)
      {
LABEL_9:

        goto LABEL_10;
      }

      [v8 setProperty:&__kCFBooleanTrue forKey:NMBUISpecifierShouldShowExclamationIconKey];
      v35 = NSStringFromSelector("_showSyncStorageWarning");
      [v8 setProperty:v35 forKey:NMBUISpecifierIconActionStringKey];

      v30 = &NMBUISpecifierIconTargetKey;
    }

    [v8 setProperty:self forKey:*v30];
    goto LABEL_9;
  }

LABEL_10:

  return v8;
}

- (void)_showSyncStorageWarning
{
  v3 = +[NSBundle podcastsFoundationBundle];
  v4 = [v3 localizedStringForKey:@"SYNC_SETTINGS_SYNC_STORAGE_LIMIT_TOO_LOW_TITLE" value:@"The storage space dedicated to media on your Apple Watch is full." table:0];
  v5 = +[NSBundle podcastsFoundationBundle];
  v6 = [v5 localizedStringForKey:@"SYNC_SETTINGS_SYNC_STORAGE_LIMIT_TOO_LOW_MESSAGE" value:@"To make space available table:{you can remove some podcasts, music, or audiobooks.", 0}];
  v11 = [UIAlertController alertControllerWithTitle:v4 message:v6 preferredStyle:1];

  v7 = +[NSBundle podcastsFoundationBundle];
  v8 = [v7 localizedStringForKey:@"SYNC_SETTINGS_SYNC_STORAGE_LIMIT_TOO_LOW_OK_ACTION" value:@"OK" table:0];
  v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:0];
  [v11 addAction:v9];

  v10 = [(MTBMainVC *)self _selfOrPresentedViewController];
  [v10 presentViewController:v11 animated:1 completion:0];
}

- (id)_selfOrPresentedViewController
{
  v3 = [(MTBMainVC *)self presentedViewController];

  if (v3)
  {
    v4 = [(MTBMainVC *)self presentedViewController];
  }

  else
  {
    v4 = self;
  }

  return v4;
}

- (void)_launchPodcasts
{
  v2 = kMTApplicationBundleIdentifier;
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [v3 applicationIsInstalled:v2];
  v5 = _MTLogCategoryBridge();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *v10 = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Podcasts is installed. Prelaunching it now.", v10, 2u);
    }

    v5 = objc_alloc_init(FBSOpenApplicationService);
    v13 = FBSOpenApplicationOptionKeyActivateForEvent;
    v11 = FBSActivateForEventOptionTypeBackgroundContentFetching;
    v12 = &__NSDictionary0__struct;
    v7 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v14 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v9 = [FBSOpenApplicationOptions optionsWithDictionary:v8];
    [v5 openApplication:v2 withOptions:v9 completion:&stru_1C9A8];
  }

  else if (v6)
  {
    *v10 = 0;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Podcasts not installed. Skipped launching.", v10, 2u);
  }
}

- (id)_localizedEpisodeDownloadExplanation
{
  v2 = +[NRPairedDeviceRegistry sharedInstance];
  v3 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
  v4 = [v2 getAllDevicesWithArchivedAltAccountDevicesMatching:v3];
  v5 = [v4 firstObject];
  v6 = [[NSUUID alloc] initWithUUIDString:@"B51CCBC5-6C2B-47BB-90EA-002DE9C4DA79"];
  v7 = [v5 supportsCapability:v6];

  v8 = +[NSBundle podcastsFoundationBundle];
  v9 = v8;
  if (v7)
  {
    v10 = @"CUSTOM_STATIONS_FOOTER_STRING";
    v11 = @"Your Apple Watch will try to download three episodes from every show you select. If you select a custom station, your Apple Watch will try to download as many unplayed episodes as possible.";
  }

  else
  {
    v10 = @"CUSTOM_NO_STATIONS_FOOTER_STRING";
    v11 = @"Your Apple Watch will try to download three episodes from every show you select.";
  }

  v12 = [v8 localizedStringForKey:v10 value:v11 table:0];

  return v12;
}

- (unint64_t)_resolvedProgressViewStateForState:(unint64_t)a3
{
  if (a3 == 1)
  {
    if ([(MTBMainVC *)self _legacyIsCharging:v3])
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  return a3;
}

- (BOOL)_legacyIsCharging
{
  v2 = +[NMSSyncManager sharedManager];
  v3 = [v2 podcastsProgressInfo];
  if ([v3 syncState] == &dword_0 + 3)
  {
    v4 = +[NMSSyncManager sharedManager];
    v5 = [v4 podcastsProgressInfo];
    v6 = [v5 syncWaitingSubstate] != &dword_0 + 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)_cellImageWithSymbolName:(id)a3
{
  v4 = a3;
  v5 = [(MTBMainVC *)self imageCache];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v8 = [UIImage _systemImageNamed:v4];
    v9 = [UIImageSymbolConfiguration configurationWithPointSize:24.0];
    v10 = [v8 imageWithSymbolConfiguration:v9];
    v11 = [v10 imageWithRenderingMode:2];

    +[NMBUIMediaTableCell artworkSize];
    UIGraphicsBeginImageContextWithOptions(v35, 1, 0.0);
    v12 = [UIColor colorWithRed:0.247058824 green:0.247058824 blue:0.254901961 alpha:1.0];
    [v12 set];

    +[NMBUIMediaTableCell artworkSize];
    v14 = v13;
    +[NMBUIMediaTableCell artworkSize];
    v36.size.height = v15;
    v36.origin.x = 0.0;
    v36.origin.y = 0.0;
    v36.size.width = v14;
    UIRectFill(v36);
    [v11 size];
    v16 = *&CGAffineTransformIdentity.a;
    __asm { FMOV            V4.2D, #24.0 }

    v22 = vmulq_f64(*&CGAffineTransformIdentity.c, _Q4);
    _UIScaleTransformForAspectFitOfSizeInTargetSize();
    [v11 size];
    +[NMBUIMediaTableCell artworkSize];
    UIRectCenteredIntegralRectScale();
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = +[UIColor systemGrayColor];
    [v31 set];

    [v11 drawInRect:{v24, v26, v28, v30}];
    v7 = UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();
    v32 = [(MTBMainVC *)self imageCache];
    [v32 setObject:v7 forKey:v4];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = MTBMainVC;
  [(MTBMainVC *)&v11 tableView:a3 didSelectRowAtIndexPath:v6];
  if (self->_syncGroupSpecifier)
  {
    v7 = [(MTBMainVC *)self indexPathForSpecifier:?];
    v8 = [v7 section];
  }

  else
  {
    v8 = -1;
  }

  if ([v6 section] == v8)
  {
    v9 = [v6 row];
    if (!v9)
    {
      v10 = 0;
      goto LABEL_9;
    }

    if (v9 == &dword_0 + 1)
    {
      v10 = 1;
LABEL_9:
      [(MTBMainVC *)self _setPodcastsAreUserSet:v10];
    }
  }
}

@end