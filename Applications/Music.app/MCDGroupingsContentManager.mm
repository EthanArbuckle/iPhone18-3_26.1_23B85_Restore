@interface MCDGroupingsContentManager
- (id)_modelRequest;
- (id)actionForHeaderInSection:(int64_t)section;
- (id)cellTitleAtIndexPath:(id)path;
- (id)childrenOfItemAtIndexPath:(id)path;
- (id)itemAtIndexPath:(id)path;
- (id)rowCellItemConfigurationsAtIndexPath:(id)path;
- (id)viewModelsAtIndexPath:(id)path prefersTallArtwork:(BOOL)artwork withSubtitleForPlaylists:(BOOL)playlists actionToPerform:(unint64_t)perform;
- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)response inSection:(int64_t)section;
- (int64_t)maximumNumberOfItemsForDisplay;
- (int64_t)maximumNumberOfLinesInSection:(int64_t)section;
- (unint64_t)cellTypeAtIndexPath:(id)path;
- (void)_actionForItem:(id)item;
- (void)_initiatePlaybackForItem:(id)item;
@end

@implementation MCDGroupingsContentManager

- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)response inSection:(int64_t)section
{
  responseCopy = response;
  results = [responseCopy results];
  v8 = [results sectionAtIndex:section];

  if ([v8 sectionType] == 11)
  {
    results2 = [responseCopy results];

    v10 = [results2 numberOfItemsInSection:section];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MCDGroupingsContentManager;
    v10 = [(MCDFuseContentManager *)&v12 allowedNumberOfItemsForDisplayWithResponse:responseCopy inSection:section];
  }

  return v10;
}

- (id)itemAtIndexPath:(id)path
{
  pathCopy = path;
  contentResults = [(MCDFuseContentManager *)self contentResults];

  if (contentResults)
  {
    contentResults2 = [(MCDFuseContentManager *)self contentResults];
    v7 = [contentResults2 itemsInSectionAtIndex:{objc_msgSend(pathCopy, "section")}];
    v8 = [v7 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstSection = [v8 firstSection];
    }

    else
    {
      firstSection = v8;
    }

    v16 = firstSection;
  }

  else
  {
    lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
    results = [lastReceivedResponse results];
    v8 = [results sectionAtIndex:{objc_msgSend(pathCopy, "section")}];

    sectionType = [v8 sectionType];
    lastReceivedResponse2 = [(MCDFuseContentManager *)self lastReceivedResponse];
    v14 = lastReceivedResponse2;
    if (sectionType == 11)
    {
      results2 = [lastReceivedResponse2 results];
      v16 = [results2 itemAtIndexPath:pathCopy];
    }

    else
    {
      request = [lastReceivedResponse2 request];

      loadAdditionalContentURL = [request loadAdditionalContentURL];
      if (loadAdditionalContentURL && (v19 = loadAdditionalContentURL, -[MCDFuseContentManager lastReceivedResponse](self, "lastReceivedResponse"), v20 = objc_claimAutoreleasedReturnValue(), [v20 results], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "numberOfSections"), v21, v20, v19, v22 >= 1))
      {
        lastReceivedResponse3 = [(MCDFuseContentManager *)self lastReceivedResponse];
        results3 = [lastReceivedResponse3 results];
        v25 = [results3 itemsInSectionAtIndex:0];
        v16 = [v25 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
      }

      else
      {
        v27.receiver = self;
        v27.super_class = MCDGroupingsContentManager;
        v16 = [(MCDFuseContentManager *)&v27 itemAtIndexPath:pathCopy];
      }
    }
  }

  return v16;
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

- (int64_t)maximumNumberOfLinesInSection:(int64_t)section
{
  v4 = [NSIndexPath indexPathForRow:0 inSection:section];
  v5 = [(MCDGroupingsContentManager *)self itemAtIndexPath:v4];

  if ([v5 displayStyle] == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)rowCellItemConfigurationsAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = objc_opt_new();
  selfCopy = self;
  selfCopy2 = self;
  v7 = v5;
  v43 = pathCopy;
  v8 = [(MCDGroupingsContentManager *)selfCopy2 childrenOfItemAtIndexPath:pathCopy];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v48;
    *&v10 = 138543618;
    v42 = v10;
    v44 = *v48;
    do
    {
      v13 = 0;
      v46 = v11;
      do
      {
        if (*v48 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v47 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          innerObject = [v14 innerObject];
          v16 = [MPModelGenericObject genericObjectWithModelObject:innerObject];

          artworkCatalog = [v16 artworkCatalog];
          if (artworkCatalog)
          {
            v18 = artworkCatalog;
          }

          else if (-[NSObject type](v16, "type") != 4 || (-[NSObject playlist](v16, "playlist"), v20 = objc_claimAutoreleasedReturnValue(), [v20 tracksTiledArtworkCatalogWithRows:2 columns:2], v18 = objc_claimAutoreleasedReturnValue(), v20, !v18))
          {
            viewController = [(MCDFuseContentManager *)selfCopy viewController];
            [viewController traitCollection];
            v22 = v8;
            v24 = v23 = v7;
            v25 = [UIImage defaultPlaceholderForTraitCollection:v24];
            v18 = [MPArtworkCatalog staticArtworkCatalogWithImage:v25];

            v7 = v23;
            v8 = v22;
            v12 = v44;
          }

          switch([v14 itemType])
          {
            case 1uLL:
              album = [v14 album];
              goto LABEL_32;
            case 2uLL:
              artist = [v14 artist];
              goto LABEL_30;
            case 3uLL:
              artist = [v14 curator];
              goto LABEL_30;
            case 4uLL:
              artist = [v14 playlist];
              goto LABEL_30;
            case 5uLL:
              artist = [v14 radioStation];
              goto LABEL_30;
            case 6uLL:
              artist = [v14 socialPerson];
              goto LABEL_30;
            case 7uLL:
              album = [v14 song];
              goto LABEL_32;
            case 8uLL:
              album = [v14 episode];
              goto LABEL_32;
            case 9uLL:
              album = [v14 show];
              goto LABEL_32;
            case 0xAuLL:
              season = [v14 season];
              show = [season show];
              title = [show title];

              goto LABEL_34;
            case 0xBuLL:
              artist = [v14 showCreator];
              goto LABEL_30;
            case 0xCuLL:
              album = [v14 movie];
              goto LABEL_32;
            case 0xDuLL:
              album = [v14 mediaClip];
LABEL_32:
              season = album;
              title2 = [album title];
              goto LABEL_33;
            case 0xEuLL:
              artist = [v14 recordLabel];
              goto LABEL_30;
            case 0xFuLL:
              artist = [v14 creditsArtist];
LABEL_30:
              season = artist;
              title2 = [artist name];
LABEL_33:
              title = title2;
LABEL_34:

              break;
            default:
              title = 0;
              break;
          }

          itemType = [v14 itemType];
          if (itemType == 7)
          {
            song = [v14 song];
LABEL_39:
            v34 = song;
            artist2 = [song artist];
            name = [artist2 name];

            if (!v18)
            {
              goto LABEL_41;
            }
          }

          else
          {
            if (itemType == 1)
            {
              song = [v14 album];
              goto LABEL_39;
            }

            name = 0;
            if (!v18)
            {
LABEL_41:

              v11 = v46;
              goto LABEL_42;
            }
          }

          v37 = [[CPUIImageRowCellItemConfiguration alloc] initWithArtworkCatalog:v18 title:title subtitle:name];
          [v7 addObject:v37];

          goto LABEL_41;
        }

        v16 = MCDMusicGeneralLogging();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v19 = objc_opt_class();
          *buf = v42;
          v52 = v19;
          v53 = 2114;
          v54 = v43;
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Wrong kind (%{public}@) of child found in childrenOfItemAtIndexPath at %{public}@", buf, 0x16u);
        }

LABEL_42:

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v38 = [v8 countByEnumeratingWithState:&v47 objects:v55 count:16];
      v11 = v38;
    }

    while (v38);
  }

  v39 = v7;
  v40 = [v7 copy];

  return v40;
}

- (unint64_t)cellTypeAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [(MCDGroupingsContentManager *)self itemAtIndexPath:pathCopy];
  if ([v5 sectionType] == 15)
  {
    v6 = 3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MCDGroupingsContentManager;
    v6 = [(MCDFuseContentManager *)&v8 cellTypeAtIndexPath:pathCopy];
  }

  return v6;
}

- (id)viewModelsAtIndexPath:(id)path prefersTallArtwork:(BOOL)artwork withSubtitleForPlaylists:(BOOL)playlists actionToPerform:(unint64_t)perform
{
  artworkCopy = artwork;
  pathCopy = path;
  v68 = objc_opt_new();
  selfCopy = self;
  v65 = pathCopy;
  v8 = [(MCDGroupingsContentManager *)self childrenOfItemAtIndexPath:pathCopy];
  v9 = objc_opt_new();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v77;
    v73 = v9;
    v70 = *v77;
    do
    {
      v13 = 0;
      v71 = v11;
      do
      {
        if (*v77 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v76 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          itemType = [v14 itemType];
          if (itemType == 5)
          {
            radioStation = [v14 radioStation];
LABEL_19:
            v17 = radioStation;
            goto LABEL_21;
          }

          if (itemType != 4)
          {
            if (itemType != 1)
            {
              goto LABEL_28;
            }

            radioStation = [v14 album];
            v17 = radioStation;
            if (artworkCopy)
            {
              superHeroTallEditorialArtworkCatalog = [radioStation superHeroTallEditorialArtworkCatalog];

              if (!superHeroTallEditorialArtworkCatalog)
              {
                radioStation = [v14 album];
                goto LABEL_19;
              }

LABEL_17:
              v22 = superHeroTallEditorialArtworkCatalog;
              artworkCatalog = v22;
LABEL_30:
              switch([v14 itemType])
              {
                case 1uLL:
                  album = [v14 album];
                  goto LABEL_48;
                case 2uLL:
                  artist = [v14 artist];
                  goto LABEL_46;
                case 3uLL:
                  artist = [v14 curator];
                  goto LABEL_46;
                case 4uLL:
                  artist = [v14 playlist];
                  goto LABEL_46;
                case 5uLL:
                  artist = [v14 radioStation];
                  goto LABEL_46;
                case 6uLL:
                  artist = [v14 socialPerson];
                  goto LABEL_46;
                case 7uLL:
                  album = [v14 song];
                  goto LABEL_48;
                case 8uLL:
                  album = [v14 episode];
                  goto LABEL_48;
                case 9uLL:
                  album = [v14 show];
                  goto LABEL_48;
                case 0xAuLL:
                  season = [v14 season];
                  show = [season show];
                  title = [show title];

                  goto LABEL_50;
                case 0xBuLL:
                  artist = [v14 showCreator];
                  goto LABEL_46;
                case 0xCuLL:
                  album = [v14 movie];
                  goto LABEL_48;
                case 0xDuLL:
                  album = [v14 mediaClip];
LABEL_48:
                  season = album;
                  title2 = [album title];
                  goto LABEL_49;
                case 0xEuLL:
                  artist = [v14 recordLabel];
                  goto LABEL_46;
                case 0xFuLL:
                  artist = [v14 creditsArtist];
LABEL_46:
                  season = artist;
                  title2 = [artist name];
LABEL_49:
                  title = title2;
LABEL_50:

                  break;
                default:
                  title = 0;
                  break;
              }

              itemType2 = [v14 itemType];
              v74 = v22;
              if (itemType2 == 7)
              {
                song = [v14 song];
LABEL_55:
                v37 = song;
                artist2 = [song artist];
                name = [artist2 name];
              }

              else
              {
                if (itemType2 == 1)
                {
                  song = [v14 album];
                  goto LABEL_55;
                }

                name = 0;
              }

              itemType3 = [v14 itemType];
              v41 = 0;
              if (itemType3 > 4)
              {
                if (itemType3 != 5)
                {
                  if (itemType3 != 7)
                  {
                    goto LABEL_68;
                  }

                  v42 = v9;
                  v43 = title;
                  song2 = [v14 song];
                  goto LABEL_65;
                }

                v42 = v9;
                v43 = title;
                radioStation2 = [v14 radioStation];
                identifiers = [radioStation2 identifiers];
                radio = [identifiers radio];
                stationStringID = [radio stationStringID];
              }

              else
              {
                if (itemType3 != 1)
                {
                  if (itemType3 == 4)
                  {
                    v42 = v9;
                    v43 = title;
                    radioStation2 = [v14 playlist];
                    identifiers = [radioStation2 identifiers];
                    radio = [identifiers universalStore];
                    stationStringID = [radio globalPlaylistID];
                    goto LABEL_67;
                  }

LABEL_68:
                  v49 = [v14 itemType] == 4;
                  if (v41 && artworkCatalog && title)
                  {
                    v50 = title;
                    v51 = [v9 objectForKey:v41];
                    if (v51)
                    {
                      v52 = [v9 objectForKey:v41];
                      unsignedIntegerValue = [v52 unsignedIntegerValue];

                      v54 = unsignedIntegerValue + 1;
                      v55 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue + 1];
                      [v73 setValue:v55 forKey:v41];

                      v9 = v73;
                      v56 = [NSString stringWithFormat:@"%@-%ld", v41, v54];

                      v41 = v56;
                    }

                    else
                    {
                      [v9 setValue:&off_10110B298 forKey:v41];
                    }

                    v57 = [CPUIGridViewBaseViewModel alloc];
                    v58 = [CPUIGridViewBaseViewModelImagePlaceholder cpuiPlaceholder:0];
                    v75[0] = _NSConcreteStackBlock;
                    v75[1] = 3221225472;
                    v75[2] = sub_1000E9508;
                    v75[3] = &unk_101098068;
                    v75[5] = v14;
                    v75[6] = perform;
                    v75[4] = selfCopy;
                    BYTE2(v64) = 0;
                    LOWORD(v64) = 1;
                    LOBYTE(v63) = 0;
                    v59 = v57;
                    title = v50;
                    v60 = [v59 initWithId:v41 title:v50 subtitle:name titlePriority:v49 artworkCatalog:artworkCatalog imageShape:0 isTallArtwork:v63 placeholder:v58 accessorySystemImage:0 allowsTouches:v64 disabledAppearance:v75 isPressed:? action:?];

                    [v68 addObject:v60];
                  }

                  v12 = v70;
                  v11 = v71;
                  goto LABEL_76;
                }

                v42 = v9;
                v43 = title;
                song2 = [v14 album];
LABEL_65:
                radioStation2 = song2;
                identifiers = [song2 identifiers];
                radio = [identifiers universalStore];
                stationStringID = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [radio adamID]);
              }

LABEL_67:
              v41 = stationStringID;

              title = v43;
              v9 = v42;
              goto LABEL_68;
            }

LABEL_21:
            artworkCatalog = [radioStation artworkCatalog];
LABEL_27:

            if (!artworkCatalog)
            {
LABEL_28:
              viewController = [(MCDFuseContentManager *)selfCopy viewController];
              traitCollection = [viewController traitCollection];
              v28 = [UIImage defaultPlaceholderForTraitCollection:traitCollection];
              artworkCatalog = [MPArtworkCatalog staticArtworkCatalogWithImage:v28];

              v9 = v73;
            }

            v22 = 0;
            goto LABEL_30;
          }

          playlist = [v14 playlist];
          v17 = playlist;
          if (artworkCopy)
          {
            superHeroTallEditorialArtworkCatalog = [playlist superHeroTallEditorialArtworkCatalog];

            if (superHeroTallEditorialArtworkCatalog)
            {
              goto LABEL_17;
            }

            playlist = [v14 playlist];
            v17 = playlist;
          }

          artworkCatalog2 = [playlist artworkCatalog];
          v24 = artworkCatalog2;
          if (artworkCatalog2)
          {
            artworkCatalog = artworkCatalog2;
          }

          else
          {
            playlist2 = [v14 playlist];
            artworkCatalog = [playlist2 tracksTiledArtworkCatalogWithRows:2 columns:2];
          }

          v9 = v73;
          goto LABEL_27;
        }

        artworkCatalog = MCDMusicGeneralLogging();
        if (os_log_type_enabled(artworkCatalog, OS_LOG_TYPE_ERROR))
        {
          v20 = objc_opt_class();
          *buf = 138543618;
          v81 = v20;
          v82 = 2114;
          v83 = v65;
          _os_log_error_impl(&_mh_execute_header, artworkCatalog, OS_LOG_TYPE_ERROR, "Wrong kind (%{public}@) of child found in childrenOfItemAtIndexPath at %{public}@", buf, 0x16u);
        }

LABEL_76:

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
    }

    while (v11);
  }

  v61 = [v68 copy];

  return v61;
}

- (int64_t)maximumNumberOfItemsForDisplay
{
  v12.receiver = self;
  v12.super_class = MCDGroupingsContentManager;
  maximumNumberOfItemsForDisplay = [(MCDFuseContentManager *)&v12 maximumNumberOfItemsForDisplay];
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  request = [lastReceivedResponse request];

  loadAdditionalContentURL = [request loadAdditionalContentURL];
  if (loadAdditionalContentURL)
  {
    v7 = loadAdditionalContentURL;
    delegate = [(MCDFuseContentManager *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      delegate2 = [(MCDFuseContentManager *)self delegate];
      showRankedList = [delegate2 showRankedList];

      if (showRankedList)
      {
        if ([(MCDFuseContentManager *)self limitedUI])
        {
          maximumNumberOfItemsForDisplay = 11;
        }

        else
        {
          maximumNumberOfItemsForDisplay = 20;
        }
      }
    }

    else
    {
    }
  }

  return maximumNumberOfItemsForDisplay;
}

- (id)cellTitleAtIndexPath:(id)path
{
  pathCopy = path;
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v7 = [results sectionAtIndex:{objc_msgSend(pathCopy, "section")}];

  if ([v7 sectionType] == 11)
  {
    title = [v7 title];
  }

  else
  {
    v9 = [(MCDGroupingsContentManager *)self itemAtIndexPath:pathCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v9 sectionType] == 9)
      {
        v10 = +[NSBundle mainBundle];
        title2 = [v10 localizedStringForKey:@"Recently Played" value:&stru_101107168 table:0];
      }

      else
      {
        title2 = [v9 title];
      }
    }

    else
    {
      title2 = 0;
    }

    title = title2;
  }

  return title;
}

- (id)actionForHeaderInSection:(int64_t)section
{
  lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
  results = [lastReceivedResponse results];
  v7 = [results sectionAtIndex:section];

  if ([v7 sectionType] == 11)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = MCDGroupingsContentManager;
    v8 = [(MCDFuseContentManager *)&v10 actionForHeaderInSection:section];
  }

  return v8;
}

- (void)_initiatePlaybackForItem:(id)item
{
  itemCopy = item;
  itemType = [itemCopy itemType];
  if (itemType <= 4)
  {
    if (itemType == 1)
    {
      playbackManager = [(MCDFuseContentManager *)self playbackManager];
      album = [itemCopy album];
      viewController = [(MCDFuseContentManager *)self viewController];
      combinedPlayActivityFeatureName = [viewController combinedPlayActivityFeatureName];
      [playbackManager initiatePlaybackForAlbum:album lastResponse:0 shuffled:0 playActivityFeatureName:combinedPlayActivityFeatureName];
    }

    else
    {
      if (itemType != 4)
      {
        goto LABEL_18;
      }

      playbackManager = [(MCDFuseContentManager *)self playbackManager];
      album = [itemCopy playlist];
      viewController = [(MCDFuseContentManager *)self viewController];
      combinedPlayActivityFeatureName = [viewController combinedPlayActivityFeatureName];
      [playbackManager initiatePlaybackForPlaylist:album lastResponse:0 shuffled:0 playActivityFeatureName:combinedPlayActivityFeatureName];
    }

LABEL_16:
    goto LABEL_17;
  }

  if (itemType != 5)
  {
    if (itemType != 7)
    {
      goto LABEL_18;
    }

    delegate = [(MCDFuseContentManager *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      delegate2 = [(MCDFuseContentManager *)self delegate];
      queueListForPlayback = [delegate2 queueListForPlayback];
    }

    else
    {
      queueListForPlayback = 0;
    }

    lastReceivedResponse = [(MCDFuseContentManager *)self lastReceivedResponse];
    results = [lastReceivedResponse results];
    playbackManager = [results itemsInSectionAtIndex:0];

    lastReceivedResponse2 = [(MCDFuseContentManager *)self lastReceivedResponse];
    v20 = [(MCDGroupingsContentManager *)self allowedNumberOfItemsForDisplayWithResponse:lastReceivedResponse2 inSection:0];

    if (v20 <= [playbackManager count])
    {
      v21 = [playbackManager subarrayWithRange:{0, v20}];

      playbackManager = v21;
    }

    playbackManager2 = [(MCDFuseContentManager *)self playbackManager];
    song = [itemCopy song];
    viewController2 = [(MCDFuseContentManager *)self viewController];
    combinedPlayActivityFeatureName2 = [viewController2 combinedPlayActivityFeatureName];
    [playbackManager2 initiatePlaybackForSong:song useResultsAsPlaybackQueue:queueListForPlayback itemList:playbackManager playActivityFeatureName:combinedPlayActivityFeatureName2];

    album = [(MCDFuseContentManager *)self viewController];
    viewController = [album navigationController];
    [viewController MCD_pushNowPlayingViewControllerAnimated:1];
    goto LABEL_16;
  }

  playbackManager3 = [(MCDFuseContentManager *)self playbackManager];
  radioStation = [itemCopy radioStation];
  viewController3 = [(MCDFuseContentManager *)self viewController];
  combinedPlayActivityFeatureName3 = [viewController3 combinedPlayActivityFeatureName];
  [playbackManager3 initiatePlaybackForRadioStation:radioStation lastResponse:0 shuffled:0 playActivityFeatureName:combinedPlayActivityFeatureName3];

  playbackManager = [(MCDFuseContentManager *)self viewController];
  album = [playbackManager navigationController];
  [album MCD_pushNowPlayingViewControllerAnimated:1];
LABEL_17:

LABEL_18:
}

- (void)_actionForItem:(id)item
{
  itemCopy = item;
  itemType = [itemCopy itemType];
  if (itemType == 4)
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
  [(MCDGroupingsContentManager *)self _initiatePlaybackForItem:itemCopy];
LABEL_8:
}

- (id)_modelRequest
{
  v3 = objc_alloc_init(MPModelStoreBrowseRequest);
  [v3 setFilteringPolicy:1];
  dataSource = [(MCDFuseContentManager *)self dataSource];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    dataSource2 = [(MCDFuseContentManager *)self dataSource];
    parentSection = [dataSource2 parentSection];
    [v3 configureWithParentSection:parentSection];
  }

  dataSource3 = [(MCDFuseContentManager *)self dataSource];
  v9 = objc_opt_respondsToSelector();

  if (v9)
  {
    dataSource4 = [(MCDFuseContentManager *)self dataSource];
    [v3 setDomain:{objc_msgSend(dataSource4, "domain")}];
  }

  [v3 setClientIdentifier:MCDMusicCarPlayBundleIdentifier];
  [v3 setClientVersion:MCDMusicCarPlayVersion];
  [v3 setClientPlatformIdentifier:MCDMusicCarPlayPlatformIdentifier];
  [v3 setRequestEndpoint:1];
  [v3 setAuthenticationOptions:1];

  return v3;
}

@end