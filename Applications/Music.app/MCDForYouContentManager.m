@interface MCDForYouContentManager
- (MCDForYouContentManager)initWithDataSource:(id)a3 delegate:(id)a4 viewController:(id)a5 playbackManager:(id)a6 limitedUI:(BOOL)a7 contentResults:(id)a8;
- (id)_modelRequest;
- (id)_refreshRequest;
- (id)cellTitleAtIndexPath:(id)a3;
- (id)childrenOfItemAtIndexPath:(id)a3;
- (id)itemAtIndexPath:(id)a3;
- (id)rowCellItemConfigurationsAtIndexPath:(id)a3;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)viewModelsAtIndexPath:(id)a3 prefersTallArtwork:(BOOL)a4 withSubtitleForPlaylists:(BOOL)a5 actionToPerform:(unint64_t)a6;
- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)a3 inSection:(int64_t)a4;
- (unint64_t)cellTypeAtIndexPath:(id)a3;
- (void)_actionForItem:(id)a3;
- (void)_initiatePlaybackForItem:(id)a3;
- (void)_processRefreshResponse:(id)a3 error:(id)a4;
- (void)dealloc;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
@end

@implementation MCDForYouContentManager

- (MCDForYouContentManager)initWithDataSource:(id)a3 delegate:(id)a4 viewController:(id)a5 playbackManager:(id)a6 limitedUI:(BOOL)a7 contentResults:(id)a8
{
  v12.receiver = self;
  v12.super_class = MCDForYouContentManager;
  v8 = [(MCDFuseContentManager *)&v12 initWithDataSource:a3 delegate:a4 viewController:a5 playbackManager:a6 limitedUI:a7 contentResults:a8];
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
  v3 = [(MCDForYouContentManager *)self siriDirectActionSource];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = MCDForYouContentManager;
  [(MCDFuseContentManager *)&v4 dealloc];
}

- (id)cellTitleAtIndexPath:(id)a3
{
  v3 = [(MCDForYouContentManager *)self itemAtIndexPath:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 groupType];
    v5 = [v3 title];
    v6 = v5;
    if (v4 == 4)
    {
      if (v5)
      {
        v7 = v5;
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

- (id)childrenOfItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v6 = [v5 results];
  v7 = [v6 numberOfSections];
  v8 = [v4 section];

  if (v7 <= v8)
  {
    v13 = &__NSArray0__struct;
  }

  else
  {
    v9 = [(MCDFuseContentManager *)self lastReceivedResponse];
    v10 = [v9 results];
    v11 = [v10 sectionAtIndex:{objc_msgSend(v4, "section")}];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 numberOfItems];
      v13 = objc_opt_new();
      if (v12 >= 1)
      {
        for (i = 0; i != v12; ++i)
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

- (id)rowCellItemConfigurationsAtIndexPath:(id)a3
{
  v3 = [(MCDForYouContentManager *)self childrenOfItemAtIndexPath:a3];
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
        v11 = [v10 itemType];
        if (v11 == 3)
        {
          v12 = [v10 radioStation];
LABEL_13:
          v13 = v12;
          v16 = [v12 artworkCatalog];
LABEL_16:

          if (v16)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }

        if (v11 == 2)
        {
          v13 = [v10 playlist];
          v14 = [v13 artworkCatalog];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v17 = [v10 playlist];
            v16 = [v17 tracksTiledArtworkCatalogWithRows:2 columns:2];
          }

          goto LABEL_16;
        }

        if (v11 == 1)
        {
          v12 = [v10 album];
          goto LABEL_13;
        }

LABEL_17:
        v18 = [(MCDFuseContentManager *)self viewController];
        v19 = [v18 traitCollection];
        v20 = [UIImage defaultPlaceholderForTraitCollection:v19];
        v16 = [MPArtworkCatalog staticArtworkCatalogWithImage:v20];

LABEL_18:
        v21 = [v10 itemType];
        if (v21 == 3)
        {
          v25 = [v10 radioStation];
          goto LABEL_24;
        }

        if (v21 == 2)
        {
          v25 = [v10 playlist];
LABEL_24:
          v23 = v25;
          v24 = [v25 name];
          goto LABEL_25;
        }

        v22 = &stru_101107168;
        if (v21 != 1)
        {
          goto LABEL_26;
        }

        v23 = [v10 album];
        v24 = [v23 title];
LABEL_25:
        v22 = v24;

LABEL_26:
        if ([v10 itemType] != 1)
        {
          v28 = 0;
          if (!v16)
          {
            goto LABEL_31;
          }

LABEL_30:
          v29 = [[CPUIImageRowCellItemConfiguration alloc] initWithArtworkCatalog:v16 title:v22 subtitle:v28];
          [v4 addObject:v29];

          goto LABEL_31;
        }

        v26 = [v10 album];
        v27 = [v26 artist];
        v28 = [v27 name];

        if (v16)
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

- (unint64_t)cellTypeAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v6 = [v5 results];
  v7 = [v6 sectionAtIndex:{objc_msgSend(v4, "section")}];

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
    v8 = [(MCDFuseContentManager *)&v10 cellTypeAtIndexPath:v4];
  }

  return v8;
}

- (id)viewModelsAtIndexPath:(id)a3 prefersTallArtwork:(BOOL)a4 withSubtitleForPlaylists:(BOOL)a5 actionToPerform:(unint64_t)a6
{
  v61 = a4;
  v7 = a3;
  v63 = objc_opt_new();
  v58 = [(MCDForYouContentManager *)self itemAtIndexPath:v7];
  v59 = v7;
  v66 = self;
  v8 = [(MCDForYouContentManager *)self childrenOfItemAtIndexPath:v7];
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
        v12 = [v11 itemType];
        if (v12 == 3)
        {
          v13 = [v11 radioStation];
          goto LABEL_16;
        }

        if (v12 != 2)
        {
          if (v12 != 1)
          {
            goto LABEL_25;
          }

          v13 = [v11 album];
          v14 = v13;
          if (v61)
          {
            v15 = [v13 superHeroTallEditorialArtworkCatalog];

            if (v15)
            {
              goto LABEL_14;
            }

            v13 = [v11 album];
LABEL_16:
            v14 = v13;
          }

          v17 = [v13 artworkCatalog];
          goto LABEL_24;
        }

        v16 = [v11 playlist];
        v14 = v16;
        if (v61)
        {
          v15 = [v16 superHeroTallEditorialArtworkCatalog];

          if (v15)
          {
LABEL_14:
            v17 = v15;
            v69 = 1;
            v70 = v17;
            goto LABEL_27;
          }

          v16 = [v11 playlist];
          v14 = v16;
        }

        v18 = [v16 artworkCatalog];
        v19 = v18;
        if (v18)
        {
          v17 = v18;
        }

        else
        {
          v20 = [v11 playlist];
          v17 = [v20 tracksTiledArtworkCatalogWithRows:2 columns:2];
        }

LABEL_24:
        if (!v17)
        {
LABEL_25:
          v21 = [(MCDFuseContentManager *)v66 viewController];
          v22 = [v21 traitCollection];
          v23 = [UIImage defaultPlaceholderForTraitCollection:v22];
          v17 = [MPArtworkCatalog staticArtworkCatalogWithImage:v23];
        }

        v70 = 0;
        v69 = 0;
LABEL_27:
        v24 = [v11 itemType];
        if (v24 == 3)
        {
          v28 = [v11 radioStation];
          goto LABEL_33;
        }

        if (v24 == 2)
        {
          v28 = [v11 playlist];
LABEL_33:
          v26 = v28;
          v27 = [v28 name];
          goto LABEL_34;
        }

        v25 = &stru_101107168;
        if (v24 != 1)
        {
          goto LABEL_35;
        }

        v26 = [v11 album];
        v27 = [v26 title];
LABEL_34:
        v25 = v27;

LABEL_35:
        if ([v11 itemType] == 1)
        {
          v29 = [v11 album];
          v30 = [v29 artist];
          v31 = [v30 name];
        }

        else
        {
          v31 = 0;
        }

        v32 = [v11 itemType];
        if (v32 == 3)
        {
          v33 = [v11 radioStation];
          v34 = [v33 identifiers];
          v35 = [v34 radio];
          v36 = [v35 stationStringID];
        }

        else if (v32 == 2)
        {
          v33 = [v11 playlist];
          v34 = [v33 identifiers];
          v35 = [v34 universalStore];
          v36 = [v35 globalPlaylistID];
        }

        else
        {
          if (v32 != 1)
          {
            v37 = 0;
            goto LABEL_46;
          }

          v33 = [v11 album];
          v34 = [v33 identifiers];
          v35 = [v34 universalStore];
          v36 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", [v35 adamID]);
        }

        v37 = v36;

LABEL_46:
        v38 = ([v11 itemType] & 0xFFFFFFFFFFFFFFFELL) == 2;
        if (v17 && v25 && v37)
        {
          v39 = [v9 objectForKey:v37];
          if (v39)
          {
            v40 = [v9 objectForKey:v37];
            v65 = v11;
            v41 = i;
            v42 = v38;
            v43 = v25;
            v44 = v17;
            v45 = v31;
            v46 = v9;
            v47 = [v40 unsignedIntegerValue];

            v48 = [NSNumber numberWithUnsignedInteger:++v47];
            v49 = v46;
            v31 = v45;
            v17 = v44;
            v25 = v43;
            v38 = v42;
            i = v41;
            v11 = v65;
            [v49 setValue:v48 forKey:v37];

            v50 = [NSString stringWithFormat:@"%@-%ld", v37, v47];

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
          v71[6] = a6;
          v71[4] = v66;
          BYTE2(v57) = 0;
          LOWORD(v57) = 1;
          LOBYTE(v56) = v69;
          v53 = [v51 initWithId:v37 title:v25 subtitle:v31 titlePriority:v38 artworkCatalog:v17 imageShape:0 isTallArtwork:v56 placeholder:v52 accessorySystemImage:0 allowsTouches:v57 disabledAppearance:v71 isPressed:? action:?];
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v6 = [v5 results];
  v7 = [v6 sectionAtIndex:a4];

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [v7 displaysAsTitledSectionWithRowsInCarPlay])
  {
    v8 = [v7 title];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v13 = a4;
  v7 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v8 = [v7 results];
  v9 = [v8 sectionAtIndex:a5];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v9 displaysAsTitledSectionWithRowsInCarPlay])
      {
        v10 = v13;
        v11 = [UIFont boldSystemFontOfSize:16.0];
        v12 = [v10 textLabel];

        [v12 setFont:v11];
      }
    }
  }
}

- (id)itemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v7 = [v6 results];
  v8 = [v7 numberOfSections];

  if (v5 >= v8)
  {
    v13 = 0;
  }

  else
  {
    v9 = [(MCDFuseContentManager *)self lastReceivedResponse];
    v10 = [v9 results];
    v11 = [v10 sectionAtIndex:{objc_msgSend(v4, "section")}];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 displaysAsTitledSectionWithRowsInCarPlay])
    {
      v12 = [v11 itemAtIndex:{objc_msgSend(v4, "row")}];
    }

    else
    {
      v12 = v11;
    }

    v13 = v12;
  }

  return v13;
}

- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)a3 inSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v8 = [v7 results];
  v9 = [v8 sectionAtIndex:a4];

  if ([v9 displaysAsTitledSectionWithRowsInCarPlay])
  {
    v10 = [v6 results];
    v11 = [v10 sectionAtIndex:a4];
    v12 = [v11 numberOfItems];
    if (v12 >= [(MCDFuseContentManager *)self maximumNumberOfItemsForDisplay])
    {
      v15 = [(MCDFuseContentManager *)self maximumNumberOfItemsForDisplay];
    }

    else
    {
      v13 = [v6 results];
      v14 = [v13 sectionAtIndex:a4];
      v15 = [v14 numberOfItems];
    }
  }

  else
  {
    v15 = [v9 numberOfItems] > 0;
  }

  return v15;
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

- (void)_processRefreshResponse:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100DEEBD8();
    }
  }

  else
  {
    v9 = [(MCDFuseContentManager *)self lastReceivedResponse];

    if (v9)
    {
      v10 = [v6 results];
      v8 = [v10 firstSection];

      if (v8)
      {
        v22 = 0;
        v23 = &v22;
        v24 = 0x2020000000;
        v25 = 0x7FFFFFFFFFFFFFFFLL;
        v11 = [(MCDFuseContentManager *)self lastReceivedResponse];
        v12 = [v11 results];
        v13 = [v12 mutableCopy];

        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_1000E7A58;
        v19[3] = &unk_101098090;
        v8 = v8;
        v20 = v8;
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
          v17 = v11;
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
      v8 = MCDMusicGeneralLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
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
  v3 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v4 = [v3 results];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E7E20;
  v9[3] = &unk_1010980E0;
  v9[4] = &v10;
  [v4 enumerateSectionsUsingBlock:v9];

  if (v11[5])
  {
    v5 = [(MCDForYouContentManager *)self _modelRequest];
    [v5 setCustomForYouURL:v11[5]];
    [v5 setRefreshRequest:1];
  }

  else
  {
    v6 = MCDMusicGeneralLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [(MCDFuseContentManager *)self lastReceivedResponse];
      sub_100DEEDF4(v7, buf, v6);
    }

    v5 = 0;
  }

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (void)_initiatePlaybackForItem:(id)a3
{
  v13 = a3;
  v4 = [v13 itemType];
  if (v4 == 3)
  {
    v9 = [(MCDFuseContentManager *)self playbackManager];
    v10 = [v13 radioStation];
    v11 = [(MCDFuseContentManager *)self viewController];
    v12 = [v11 combinedPlayActivityFeatureName];
    [v9 initiatePlaybackForRadioStation:v10 lastResponse:0 shuffled:0 playActivityFeatureName:v12];

    v5 = [(MCDFuseContentManager *)self viewController];
    v6 = [v5 navigationController];
    [v6 MCD_pushNowPlayingViewControllerAnimated:1];
  }

  else
  {
    if (v4 == 2)
    {
      v5 = [(MCDFuseContentManager *)self playbackManager];
      v6 = [v13 playlist];
      v7 = [(MCDFuseContentManager *)self viewController];
      v8 = [v7 combinedPlayActivityFeatureName];
      [v5 initiatePlaybackForPlaylist:v6 lastResponse:0 shuffled:0 playActivityFeatureName:v8];
    }

    else
    {
      if (v4 != 1)
      {
        goto LABEL_9;
      }

      v5 = [(MCDFuseContentManager *)self playbackManager];
      v6 = [v13 album];
      v7 = [(MCDFuseContentManager *)self viewController];
      v8 = [v7 combinedPlayActivityFeatureName];
      [v5 initiatePlaybackForAlbum:v6 lastResponse:0 shuffled:0 playActivityFeatureName:v8];
    }
  }

LABEL_9:
}

- (void)_actionForItem:(id)a3
{
  v17 = a3;
  v4 = [v17 itemType];
  if (v4 == 2)
  {
    v8 = [_TtC5Music27MCDItemDetailViewController alloc];
    v6 = [v17 playlist];
    v7 = [(MCDItemDetailViewController *)v8 initWithPlaylist:v6 onlyDownloaded:0 preferCatalog:1];
  }

  else
  {
    if (v4 != 1)
    {
      goto LABEL_7;
    }

    v5 = [_TtC5Music27MCDItemDetailViewController alloc];
    v6 = [v17 album];
    v7 = [(MCDItemDetailViewController *)v5 initWithAlbum:v6 onlyDownloaded:0 preferCatalog:1];
  }

  v9 = v7;

  if (v9)
  {
    v10 = [(MCDFuseContentManager *)self viewController];
    [(MCDItemDetailViewController *)v9 setPlayActivityFeatureNameSourceViewController:v10];

    v11 = [v17 identifiers];
    v12 = [v11 personalizedStore];
    v13 = [v12 recommendationID];
    v14 = [v13 dataUsingEncoding:4];
    [(MCDItemDetailViewController *)v9 setPlayActivityForwardedRecommendationData:v14];

    v15 = [(MCDFuseContentManager *)self viewController];
    v16 = [v15 navigationController];
    [v16 pushViewController:v9 animated:1];

    goto LABEL_8;
  }

LABEL_7:
  [(MCDForYouContentManager *)self _initiatePlaybackForItem:v17];
LABEL_8:
}

@end