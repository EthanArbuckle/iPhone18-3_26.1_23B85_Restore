@interface MCDRadioMusicKitContentManager
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_modelRequest;
- (id)childrenOfItemAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)viewModelsAtIndexPath:(id)path prefersTallArtwork:(BOOL)artwork withSubtitleForPlaylists:(BOOL)playlists actionToPerform:(unint64_t)perform;
- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)response inSection:(int64_t)section;
- (unint64_t)cellTypeAtIndexPath:(id)path;
- (void)__initiatePlaybackForItem:(id)item;
- (void)_initiatePlaybackForItem:(id)item;
- (void)_initiatePlaybackForItem:(id)item shouldPushNowPlaying:(BOOL)playing;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateLiveStationsRow;
@end

@implementation MCDRadioMusicKitContentManager

- (id)childrenOfItemAtIndexPath:(id)path
{
  pathCopy = path;
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  numberOfSections = [results numberOfSections];
  section = [pathCopy section];

  if (numberOfSections <= section)
  {
    v11 = &__NSArray0__struct;
  }

  else
  {
    lastReceivedResponse2 = [(MCDFuseContentManager *)self lastReceivedResponse];
    results2 = [lastReceivedResponse2 results];
    v11 = [results2 itemsInSectionAtIndex:{objc_msgSend(pathCopy, "section")}];
  }

  return v11;
}

- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)response inSection:(int64_t)section
{
  responseCopy = response;
  contentResults = [(MCDFuseContentManager *)self contentResults];

  if (contentResults)
  {
    contentResults2 = [(MCDFuseContentManager *)self contentResults];
    v9 = [contentResults2 numberOfItemsInSection:section];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MCDRadioMusicKitContentManager;
    v9 = [(MCDGroupingsContentManager *)&v11 allowedNumberOfItemsForDisplayWithResponse:responseCopy inSection:section];
  }

  return v9;
}

- (id)_modelRequest
{
  v8.receiver = self;
  v8.super_class = MCDRadioMusicKitContentManager;
  _modelRequest = [(MCDGroupingsContentManager *)&v8 _modelRequest];
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mobileipod"];
  v4 = +[MPCloudServiceStatusController sharedController];
  musicSubscriptionStatus = [v4 musicSubscriptionStatus];

  if ([v3 BOOLForKey:@"UserRequestedSubscriptionHidden"])
  {
    v6 = 3;
  }

  else
  {
    if (!musicSubscriptionStatus)
    {
      goto LABEL_8;
    }

    if ([musicSubscriptionStatus hasCapability:1])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  [_modelRequest setSubscriptionStatus:v6];
LABEL_8:
  [_modelRequest setAdditionalContent:1];
  [_modelRequest setOptions:4];

  return _modelRequest;
}

- (void)_initiatePlaybackForItem:(id)item shouldPushNowPlaying:(BOOL)playing
{
  playingCopy = playing;
  itemCopy = item;
  [(MCDRadioMusicKitContentManager *)self setShouldPushNowPlayingOnNextPlaybackManagerCall:playingCopy];
  [(MCDRadioMusicKitContentManager *)self __initiatePlaybackForItem:itemCopy];
}

- (void)_initiatePlaybackForItem:(id)item
{
  itemCopy = item;
  [(MCDRadioMusicKitContentManager *)self setShouldPushNowPlayingOnNextPlaybackManagerCall:1];
  [(MCDRadioMusicKitContentManager *)self __initiatePlaybackForItem:itemCopy];
}

- (void)__initiatePlaybackForItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = itemCopy;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }

    playbackManager = [(MCDFuseContentManager *)self playbackManager];
    viewController = [(MCDFuseContentManager *)self viewController];
    combinedPlayActivityFeatureName = [viewController combinedPlayActivityFeatureName];
    [playbackManager initiatePlaybackForRadioStation:itemCopy lastResponse:0 shuffled:0 playActivityFeatureName:combinedPlayActivityFeatureName];
    goto LABEL_6;
  }

  playbackManager = itemCopy;
  if ([playbackManager hasLoadedValueForKey:MPModelStoreBrowseSectionRelationshipRadioStation])
  {
    viewController = [(MCDFuseContentManager *)self playbackManager];
    combinedPlayActivityFeatureName = [playbackManager radioStation];
    viewController2 = [(MCDFuseContentManager *)self viewController];
    combinedPlayActivityFeatureName2 = [viewController2 combinedPlayActivityFeatureName];
    [viewController initiatePlaybackForRadioStation:combinedPlayActivityFeatureName lastResponse:0 shuffled:0 playActivityFeatureName:combinedPlayActivityFeatureName2];

LABEL_6:
  }

  v10 = itemCopy;
LABEL_8:
}

- (unint64_t)cellTypeAtIndexPath:(id)path
{
  pathCopy = path;
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v7 = [results sectionAtIndex:{objc_msgSend(pathCopy, "section")}];

  if ([v7 sectionType] == 13)
  {
    v8 = 6;
  }

  else if ([v7 sectionType] == 11)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MCDRadioMusicKitContentManager;
    v8 = [(MCDGroupingsContentManager *)&v10 cellTypeAtIndexPath:pathCopy];
  }

  return v8;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  contentResults = [(MCDFuseContentManager *)self contentResults];

  v8 = 0.0;
  if (!contentResults)
  {
    lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
    results = [lastReceivedResponse results];
    v11 = [results sectionAtIndex:section];

    if ([v11 sectionType] != 13)
    {
      v14.receiver = self;
      v14.super_class = MCDRadioMusicKitContentManager;
      [(MCDFuseContentManager *)&v14 tableView:viewCopy heightForHeaderInSection:section];
      v8 = v12;
    }
  }

  return v8;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v9 = [results sectionAtIndex:section];

  if ([v9 sectionType] == 13)
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MCDRadioMusicKitContentManager;
    v10 = [(MCDFuseContentManager *)&v12 tableView:viewCopy viewForHeaderInSection:section];
  }

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v10 = [results sectionAtIndex:{objc_msgSend(pathCopy, "section")}];

  if ([v10 sectionType] != 13)
  {
    v11.receiver = self;
    v11.super_class = MCDRadioMusicKitContentManager;
    [(MCDFuseContentManager *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }
}

- (void)updateLiveStationsRow
{
  tableView = [(MCDFuseContentManager *)self tableView];
  indexPathsForVisibleRows = [tableView indexPathsForVisibleRows];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = indexPathsForVisibleRows;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
        results = [lastReceivedResponse results];
        v13 = [results sectionAtIndex:{objc_msgSend(v10, "section")}];

        if ([v13 sectionType] == 13)
        {
          tableView2 = [(MCDFuseContentManager *)self tableView];
          v15 = [tableView2 cellForRowAtIndexPath:v10];

          v16 = [(MCDRadioMusicKitContentManager *)self viewModelsAtIndexPath:v10 prefersTallArtwork:0 withSubtitleForPlaylists:1 actionToPerform:1];
          [v15 setViewModels:v16];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }
}

- (id)viewModelsAtIndexPath:(id)path prefersTallArtwork:(BOOL)artwork withSubtitleForPlaylists:(BOOL)playlists actionToPerform:(unint64_t)perform
{
  pathCopy = path;
  v49 = objc_opt_new();
  selfCopy = self;
  v41 = pathCopy;
  v8 = [(MCDRadioMusicKitContentManager *)self childrenOfItemAtIndexPath:pathCopy];
  v9 = objc_opt_new();
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v8;
  v50 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
  if (v50)
  {
    v45 = *v54;
    v10 = &unk_101160000;
    v46 = v9;
    do
    {
      for (i = 0; i != v50; i = i + 1)
      {
        if (*v54 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v53 + 1) + 8 * i);
        radioStation = [v12 radioStation];
        identifiers = [radioStation identifiers];
        radio = [identifiers radio];
        stationStringID = [radio stationStringID];

        v17 = [v9 objectForKey:stationStringID];
        if (v17)
        {
          v18 = [v9 objectForKey:stationStringID];
          unsignedIntegerValue = [v18 unsignedIntegerValue];

          v20 = unsignedIntegerValue + 1;
          v21 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue + 1];
          [v9 setValue:v21 forKey:stationStringID];

          v22 = [NSString stringWithFormat:@"%@-%ld", stationStringID, v20];

          stationStringID = v22;
        }

        else
        {
          [v9 setValue:&off_10110B2B0 forKey:stationStringID];
        }

        shared = [v10 + 3960 shared];
        currentPlayingRadioStation = [shared currentPlayingRadioStation];
        identifiers2 = [currentPlayingRadioStation identifiers];
        radio2 = [identifiers2 radio];
        stationStringID2 = [radio2 stationStringID];
        if ([stationStringID2 isEqualToString:stationStringID])
        {
          shared2 = [v10 + 3960 shared];
          v51 = [shared2 playerState] == 2;
        }

        else
        {
          v51 = 0;
        }

        v29 = [CPUIGridViewBaseViewModel alloc];
        radioStation2 = [v12 radioStation];
        name = [radioStation2 name];
        radioStation3 = [v12 radioStation];
        editorialArtworkCatalog = [radioStation3 editorialArtworkCatalog];
        artworkCatalog = editorialArtworkCatalog;
        if (!editorialArtworkCatalog)
        {
          radioStation4 = [v12 radioStation];
          artworkCatalog = [radioStation4 artworkCatalog];
          v43 = artworkCatalog;
        }

        v35 = [CPUIGridViewBaseViewModelImagePlaceholder cpuiPlaceholder:6];
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_1000FC01C;
        v52[3] = &unk_101098068;
        v52[5] = v12;
        v52[6] = perform;
        v52[4] = selfCopy;
        BYTE2(v40) = v51;
        LOWORD(v40) = 1;
        LOBYTE(v39) = 0;
        v36 = [v29 initWithId:stationStringID title:name subtitle:0 titlePriority:1 artworkCatalog:artworkCatalog imageShape:0 isTallArtwork:v39 placeholder:v35 accessorySystemImage:0 allowsTouches:v40 disabledAppearance:v52 isPressed:? action:?];

        if (!editorialArtworkCatalog)
        {
        }

        [v49 addObject:v36];
        v9 = v46;
        v10 = &unk_101160000;
      }

      v50 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
    }

    while (v50);
  }

  v37 = [v49 copy];

  return v37;
}

@end