@interface MCDForYouContentManager
- (MCDForYouContentManager)initWithDataSource:(id)source delegate:(id)delegate viewController:(id)controller playbackManager:(id)manager limitedUI:(BOOL)i contentResults:(id)results;
- (id)_modelRequest;
- (id)_refreshRequest;
- (id)cellTitleAtIndexPath:(id)path;
- (id)childrenOfItemAtIndexPath:(id)path;
- (id)itemAtIndexPath:(id)path;
- (id)rowCellItemConfigurationsAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)viewModelsAtIndexPath:(id)path prefersTallArtwork:(BOOL)artwork withSubtitleForPlaylists:(BOOL)playlists actionToPerform:(unint64_t)perform;
- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)response inSection:(int64_t)section;
- (unint64_t)cellTypeAtIndexPath:(id)path;
- (void)_actionForItem:(id)item;
- (void)_initiatePlaybackForItem:(id)item;
- (void)_processRefreshResponse:(id)response error:(id)error;
- (void)dealloc;
- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section;
@end

@implementation MCDForYouContentManager

- (MCDForYouContentManager)initWithDataSource:(id)source delegate:(id)delegate viewController:(id)controller playbackManager:(id)manager limitedUI:(BOOL)i contentResults:(id)results
{
  v12.receiver = self;
  v12.super_class = MCDForYouContentManager;
  v8 = [(MCDFuseContentManager *)&v12 initWithDataSource:source delegate:delegate viewController:controller playbackManager:manager limitedUI:i contentResults:results];
  if (v8)
  {
    v9 = [[SiriDirectActionSource alloc] initWithDelegate:0];
    siriDirectActionSource = v8->_siriDirectActionSource;
    v8->_siriDirectActionSource = v9;
  }

  return v8;
}

- (void)dealloc
{
  siriDirectActionSource = [(MCDForYouContentManager *)self siriDirectActionSource];
  [siriDirectActionSource invalidate];

  v4.receiver = self;
  v4.super_class = MCDForYouContentManager;
  [(MCDFuseContentManager *)&v4 dealloc];
}

- (id)cellTitleAtIndexPath:(id)path
{
  v3 = [(MCDForYouContentManager *)self itemAtIndexPath:path];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    groupType = [v3 groupType];
    title = [v3 title];
    v6 = title;
    if (groupType == 4)
    {
      if (title)
      {
        v7 = title;
      }

      else
      {
        v8 = +[NSBundle mainBundle];
        v7 = [v8 localizedStringForKey:@"Recently Played" value:&stru_101107168 table:0];
      }

      v6 = v7;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)childrenOfItemAtIndexPath:(id)path
{
  pathCopy = path;
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  numberOfSections = [results numberOfSections];
  section = [pathCopy section];

  if (numberOfSections <= section)
  {
    v13 = &__NSArray0__struct;
  }

  else
  {
    lastReceivedResponse2 = [(MCDFuseContentManager *)self lastReceivedResponse];
    results2 = [lastReceivedResponse2 results];
    v11 = [results2 sectionAtIndex:{objc_msgSend(pathCopy, "section")}];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      numberOfItems = [v11 numberOfItems];
      v13 = objc_opt_new();
      if (numberOfItems >= 1)
      {
        for (i = 0; i != numberOfItems; ++i)
        {
          v15 = [v11 itemAtIndex:i];
          [v13 addObject:v15];
        }
      }
    }

    else
    {
      v13 = &__NSArray0__struct;
    }
  }

  return v13;
}

- (id)rowCellItemConfigurationsAtIndexPath:(id)path
{
  v3 = [(MCDForYouContentManager *)self childrenOfItemAtIndexPath:path];
  v4 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        itemType = [v10 itemType];
        if (itemType == 3)
        {
          radioStation = [v10 radioStation];
LABEL_13:
          playlist = radioStation;
          artworkCatalog = [radioStation artworkCatalog];
LABEL_16:

          if (artworkCatalog)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        if (itemType == 2)
        {
          playlist = [v10 playlist];
          artworkCatalog2 = [playlist artworkCatalog];
          v15 = artworkCatalog2;
          if (artworkCatalog2)
          {
            artworkCatalog = artworkCatalog2;
          }

          else
          {
            playlist2 = [v10 playlist];
            artworkCatalog = [playlist2 tracksTiledArtworkCatalogWithRows:2 columns:2];
          }

          goto LABEL_16;
        }

        if (itemType == 1)
        {
          radioStation = [v10 album];
          goto LABEL_13;
        }

LABEL_17:
        viewController = [(MCDFuseContentManager *)self viewController];
        traitCollection = [viewController traitCollection];
        v20 = [UIImage defaultPlaceholderForTraitCollection:traitCollection];
        artworkCatalog = [MPArtworkCatalog staticArtworkCatalogWithImage:v20];

LABEL_18:
        itemType2 = [v10 itemType];
        if (itemType2 == 3)
        {
          radioStation2 = [v10 radioStation];
          goto LABEL_24;
        }

        if (itemType2 == 2)
        {
          radioStation2 = [v10 playlist];
LABEL_24:
          album = radioStation2;
          name = [radioStation2 name];
          goto LABEL_25;
        }

        v22 = &stru_101107168;
        if (itemType2 != 1)
        {
          goto LABEL_26;
        }

        album = [v10 album];
        name = [album title];
LABEL_25:
        v22 = name;

LABEL_26:
        if ([v10 itemType] != 1)
        {
          name2 = 0;
          if (!artworkCatalog)
          {
            goto LABEL_31;
          }

LABEL_30:
          v29 = [[CPUIImageRowCellItemConfiguration alloc] initWithArtworkCatalog:artworkCatalog title:v22 subtitle:name2];
          [v4 addObject:v29];

          goto LABEL_31;
        }

        album2 = [v10 album];
        artist = [album2 artist];
        name2 = [artist name];

        if (artworkCatalog)
        {
          goto LABEL_30;
        }

LABEL_31:
      }

      v7 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v7);
  }

  v30 = [v4 copy];

  return v30;
}

- (unint64_t)cellTypeAtIndexPath:(id)path
{
  pathCopy = path;
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v7 = [results sectionAtIndex:{objc_msgSend(pathCopy, "section")}];

  if ([v7 groupType] == 11)
  {
    v8 = 4;
  }

  else if ([v7 groupType] == 14)
  {
    v8 = 3;
  }

  else if ([v7 groupType] == 4)
  {
    v8 = 5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MCDForYouContentManager;
    v8 = [(MCDFuseContentManager *)&v10 cellTypeAtIndexPath:pathCopy];
  }

  return v8;
}

- (id)viewModelsAtIndexPath:(id)path prefersTallArtwork:(BOOL)artwork withSubtitleForPlaylists:(BOOL)playlists actionToPerform:(unint64_t)perform
{
  artworkCopy = artwork;
  pathCopy = path;
  v63 = objc_opt_new();
  v58 = [(MCDForYouContentManager *)self itemAtIndexPath:pathCopy];
  v59 = pathCopy;
  selfCopy = self;
  v8 = [(MCDForYouContentManager *)self childrenOfItemAtIndexPath:pathCopy];
  v9 = objc_opt_new();
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v8;
  v68 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
  if (v68)
  {
    v67 = *v73;
    v60 = v9;
    do
    {
      for (i = 0; i != v68; i = i + 1)
      {
        if (*v73 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v72 + 1) + 8 * i);
        itemType = [v11 itemType];
        if (itemType == 3)
        {
          radioStation = [v11 radioStation];
          goto LABEL_16;
        }

        if (itemType != 2)
        {
          if (itemType != 1)
          {
            goto LABEL_25;
          }

          radioStation = [v11 album];
          v14 = radioStation;
          if (artworkCopy)
          {
            superHeroTallEditorialArtworkCatalog = [radioStation superHeroTallEditorialArtworkCatalog];

            if (superHeroTallEditorialArtworkCatalog)
            {
              goto LABEL_14;
            }

            radioStation = [v11 album];
LABEL_16:
            v14 = radioStation;
          }

          artworkCatalog = [radioStation artworkCatalog];
          goto LABEL_24;
        }

        playlist = [v11 playlist];
        v14 = playlist;
        if (artworkCopy)
        {
          superHeroTallEditorialArtworkCatalog = [playlist superHeroTallEditorialArtworkCatalog];

          if (superHeroTallEditorialArtworkCatalog)
          {
LABEL_14:
            artworkCatalog = superHeroTallEditorialArtworkCatalog;
            v69 = 1;
            v70 = artworkCatalog;
            goto LABEL_27;
          }

          playlist = [v11 playlist];
          v14 = playlist;
        }

        artworkCatalog2 = [playlist artworkCatalog];
        v19 = artworkCatalog2;
        if (artworkCatalog2)
        {
          artworkCatalog = artworkCatalog2;
        }

        else
        {
          playlist2 = [v11 playlist];
          artworkCatalog = [playlist2 tracksTiledArtworkCatalogWithRows:2 columns:2];
        }

LABEL_24:
        if (!artworkCatalog)
        {
LABEL_25:
          viewController = [(MCDFuseContentManager *)selfCopy viewController];
          traitCollection = [viewController traitCollection];
          v23 = [UIImage defaultPlaceholderForTraitCollection:traitCollection];
          artworkCatalog = [MPArtworkCatalog staticArtworkCatalogWithImage:v23];
        }

        v70 = 0;
        v69 = 0;
LABEL_27:
        itemType2 = [v11 itemType];
        if (itemType2 == 3)
        {
          radioStation2 = [v11 radioStation];
          goto LABEL_33;
        }

        if (itemType2 == 2)
        {
          radioStation2 = [v11 playlist];
LABEL_33:
          album = radioStation2;
          name = [radioStation2 name];
          goto LABEL_34;
        }

        v25 = &stru_101107168;
        if (itemType2 != 1)
        {
          goto LABEL_35;
        }

        album = [v11 album];
        name = [album title];
LABEL_34:
        v25 = name;

LABEL_35:
        if ([v11 itemType] == 1)
        {
          album2 = [v11 album];
          artist = [album2 artist];
          name2 = [artist name];
        }

        else
        {
          name2 = 0;
        }

        itemType3 = [v11 itemType];
        if (itemType3 == 3)
        {
          radioStation3 = [v11 radioStation];
          identifiers = [radioStation3 identifiers];
          radio = [identifiers radio];
          stationStringID = [radio stationStringID];
        }

        else if (itemType3 == 2)
        {
          radioStation3 = [v11 playlist];
          identifiers = [radioStation3 identifiers];
          radio = [identifiers universalStore];
          stationStringID = [radio globalPlaylistID];
        }

        else
        {
          if (itemType3 != 1)
          {
            v37 = 0;
            goto LABEL_46;
          }

          radioStation3 = [v11 album];
          identifiers = [radioStation3 identifiers];
          radio = [identifiers universalStore];
          stationStringID = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [radio adamID]);
        }

        v37 = stationStringID;

LABEL_46:
        v38 = ([v11 itemType] & 0xFFFFFFFFFFFFFFFELL) == 2;
        if (artworkCatalog && v25 && v37)
        {
          v39 = [v9 objectForKey:v37];
          if (v39)
          {
            v40 = [v9 objectForKey:v37];
            v65 = v11;
            v41 = i;
            v42 = v38;
            v43 = v25;
            v44 = artworkCatalog;
            v45 = name2;
            v46 = v9;
            unsignedIntegerValue = [v40 unsignedIntegerValue];

            v48 = [NSNumber numberWithUnsignedInteger:++unsignedIntegerValue];
            v49 = v46;
            name2 = v45;
            artworkCatalog = v44;
            v25 = v43;
            v38 = v42;
            i = v41;
            v11 = v65;
            [v49 setValue:v48 forKey:v37];

            v50 = [NSString stringWithFormat:@"%@-%ld", v37, unsignedIntegerValue];

            v37 = v50;
          }

          else
          {
            [v9 setValue:&off_10110B280 forKey:v37];
          }

          v51 = [CPUIGridViewBaseViewModel alloc];
          v52 = [CPUIGridViewBaseViewModelImagePlaceholder cpuiPlaceholder:6];
          v71[0] = _NSConcreteStackBlock;
          v71[1] = 3221225472;
          v71[2] = sub_1000E72A0;
          v71[3] = &unk_101098068;
          v71[5] = v11;
          v71[6] = perform;
          v71[4] = selfCopy;
          BYTE2(v57) = 0;
          LOWORD(v57) = 1;
          LOBYTE(v56) = v69;
          v53 = [v51 initWithId:v37 title:v25 subtitle:name2 titlePriority:v38 artworkCatalog:artworkCatalog imageShape:0 isTallArtwork:v56 placeholder:v52 accessorySystemImage:0 allowsTouches:v57 disabledAppearance:v71 isPressed:? action:?];
          [v63 addObject:v53];

          v9 = v60;
        }
      }

      v68 = [obj countByEnumeratingWithState:&v72 objects:v76 count:16];
    }

    while (v68);
  }

  v54 = [v63 copy];

  return v54;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v7 = [results sectionAtIndex:section];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v7 displaysAsTitledSectionWithRowsInCarPlay])
  {
    title = [v7 title];
  }

  else
  {
    title = 0;
  }

  return title;
}

- (void)tableView:(id)view willDisplayHeaderView:(id)headerView forSection:(int64_t)section
{
  headerViewCopy = headerView;
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v9 = [results sectionAtIndex:section];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v9 displaysAsTitledSectionWithRowsInCarPlay])
      {
        v10 = headerViewCopy;
        v11 = [UIFont boldSystemFontOfSize:16.0];
        textLabel = [v10 textLabel];

        [textLabel setFont:v11];
      }
    }
  }
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  numberOfSections = [results numberOfSections];

  if (section >= numberOfSections)
  {
    v13 = 0;
  }

  else
  {
    lastReceivedResponse2 = [(MCDFuseContentManager *)self lastReceivedResponse];
    results2 = [lastReceivedResponse2 results];
    v11 = [results2 sectionAtIndex:{objc_msgSend(pathCopy, "section")}];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 displaysAsTitledSectionWithRowsInCarPlay])
    {
      v12 = [v11 itemAtIndex:{objc_msgSend(pathCopy, "row")}];
    }

    else
    {
      v12 = v11;
    }

    v13 = v12;
  }

  return v13;
}

- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)response inSection:(int64_t)section
{
  responseCopy = response;
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v9 = [results sectionAtIndex:section];

  if ([v9 displaysAsTitledSectionWithRowsInCarPlay])
  {
    results2 = [responseCopy results];
    v11 = [results2 sectionAtIndex:section];
    numberOfItems = [v11 numberOfItems];
    if (numberOfItems >= [(MCDFuseContentManager *)self maximumNumberOfItemsForDisplay])
    {
      maximumNumberOfItemsForDisplay = [(MCDFuseContentManager *)self maximumNumberOfItemsForDisplay];
    }

    else
    {
      results3 = [responseCopy results];
      v14 = [results3 sectionAtIndex:section];
      maximumNumberOfItemsForDisplay = [v14 numberOfItems];
    }
  }

  else
  {
    maximumNumberOfItemsForDisplay = [v9 numberOfItems] > 0;
  }

  return maximumNumberOfItemsForDisplay;
}

- (id)_modelRequest
{
  v2 = objc_alloc_init(MPModelForYouRecommendationsRequest);
  [v2 setClientIdentifier:MCDMusicCarPlayBundleIdentifier];
  [v2 setClientVersion:MCDMusicCarPlayVersion];
  [v2 setClientPlatformIdentifier:MCDMusicCarPlayPlatformIdentifier];
  [v2 setFilteringPolicy:1];
  [v2 setRequestEndpoint:1];
  [v2 setAuthenticationOptions:3];
  [v2 setMode:1];
  [v2 setWithRecentlyPlayed:0];
  [v2 setWithSocial:1];

  return v2;
}

- (void)_processRefreshResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  if (errorCopy)
  {
    firstSection = MCDMusicGeneralLogging();
    if (os_log_type_enabled(firstSection, OS_LOG_TYPE_ERROR))
    {
      sub_100DEEBD8();
    }
  }

  else
  {
    lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];

    if (lastReceivedResponse)
    {
      results = [responseCopy results];
      firstSection = [results firstSection];

      if (firstSection)
      {
        v22 = 0;
        v23 = &v22;
        v24 = 0x2020000000;
        v25 = 0x7FFFFFFFFFFFFFFFLL;
        lastReceivedResponse2 = [(MCDFuseContentManager *)self lastReceivedResponse];
        results2 = [lastReceivedResponse2 results];
        v13 = [results2 mutableCopy];

        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000E7A58;
        v19[3] = &unk_101098090;
        firstSection = firstSection;
        v20 = firstSection;
        v21 = &v22;
        [v13 replaceSectionsUsingBlock:v19];
        if (v23[3] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = MCDMusicGeneralLogging();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_100DEEC4C();
          }
        }

        else
        {
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_1000E7B28;
          block[3] = &unk_1010980B8;
          block[4] = self;
          v17 = lastReceivedResponse2;
          v18 = v13;
          dispatch_async(&_dispatch_main_q, block);
        }

        _Block_object_dispose(&v22, 8);
      }

      else
      {
        v15 = MCDMusicGeneralLogging();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          sub_100DEECC0();
        }
      }
    }

    else
    {
      firstSection = MCDMusicGeneralLogging();
      if (os_log_type_enabled(firstSection, OS_LOG_TYPE_ERROR))
      {
        sub_100DEED34();
      }
    }
  }
}

- (id)_refreshRequest
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_1000E7E08;
  v14 = sub_1000E7E18;
  v15 = 0;
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E7E20;
  v9[3] = &unk_1010980E0;
  v9[4] = &v10;
  [results enumerateSectionsUsingBlock:v9];

  if (v11[5])
  {
    _modelRequest = [(MCDForYouContentManager *)self _modelRequest];
    [_modelRequest setCustomForYouURL:v11[5]];
    [_modelRequest setRefreshRequest:1];
  }

  else
  {
    v6 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      lastReceivedResponse2 = [(MCDFuseContentManager *)self lastReceivedResponse];
      sub_100DEEDF4(lastReceivedResponse2, buf, v6);
    }

    _modelRequest = 0;
  }

  _Block_object_dispose(&v10, 8);

  return _modelRequest;
}

- (void)_initiatePlaybackForItem:(id)item
{
  itemCopy = item;
  itemType = [itemCopy itemType];
  if (itemType == 3)
  {
    playbackManager = [(MCDFuseContentManager *)self playbackManager];
    radioStation = [itemCopy radioStation];
    viewController = [(MCDFuseContentManager *)self viewController];
    combinedPlayActivityFeatureName = [viewController combinedPlayActivityFeatureName];
    [playbackManager initiatePlaybackForRadioStation:radioStation lastResponse:0 shuffled:0 playActivityFeatureName:combinedPlayActivityFeatureName];

    viewController2 = [(MCDFuseContentManager *)self viewController];
    navigationController = [viewController2 navigationController];
    [navigationController MCD_pushNowPlayingViewControllerAnimated:1];
  }

  else
  {
    if (itemType == 2)
    {
      viewController2 = [(MCDFuseContentManager *)self playbackManager];
      navigationController = [itemCopy playlist];
      viewController3 = [(MCDFuseContentManager *)self viewController];
      combinedPlayActivityFeatureName2 = [viewController3 combinedPlayActivityFeatureName];
      [viewController2 initiatePlaybackForPlaylist:navigationController lastResponse:0 shuffled:0 playActivityFeatureName:combinedPlayActivityFeatureName2];
    }

    else
    {
      if (itemType != 1)
      {
        goto LABEL_9;
      }

      viewController2 = [(MCDFuseContentManager *)self playbackManager];
      navigationController = [itemCopy album];
      viewController3 = [(MCDFuseContentManager *)self viewController];
      combinedPlayActivityFeatureName2 = [viewController3 combinedPlayActivityFeatureName];
      [viewController2 initiatePlaybackForAlbum:navigationController lastResponse:0 shuffled:0 playActivityFeatureName:combinedPlayActivityFeatureName2];
    }
  }

LABEL_9:
}

- (void)_actionForItem:(id)item
{
  itemCopy = item;
  itemType = [itemCopy itemType];
  if (itemType == 2)
  {
    v8 = [_TtC5Music27MCDItemDetailViewController alloc];
    playlist = [itemCopy playlist];
    v7 = [(MCDItemDetailViewController *)v8 initWithPlaylist:playlist onlyDownloaded:0 preferCatalog:1];
  }

  else
  {
    if (itemType != 1)
    {
      goto LABEL_7;
    }

    v5 = [_TtC5Music27MCDItemDetailViewController alloc];
    playlist = [itemCopy album];
    v7 = [(MCDItemDetailViewController *)v5 initWithAlbum:playlist onlyDownloaded:0 preferCatalog:1];
  }

  v9 = v7;

  if (v9)
  {
    viewController = [(MCDFuseContentManager *)self viewController];
    [(MCDItemDetailViewController *)v9 setPlayActivityFeatureNameSourceViewController:viewController];

    identifiers = [itemCopy identifiers];
    personalizedStore = [identifiers personalizedStore];
    recommendationID = [personalizedStore recommendationID];
    v14 = [recommendationID dataUsingEncoding:4];
    [(MCDItemDetailViewController *)v9 setPlayActivityForwardedRecommendationData:v14];

    viewController2 = [(MCDFuseContentManager *)self viewController];
    navigationController = [viewController2 navigationController];
    [navigationController pushViewController:v9 animated:1];

    goto LABEL_8;
  }

LABEL_7:
  [(MCDForYouContentManager *)self _initiatePlaybackForItem:itemCopy];
LABEL_8:
}

@end