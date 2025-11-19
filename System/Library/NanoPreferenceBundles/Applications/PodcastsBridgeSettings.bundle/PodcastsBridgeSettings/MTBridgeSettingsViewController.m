@interface MTBridgeSettingsViewController
+ (id)downloadCountFormatter;
- (MTBridgeSettingsViewController)init;
- (id)_addShowsSpecifier;
- (id)_contentHeaderViewSubtitle;
- (id)_contentHeaderViewTitle;
- (id)_savedCellValueForSpecifier:(id)a3;
- (id)_savedSpecifier;
- (id)_showCellValueForSpecifier:(id)a3;
- (id)_showSpecifiers;
- (id)_showsPredicate;
- (id)_stationCellValueForSpecifier:(id)a3;
- (id)_stationSpecifiers;
- (id)_upNextCellValueForSpecifier:(id)a3;
- (id)_upNextSpecifier;
- (id)_valueStringForDownloadSettings:(id)a3;
- (id)specifiers;
- (void)_addShowsAction:(id)a3;
- (void)_configureHeaderIfNeeded;
- (void)_createFRCs;
- (void)_handleAccountDidChangeNotification:(id)a3;
- (void)_handlePodcastsIdentifiersDidChangeNotification:(id)a3;
- (void)_handleSyncInfoDidUpdateNotification:(id)a3;
- (void)_podcastsSettingsAction:(id)a3;
- (void)_presentSettingsViewControllerForSpecifier:(id)a3;
- (void)_reload;
- (void)_signInAction:(id)a3;
- (void)_updateHeaderAndSyncProgress;
- (void)_updateHeaderSize;
- (void)_updateProgressIfNeeded;
- (void)controllerDidChangeContent:(id)a3;
- (void)dealloc;
- (void)extensionAccessDidChange;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation MTBridgeSettingsViewController

- (MTBridgeSettingsViewController)init
{
  v9.receiver = self;
  v9.super_class = MTBridgeSettingsViewController;
  v2 = [(MTBridgeSettingsViewController *)&v9 init];
  if (v2)
  {
    v3 = +[MTDBExtensionAccess sharedInstance];
    [v3 addObserver:v2];

    v4 = [[NMBUISyncInfoController alloc] initWithSyncInfoTarget:1];
    syncInfoController = v2->_syncInfoController;
    v2->_syncInfoController = v4;

    [(NMBUISyncInfoController *)v2->_syncInfoController setDataSource:v2];
    [(MTBridgeSettingsViewController *)v2 _createFRCs];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_handleAccountDidChangeNotification:" name:NMBUIITunesAccountDidChangeNotification object:0];
    [v6 addObserver:v2 selector:"_handlePodcastsIdentifiersDidChangeNotification:" name:NMSMediaPinningManagerPodcastsIdentifiersDidChangeNotification object:0];
    [v6 addObserver:v2 selector:"_handleSyncInfoDidUpdateNotification:" name:NMBUIMediaSyncInfoDidUpdateNotification object:0];
    [v6 addObserver:v2 selector:"_handleApplicationWillEnterForegroundNotification:" name:UIApplicationWillEnterForegroundNotification object:0];
    [v6 addObserver:v2 selector:"_handleApplicationDidEnterBackgroundNotification:" name:UIApplicationDidEnterBackgroundNotification object:0];
    v7 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
    [v7 addObserver:v2 forKeyPath:kMTSyncSubscriptionsKey options:0 context:off_22E48];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v3 removeObserver:self forKeyPath:kMTSyncSubscriptionsKey];

  v4.receiver = self;
  v4.super_class = MTBridgeSettingsViewController;
  [(MTBridgeSettingsViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = MTBridgeSettingsViewController;
  [(MTBridgeSettingsViewController *)&v5 viewDidLoad];
  v3 = +[NSBundle podcastsFoundationBundle];
  v4 = [v3 localizedStringForKey:@"PODCASTS_BRIDGE_TITLE" value:@"Podcasts" table:0];
  [(MTBridgeSettingsViewController *)self setTitle:v4];

  [(MTBridgeSettingsViewController *)self _configureHeaderIfNeeded];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = MTBridgeSettingsViewController;
  [(MTBridgeSettingsViewController *)&v3 viewDidLayoutSubviews];
  [(MTBridgeSettingsViewController *)self _updateHeaderSize];
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v6 = +[NSMutableArray array];
    v7 = +[NMBUIAccountUtil sharedInstance];
    v8 = [v7 hasITunesAccount];

    if (v8)
    {
      v9 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
      v10 = [v9 BOOLForKey:kMTSyncSubscriptionsKey];

      if (v10)
      {
        v11 = +[MTDBExtensionAccess sharedInstance];
        v12 = [v11 isReady];

        if ((v12 & 1) == 0)
        {
          v42 = +[MTDBExtensionAccess sharedInstance];
          [v42 attemptToFix];

          v13 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:15 edit:0];
          +[NMBUIMediaTableCell defaultCellHeight];
          v43 = [NSNumber numberWithDouble:?];
          [v13 setProperty:v43 forKey:PSTableCellHeightKey];

          [v6 addObject:v13];
          goto LABEL_11;
        }

        v13 = [PSSpecifier groupSpecifierWithName:&stru_1CB88];
        v14 = +[MTBridgeUtilities localizedPodcastsDownloadsExplanation];
        v15 = PSFooterTextGroupKey;
        [v13 setProperty:v14 forKey:PSFooterTextGroupKey];

        [v6 addObject:v13];
        v16 = +[MTBridgeUtilities localizedAddEpisodesString];
        v17 = [PSSpecifier groupSpecifierWithID:@"StationsGroup" name:v16];

        [v6 addObject:v17];
        v18 = [(MTBridgeSettingsViewController *)self _upNextSpecifier];
        [v6 addObject:v18];

        v19 = [(MTBridgeSettingsViewController *)self _savedSpecifier];
        [v6 addObject:v19];

        v20 = [(MTBridgeSettingsViewController *)self _stationSpecifiers];
        [v6 addObjectsFromArray:v20];

        v21 = +[MTBridgeUtilities localizedChooseShowsString];
        v22 = [PSSpecifier groupSpecifierWithID:@"ShowsGroup" name:v21];

        v23 = +[NSBundle podcastsFoundationBundle];
        v24 = [v23 localizedStringForKey:@"CHOOSE_SHOWS_GROUP_FOOTER" value:@"Your Apple Watch will try to download unplayed episodes for each show you add." table:0];
        [v22 setProperty:v24 forKey:v15];

        [v6 addObject:v22];
        v25 = [(MTBridgeSettingsViewController *)self _addShowsSpecifier];
        [v6 addObject:v25];

        v26 = [(MTBridgeSettingsViewController *)self _showSpecifiers];
        [v6 addObjectsFromArray:v26];

LABEL_10:
LABEL_11:

        v44.receiver = self;
        v44.super_class = MTBridgeSettingsViewController;
        v33 = [(MTBridgeSettingsViewController *)&v44 specifiers];
        v34 = v33;
        if (v33)
        {
          v35 = v33;
        }

        else
        {
          v35 = +[NSArray array];
        }

        v36 = v35;

        v37 = [v36 specifierForID:BPSMirrorGroupID];
        v38 = +[MTBridgeUtilities localizedNotificationsString];
        [v37 setName:v38];

        [v6 addObjectsFromArray:v36];
        v39 = [v6 copy];
        v40 = *&self->BPSListController_opaque[v2];
        *&self->BPSListController_opaque[v2] = v39;

        v4 = *&self->BPSListController_opaque[v2];
        goto LABEL_15;
      }

      v13 = [PSSpecifier groupSpecifierWithID:@"SyncSubscriptions" name:0];
      v30 = +[MTBridgeUtilities localizedSettingsString];
      v17 = [PSSpecifier preferenceSpecifierNamed:v30 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v17 setButtonAction:"_podcastsSettingsAction:"];
      *&v17[OBJC_IVAR___PSSpecifier_textFieldType] = 1;
      v31 = +[MTBridgeUtilities localizedSettingsMessage];
      [v13 setProperty:v31 forKey:PSFooterTextGroupKey];

      v45[0] = v13;
      v45[1] = v17;
      v29 = v45;
    }

    else
    {
      v13 = [PSSpecifier groupSpecifierWithID:@"SignIn" name:0];
      v27 = +[MTBridgeUtilities localizedSignInString];
      v17 = [PSSpecifier preferenceSpecifierNamed:v27 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v17 setButtonAction:"_signInAction:"];
      *&v17[OBJC_IVAR___PSSpecifier_textFieldType] = 1;
      v28 = +[MTBridgeUtilities localizedSignInMessage];
      [v13 setProperty:v28 forKey:PSFooterTextGroupKey];

      v46[0] = v13;
      v46[1] = v17;
      v29 = v46;
    }

    v32 = [NSArray arrayWithObjects:v29 count:2];
    [v6 addObjectsFromArray:v32];

    goto LABEL_10;
  }

  v4 = v3;
LABEL_15:

  return v4;
}

- (id)_upNextSpecifier
{
  v3 = +[MTBridgeUtilities localizedUpNextString];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:"_upNextCellValueForSpecifier:" detail:0 cell:4 edit:0];

  [v4 setButtonAction:"_presentSettingsViewControllerForSpecifier:"];
  [v4 setProperty:&off_1DA40 forKey:@"MTBCollectionTypeKey"];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v5 = objc_alloc_init(NMBUIMediaTableCellConfiguration);
  v6 = kNMSMediaSyncInfoUpNextIdentifier;
  [v5 setModelObject:kNMSMediaSyncInfoUpNextIdentifier];
  v7 = +[MTBridgeUtilities localizedUpNextString];
  [v5 setTitle:v7];

  [v5 setPlaceholderSystemImageName:@"play"];
  v8 = +[NMSMediaPinningManager sharedManager];
  v9 = [v8 podcastsUpNextDownloadSettings];
  v10 = [v9 isEnabled];

  if (v10)
  {
    v11 = [(NMBUISyncInfoController *)self->_syncInfoController downloadStateForModelObject:v6];
    [(NMBUISyncInfoController *)self->_syncInfoController progressForModelObject:v6];
    v13 = [[NMBUIMediaTableCellDownloadState alloc] initWithState:v11 progress:v12];
    [v5 setDownloadState:v13];
  }

  [v4 setProperty:v5 forKey:NMBUISpecifierCellConfigurationKey];

  return v4;
}

- (id)_savedSpecifier
{
  v3 = +[MTBridgeUtilities localizedSavedString];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:"_savedCellValueForSpecifier:" detail:0 cell:4 edit:0];

  [v4 setButtonAction:"_presentSettingsViewControllerForSpecifier:"];
  [v4 setProperty:&off_1DA58 forKey:@"MTBCollectionTypeKey"];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v5 = objc_alloc_init(NMBUIMediaTableCellConfiguration);
  v6 = kNMSMediaSyncInfoSavedEpisodesIdentifier;
  [v5 setModelObject:kNMSMediaSyncInfoSavedEpisodesIdentifier];
  v7 = +[MTBridgeUtilities localizedSavedString];
  [v5 setTitle:v7];

  [v5 setPlaceholderSystemImageName:@"bookmark"];
  v8 = +[NMSMediaPinningManager sharedManager];
  v9 = [v8 podcastsSavedEpisodesDownloadSettings];
  v10 = [v9 isEnabled];

  if (v10)
  {
    v11 = [(NMBUISyncInfoController *)self->_syncInfoController downloadStateForModelObject:v6];
    [(NMBUISyncInfoController *)self->_syncInfoController progressForModelObject:v6];
    v13 = [[NMBUIMediaTableCellDownloadState alloc] initWithState:v11 progress:v12];
    [v5 setDownloadState:v13];
  }

  [v4 setProperty:v5 forKey:NMBUISpecifierCellConfigurationKey];

  return v4;
}

- (id)_stationSpecifiers
{
  stationsFRC = self->_stationsFRC;
  v41 = 0;
  v4 = [(MTFetchedResultsController *)stationsFRC performFetch:&v41];
  v5 = v41;
  v6 = v5;
  if (v4)
  {
    v31 = v5;
    v7 = +[NSMutableArray array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [(MTFetchedResultsController *)self->_stationsFRC fetchedObjects];
    v36 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v36)
    {
      v35 = *v38;
      v34 = PSCellClassKey;
      v33 = NMBUISpecifierCellConfigurationKey;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          v9 = v7;
          if (*v38 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v37 + 1) + 8 * i);
          v11 = [v10 title];
          v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:"_stationCellValueForSpecifier:" detail:0 cell:4 edit:0];

          [v12 setButtonAction:"_presentSettingsViewControllerForSpecifier:"];
          [v12 setProperty:&off_1DA70 forKey:@"MTBCollectionTypeKey"];
          [v12 setProperty:objc_opt_class() forKey:v34];
          v13 = objc_alloc_init(NMBUIMediaTableCellConfiguration);
          v14 = [v10 uuid];
          [v13 setModelObject:v14];

          v15 = [v10 title];
          [v13 setTitle:v15];

          [v13 setPlaceholderSystemImageName:@"gearshape"];
          v16 = [v10 artworkCatalog];
          [v13 setArtworkCatalog:v16];

          v17 = +[NMSMediaPinningManager sharedManager];
          v18 = [v17 podcastsSelectedStationUUIDs];
          v19 = [v10 uuid];
          v20 = [v18 containsObject:v19];

          if (v20)
          {
            syncInfoController = self->_syncInfoController;
            v22 = [v10 uuid];
            v23 = [(NMBUISyncInfoController *)syncInfoController downloadStateForModelObject:v22];

            v24 = self->_syncInfoController;
            v25 = [v10 uuid];
            [(NMBUISyncInfoController *)v24 progressForModelObject:v25];
            v27 = v26;

            v28 = [[NMBUIMediaTableCellDownloadState alloc] initWithState:v23 progress:v27];
            [v13 setDownloadState:v28];
          }

          [v12 setProperty:v13 forKey:v33];
          v7 = v9;
          [v9 addObject:v12];
        }

        v36 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v36);
    }

    v29 = [v7 copy];
    v6 = v31;
  }

  else
  {
    v7 = _MTLogCategoryBridge();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Could not fetch podcast stations: %@", buf, 0xCu);
    }

    v29 = &__NSArray0__struct;
  }

  return v29;
}

- (id)_addShowsSpecifier
{
  v3 = +[NSBundle podcastsFoundationBundle];
  v4 = [v3 localizedStringForKey:@"ADD_SHOWS_TITLE" value:@"Add Shows…" table:0];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v5 setButtonAction:"_addShowsAction:"];
  [v5 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v6 = objc_alloc_init(NMBUIMediaTableCellConfiguration);
  v7 = +[NSBundle podcastsFoundationBundle];
  v8 = [v7 localizedStringForKey:@"ADD_SHOWS_TITLE" value:@"Add Shows…" table:0];
  [v6 setTitle:v8];

  [v6 setPlaceholderSystemImageName:@"plus"];
  v9 = BPSBridgeTintColor();
  [v6 setPlaceholderIconColor:v9];

  [v5 setProperty:v6 forKey:NMBUISpecifierCellConfigurationKey];

  return v5;
}

- (id)_showSpecifiers
{
  showsFRC = self->_showsFRC;
  v41 = 0;
  v4 = [(MTFetchedResultsController *)showsFRC performFetch:&v41];
  v5 = v41;
  v6 = v5;
  if (v4)
  {
    v31 = v5;
    v7 = +[NSMutableArray array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [(MTFetchedResultsController *)self->_showsFRC fetchedObjects];
    v36 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v36)
    {
      v35 = *v38;
      v34 = PSCellClassKey;
      v33 = NMBUISpecifierCellConfigurationKey;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          v9 = v7;
          if (*v38 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v37 + 1) + 8 * i);
          v11 = [v10 title];
          v12 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:"_showCellValueForSpecifier:" detail:0 cell:4 edit:0];

          [v12 setButtonAction:"_presentSettingsViewControllerForSpecifier:"];
          [v12 setProperty:&off_1DA88 forKey:@"MTBCollectionTypeKey"];
          [v12 setProperty:objc_opt_class() forKey:v34];
          v13 = objc_alloc_init(NMBUIMediaTableCellConfiguration);
          v14 = [v10 feedURL];
          [v13 setModelObject:v14];

          v15 = [v10 title];
          [v13 setTitle:v15];

          [v13 setPlaceholderSystemImageName:@"podcasts"];
          v16 = [v10 artworkCatalog];
          [v13 setArtworkCatalog:v16];

          v17 = +[NMSMediaPinningManager sharedManager];
          v18 = [v17 podcastsSelectedShowFeedURLs];
          v19 = [v10 feedURL];
          v20 = [v18 containsObject:v19];

          if (v20)
          {
            syncInfoController = self->_syncInfoController;
            v22 = [v10 feedURL];
            v23 = [(NMBUISyncInfoController *)syncInfoController downloadStateForModelObject:v22];

            v24 = self->_syncInfoController;
            v25 = [v10 feedURL];
            [(NMBUISyncInfoController *)v24 progressForModelObject:v25];
            v27 = v26;

            v28 = [[NMBUIMediaTableCellDownloadState alloc] initWithState:v23 progress:v27];
            [v13 setDownloadState:v28];
          }

          [v12 setProperty:v13 forKey:v33];
          v7 = v9;
          [v9 addObject:v12];
        }

        v36 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v36);
    }

    v29 = [v7 copy];
    v6 = v31;
  }

  else
  {
    v7 = _MTLogCategoryBridge();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v44 = v6;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "Could not fetch podcast shows: %@", buf, 0xCu);
    }

    v29 = &__NSArray0__struct;
  }

  return v29;
}

- (id)_showsPredicate
{
  v2 = +[MTPodcast predicateForSubscribedAndNotHidden];
  v3 = +[MTPodcast predicateForEntitledShows];
  v4 = [v2 AND:v3];
  v5 = [NSPredicate predicateWithFormat:@"%K != NULL", kPodcastTitle];
  v6 = [v4 AND:v5];
  v7 = kPodcastFeedUrl;
  v8 = +[NMSMediaPinningManager sharedManager];
  v9 = [v8 podcastsSelectedShowFeedURLs];
  v10 = [NSPredicate predicateWithFormat:@"%K IN %@", v7, v9];
  v11 = [v6 AND:v10];

  return v11;
}

- (void)_createFRCs
{
  v3 = +[MTDBExtensionAccess sharedInstance];
  v4 = [v3 isReady];

  if (v4)
  {
    if (!self->_stationsFRC || !self->_showsFRC)
    {
      v5 = [NSFetchRequest fetchRequestWithEntityName:kMTPlaylistEntityName];
      v6 = +[MTPlaylist topLevelPlaylistsPredicate];
      v7 = kPlaylistTitle;
      v8 = [NSPredicate predicateWithFormat:@"%K != NULL", kPlaylistTitle];
      v9 = [v6 AND:v8];
      [v5 setPredicate:v9];

      v10 = +[MTPlaylist sortDescriptors];
      [v5 setSortDescriptors:v10];

      [v5 setFetchBatchSize:20];
      v11 = [MTFetchedResultsController alloc];
      v12 = +[MTDB sharedInstance];
      v13 = [v12 mainQueueContext];
      v14 = [v11 initWithFetchRequest:v5 managedObjectContext:v13 sectionNameKeyPath:0 cacheName:0];
      stationsFRC = self->_stationsFRC;
      self->_stationsFRC = v14;

      v32[0] = kPlaylistPodcasts;
      v32[1] = v7;
      v32[2] = kPlaylistUuid;
      v16 = [NSArray arrayWithObjects:v32 count:3];
      [(MTFetchedResultsController *)self->_stationsFRC setPropertyKeys:v16];

      [(MTFetchedResultsController *)self->_stationsFRC setDelegate:self];
      v17 = [NSFetchRequest fetchRequestWithEntityName:kMTPodcastEntityName];
      v18 = [(MTBridgeSettingsViewController *)self _showsPredicate];
      [v17 setPredicate:v18];

      v19 = [MTPodcast sortDescriptorsForTitle:1];
      [v17 setSortDescriptors:v19];

      v20 = kPodcastTitle;
      v21 = kPodcastFeedUrl;
      v31[0] = kPodcastTitle;
      v31[1] = kPodcastFeedUrl;
      v31[2] = kPodcastUuid;
      v22 = [NSArray arrayWithObjects:v31 count:3];
      [v17 setPropertiesToFetch:v22];

      [v17 setFetchBatchSize:20];
      v23 = [MTFetchedResultsController alloc];
      v24 = +[MTDB sharedInstance];
      v25 = [v24 mainQueueContext];
      v26 = [v23 initWithFetchRequest:v17 managedObjectContext:v25 sectionNameKeyPath:0 cacheName:0];
      showsFRC = self->_showsFRC;
      self->_showsFRC = v26;

      v30[0] = kPodcastImageUrl;
      v30[1] = v20;
      v30[2] = v21;
      v30[3] = kPodcastUpdatedFeedUrl;
      v28 = [NSArray arrayWithObjects:v30 count:4];
      [(MTFetchedResultsController *)self->_showsFRC setPropertyKeys:v28];

      [(MTFetchedResultsController *)self->_showsFRC setDelegate:self];
    }
  }

  else
  {
    v29 = +[MTDBExtensionAccess sharedInstance];
    [v29 attemptToFix];
  }
}

- (void)_reload
{
  v3 = [(MTBridgeSettingsViewController *)self _showsPredicate];
  v4 = [(MTFetchedResultsController *)self->_showsFRC fetchRequest];
  [v4 setPredicate:v3];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_6158;
  v6[3] = &unk_1C890;
  v6[4] = self;
  v5 = objc_retainBlock(v6);
  if (+[NSThread isMainThread])
  {
    (v5[2])(v5);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v5);
  }
}

- (id)_contentHeaderViewTitle
{
  v2 = [(NMBUISyncInfoController *)self->_syncInfoController syncInfo];
  v3 = [v2 itemCount];

  if (v3)
  {
    [MTBridgeUtilities localizedStringForEpisodeCount:v3];
  }

  else
  {
    +[MTBridgeUtilities localizedNoPodcastsString];
  }
  v4 = ;

  return v4;
}

- (id)_contentHeaderViewSubtitle
{
  v3 = [(NMBUISyncInfoController *)self->_syncInfoController syncInfo];
  v4 = [v3 itemCount];

  if (v4)
  {
    v5 = [(NMBUISyncInfoController *)self->_syncInfoController syncStatusDetailText];
  }

  else
  {
    v6 = +[NSBundle podcastsFoundationBundle];
    v5 = [v6 localizedStringForKey:@"SYNC_SETTINGS_CONTENT_SUMMARY_HEADER_NOTHING_ADDED_MESSAGE_PODCASTS_SETTINGS_V2" value:@"You can choose the episodes and shows you want to automatically download to your Apple Watch." table:0];
  }

  return v5;
}

- (void)_configureHeaderIfNeeded
{
  if (![(MTBridgeSettingsViewController *)self isViewLoaded])
  {
    return;
  }

  v33 = [(MTBridgeSettingsViewController *)self table];
  v3 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  if ([v3 BOOLForKey:kMTSyncSubscriptionsKey])
  {
    v4 = +[NMBUIAccountUtil sharedInstance];
    v5 = [v4 hasITunesAccount];

    if (v5)
    {
      v6 = +[NSMutableArray array];
      v7 = [(NMBUISyncInfoController *)self->_syncInfoController syncInfo];
      v8 = [v7 hasItemsOverStorageLimit];

      if (v8)
      {
        v9 = [NMBUIAlertHeaderView alloc];
        x = CGRectZero.origin.x;
        y = CGRectZero.origin.y;
        width = CGRectZero.size.width;
        height = CGRectZero.size.height;
        v14 = [v9 initWithFrame:{CGRectZero.origin.x, y, width, height}];
        v15 = +[UIColor systemYellowColor];
        [v14 setTintColor:v15];

        v16 = +[MTBridgeUtilities localizedOutOfSpaceHeaderTitle];
        v17 = [v14 textLabel];
        [v17 setText:v16];

        v18 = +[MTBridgeUtilities localizedOutOfSpaceHeaderMessage];
        v19 = [v14 detailTextLabel];
        [v19 setText:v18];

        [v14 setPreservesSuperviewLayoutMargins:1];
        [v6 addObject:v14];
      }

      else
      {
        x = CGRectZero.origin.x;
        y = CGRectZero.origin.y;
        width = CGRectZero.size.width;
        height = CGRectZero.size.height;
      }

      v20 = [[NMBUIContentHeaderView alloc] initWithFrame:{x, y, width, height}];
      v21 = [(MTBridgeSettingsViewController *)self _contentHeaderViewTitle];
      v22 = [v20 textLabel];
      [v22 setText:v21];

      v23 = [(MTBridgeSettingsViewController *)self _contentHeaderViewSubtitle];
      v24 = [v20 detailTextLabel];
      [v24 setText:v23];

      [v20 setPreservesSuperviewLayoutMargins:1];
      v25 = [(NMBUISyncInfoController *)self->_syncInfoController syncInfo];
      if ([v25 itemCount])
      {
        v26 = [(NMBUISyncInfoController *)self->_syncInfoController syncInfo];
        v27 = [v26 status];

        if (v27 == &dword_4)
        {
LABEL_14:
          [v6 addObject:v20];
          v32 = [[UIStackView alloc] initWithArrangedSubviews:v6];
          [v32 setAxis:1];
          [v32 setPreservesSuperviewLayoutMargins:1];
          [v33 setTableHeaderView:v32];
          [(MTBridgeSettingsViewController *)self _updateHeaderSize];

          goto LABEL_15;
        }

        v25 = [(NMBUISyncInfoController *)self->_syncInfoController syncInfo];
        [v25 progress];
        v29 = v28;
        v30 = [v20 progressView];
        LODWORD(v31) = v29;
        [v30 setProgress:v31];
      }

      goto LABEL_14;
    }
  }

  else
  {
  }

  [v33 setTableHeaderView:0];
LABEL_15:
}

- (void)_updateHeaderSize
{
  if ([(MTBridgeSettingsViewController *)self isViewLoaded])
  {
    v3 = [(MTBridgeSettingsViewController *)self table];
    v14 = [v3 tableHeaderView];

    v4 = [v14 superview];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    LODWORD(v5) = 1148846080;
    LODWORD(v7) = 1112014848;
    [v14 systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:v8 verticalFittingPriority:{v5, v7}];
    v10 = v9;
    v12 = v11;

    [v14 setBounds:{0.0, 0.0, v10, v12}];
    v13 = [(MTBridgeSettingsViewController *)self table];
    [v13 setTableHeaderView:v14];
  }
}

- (void)_updateProgressIfNeeded
{
  v3 = +[NMSMediaPinningManager sharedManager];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [(MTBridgeSettingsViewController *)self specifiers];
  v39 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v39)
  {
    v38 = *v41;
    v37 = NMBUISpecifierCellConfigurationKey;
    v33 = kNMSMediaSyncInfoSavedEpisodesIdentifier;
    v32 = kNMSMediaSyncInfoUpNextIdentifier;
    v30 = self;
    do
    {
      v4 = 0;
      do
      {
        if (*v41 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v40 + 1) + 8 * v4);
        v6 = [v5 propertyForKey:{v37, v30}];
        v7 = [v6 modelObject];
        if (!v7)
        {
          goto LABEL_17;
        }

        v8 = [v3 podcastsDownloadSettingsForShowFeedURL:v7];
        if ([v8 isEnabled])
        {
          goto LABEL_10;
        }

        v9 = v3;
        v10 = [v3 podcastsDownloadSettingsForStationUUID:v7];
        if ([v10 isEnabled])
        {

          v3 = v9;
LABEL_10:

          goto LABEL_11;
        }

        v25 = [v7 isEqualToString:v33];
        if (v25)
        {
          v35 = +[NMSMediaPinningManager sharedManager];
          v34 = [v35 podcastsSavedEpisodesDownloadSettings];
          if ([v34 isEnabled])
          {
            v26 = 1;
            goto LABEL_30;
          }

          if (([v7 isEqualToString:v32] & 1) == 0)
          {
            v26 = 0;
LABEL_30:

            v3 = v9;
            if ((v26 & 1) == 0)
            {
              goto LABEL_17;
            }

            goto LABEL_11;
          }
        }

        else if (([v7 isEqualToString:v32] & 1) == 0)
        {

          v3 = v9;
          goto LABEL_16;
        }

        v27 = +[NMSMediaPinningManager sharedManager];
        v28 = [v27 podcastsUpNextDownloadSettings];
        v31 = [v28 isEnabled];

        if (v25)
        {
          self = v30;
          v26 = v31;
          goto LABEL_30;
        }

        self = v30;
        v3 = v9;
        if ((v31 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_11:
        v11 = [v6 downloadState];
        v12 = [v11 state];

        v13 = [v6 downloadState];
        [v13 progress];
        v15 = v14;

        v16 = [(NMBUISyncInfoController *)self->_syncInfoController downloadStateForModelObject:v7];
        [(NMBUISyncInfoController *)self->_syncInfoController progressForModelObject:v7];
        v18 = v17;
        v19 = vabdd_f64(v15, v17);
        if (v12 != v16 || v19 > 0.00000011920929)
        {
          v21 = [(MTBridgeSettingsViewController *)self table];
          v22 = [(MTBridgeSettingsViewController *)self indexPathForSpecifier:v5];
          v8 = [v21 cellForRowAtIndexPath:v22];

          v23 = [v6 downloadState];
          [v23 setState:v16];

          v24 = [v6 downloadState];
          [v24 setProgress:v18];

          [v8 refreshCellContentsWithSpecifier:v5];
LABEL_16:
        }

LABEL_17:

        v4 = v4 + 1;
      }

      while (v39 != v4);
      v29 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      v39 = v29;
    }

    while (v29);
  }
}

- (void)_updateHeaderAndSyncProgress
{
  if ([(MTBridgeSettingsViewController *)self isViewLoaded])
  {
    [(MTBridgeSettingsViewController *)self _configureHeaderIfNeeded];

    [(MTBridgeSettingsViewController *)self _updateProgressIfNeeded];
  }
}

- (void)_presentSettingsViewControllerForSpecifier:(id)a3
{
  v4 = NMBUISpecifierCellConfigurationKey;
  v5 = a3;
  v13 = [v5 propertyForKey:v4];
  v6 = [v5 propertyForKey:@"MTBCollectionTypeKey"];

  v7 = [v6 unsignedIntegerValue];
  v8 = [MTBridgeCollectionSettingsViewController alloc];
  v9 = [v13 modelObject];
  v10 = [(MTBridgeCollectionSettingsViewController *)v8 initWithCollectionType:v7 identifier:v9];

  v11 = [v13 title];
  [(MTBridgeCollectionSettingsViewController *)v10 setTitle:v11];

  v12 = [(MTBridgeSettingsViewController *)self navigationController];
  [v12 pushViewController:v10 animated:1];
}

+ (id)downloadCountFormatter
{
  if (qword_22FA8 != -1)
  {
    sub_FC98();
  }

  v3 = qword_22FA0;

  return v3;
}

- (id)_valueStringForDownloadSettings:(id)a3
{
  v3 = a3;
  if ([v3 isEnabled])
  {
    v4 = [objc_opt_class() downloadCountFormatter];
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v3 numberOfEpisodes]);
    v6 = [v4 stringFromNumber:v5];
  }

  else
  {
    v6 = +[MTBridgeUtilities localizedOffString];
  }

  return v6;
}

- (id)_upNextCellValueForSpecifier:(id)a3
{
  v4 = +[NMSMediaPinningManager sharedManager];
  v5 = [v4 podcastsUpNextDownloadSettings];

  v6 = [(MTBridgeSettingsViewController *)self _valueStringForDownloadSettings:v5];

  return v6;
}

- (id)_savedCellValueForSpecifier:(id)a3
{
  v4 = +[NMSMediaPinningManager sharedManager];
  v5 = [v4 podcastsSavedEpisodesDownloadSettings];

  v6 = [(MTBridgeSettingsViewController *)self _valueStringForDownloadSettings:v5];

  return v6;
}

- (id)_stationCellValueForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:NMBUISpecifierCellConfigurationKey];
  v5 = +[NMSMediaPinningManager sharedManager];
  v6 = [v4 modelObject];
  v7 = [v5 podcastsDownloadSettingsForStationUUID:v6];

  v8 = [(MTBridgeSettingsViewController *)self _valueStringForDownloadSettings:v7];

  return v8;
}

- (id)_showCellValueForSpecifier:(id)a3
{
  v4 = [a3 propertyForKey:NMBUISpecifierCellConfigurationKey];
  v5 = +[NMSMediaPinningManager sharedManager];
  v6 = [v4 modelObject];
  v7 = [v5 podcastsDownloadSettingsForShowFeedURL:v6];

  v8 = [(MTBridgeSettingsViewController *)self _valueStringForDownloadSettings:v7];

  return v8;
}

- (void)_addShowsAction:(id)a3
{
  v5 = objc_alloc_init(MTBridgeShowSelectionViewController);
  [(MTBridgeShowSelectionViewController *)v5 setDelegate:self];
  v4 = [[UINavigationController alloc] initWithRootViewController:v5];
  [(MTBridgeSettingsViewController *)self presentViewController:v4 animated:1 completion:0];
}

- (void)_signInAction:(id)a3
{
  v4 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=STORE_SERVICE"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)_podcastsSettingsAction:(id)a3
{
  v4 = [NSURL URLWithString:@"app-prefs:com.apple.podcasts"];
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  [v3 openSensitiveURL:v4 withOptions:0];
}

- (void)extensionAccessDidChange
{
  [(MTBridgeSettingsViewController *)self _createFRCs];
  v3 = _MTLogCategoryBridge();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Reload for extensionAccessDidChange", v4, 2u);
  }

  [(MTBridgeSettingsViewController *)self _reload];
}

- (void)controllerDidChangeContent:(id)a3
{
  v4 = _MTLogCategoryBridge();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Reload for controllerDidChangeContent", v5, 2u);
  }

  [(MTBridgeSettingsViewController *)self _reload];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  if (off_22E48 == a6)
  {
    v12 = a4;
    v13 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];

    if (v13 == v12)
    {
      v14 = [v10 isEqualToString:kMTSyncSubscriptionsKey];

      if (v14)
      {
        v15 = _MTLogCategoryBridge();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Reload for KVO", buf, 2u);
        }

        [(MTBridgeSettingsViewController *)self _reload];
      }
    }

    else
    {
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = MTBridgeSettingsViewController;
    v11 = a4;
    [(MTBridgeSettingsViewController *)&v16 observeValueForKeyPath:v10 ofObject:v11 change:a5 context:a6];
  }
}

- (void)_handleAccountDidChangeNotification:(id)a3
{
  v4 = _MTLogCategoryBridge();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Reload for _handleAccountDidChangeNotification", v5, 2u);
  }

  [(MTBridgeSettingsViewController *)self _reload];
}

- (void)_handlePodcastsIdentifiersDidChangeNotification:(id)a3
{
  v4 = _MTLogCategoryBridge();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Reload for _handlePodcastsIdentifiersDidChangeNotification", v5, 2u);
  }

  [(MTBridgeSettingsViewController *)self _reload];
}

- (void)_handleSyncInfoDidUpdateNotification:(id)a3
{
  v4 = [a3 object];
  syncInfoController = self->_syncInfoController;

  if (v4 == syncInfoController)
  {
    v6 = _MTLogCategoryBridge();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Reload progress for _updateHeaderAndSyncProgress", v7, 2u);
    }

    [(MTBridgeSettingsViewController *)self _updateHeaderAndSyncProgress];
  }
}

@end