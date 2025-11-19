@interface MCDRadioMusicKitContentManager
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_modelRequest;
- (id)childrenOfItemAtIndexPath:(id)a3;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)viewModelsAtIndexPath:(id)a3 prefersTallArtwork:(BOOL)a4 withSubtitleForPlaylists:(BOOL)a5 actionToPerform:(unint64_t)a6;
- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)a3 inSection:(int64_t)a4;
- (unint64_t)cellTypeAtIndexPath:(id)a3;
- (void)__initiatePlaybackForItem:(id)a3;
- (void)_initiatePlaybackForItem:(id)a3;
- (void)_initiatePlaybackForItem:(id)a3 shouldPushNowPlaying:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateLiveStationsRow;
@end

@implementation MCDRadioMusicKitContentManager

- (id)childrenOfItemAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v6 = [v5 results];
  v7 = [v6 numberOfSections];
  v8 = [v4 section];

  if (v7 <= v8)
  {
    v11 = &__NSArray0__struct;
  }

  else
  {
    v9 = [(MCDFuseContentManager *)self lastReceivedResponse];
    v10 = [v9 results];
    v11 = [v10 itemsInSectionAtIndex:{objc_msgSend(v4, "section")}];
  }

  return v11;
}

- (int64_t)allowedNumberOfItemsForDisplayWithResponse:(id)a3 inSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(MCDFuseContentManager *)self contentResults];

  if (v7)
  {
    v8 = [(MCDFuseContentManager *)self contentResults];
    v9 = [v8 numberOfItemsInSection:a4];
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MCDRadioMusicKitContentManager;
    v9 = [(MCDGroupingsContentManager *)&v11 allowedNumberOfItemsForDisplayWithResponse:v6 inSection:a4];
  }

  return v9;
}

- (id)_modelRequest
{
  v8.receiver = self;
  v8.super_class = MCDRadioMusicKitContentManager;
  v2 = [(MCDGroupingsContentManager *)&v8 _modelRequest];
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.mobileipod"];
  v4 = +[MPCloudServiceStatusController sharedController];
  v5 = [v4 musicSubscriptionStatus];

  if ([v3 BOOLForKey:@"UserRequestedSubscriptionHidden"])
  {
    v6 = 3;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    if ([v5 hasCapability:1])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  [v2 setSubscriptionStatus:v6];
LABEL_8:
  [v2 setAdditionalContent:1];
  [v2 setOptions:4];

  return v2;
}

- (void)_initiatePlaybackForItem:(id)a3 shouldPushNowPlaying:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(MCDRadioMusicKitContentManager *)self setShouldPushNowPlayingOnNextPlaybackManagerCall:v4];
  [(MCDRadioMusicKitContentManager *)self __initiatePlaybackForItem:v6];
}

- (void)_initiatePlaybackForItem:(id)a3
{
  v4 = a3;
  [(MCDRadioMusicKitContentManager *)self setShouldPushNowPlayingOnNextPlaybackManagerCall:1];
  [(MCDRadioMusicKitContentManager *)self __initiatePlaybackForItem:v4];
}

- (void)__initiatePlaybackForItem:(id)a3
{
  v11 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v10 = v11;
    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_8;
    }

    v4 = [(MCDFuseContentManager *)self playbackManager];
    v5 = [(MCDFuseContentManager *)self viewController];
    v6 = [v5 combinedPlayActivityFeatureName];
    [v4 initiatePlaybackForRadioStation:v11 lastResponse:0 shuffled:0 playActivityFeatureName:v6];
    goto LABEL_6;
  }

  v4 = v11;
  if ([v4 hasLoadedValueForKey:MPModelStoreBrowseSectionRelationshipRadioStation])
  {
    v5 = [(MCDFuseContentManager *)self playbackManager];
    v6 = [v4 radioStation];
    v7 = [(MCDFuseContentManager *)self viewController];
    v8 = [v7 combinedPlayActivityFeatureName];
    [v5 initiatePlaybackForRadioStation:v6 lastResponse:0 shuffled:0 playActivityFeatureName:v8];

LABEL_6:
  }

  v10 = v11;
LABEL_8:
}

- (unint64_t)cellTypeAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v6 = [v5 results];
  v7 = [v6 sectionAtIndex:{objc_msgSend(v4, "section")}];

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
    v8 = [(MCDGroupingsContentManager *)&v10 cellTypeAtIndexPath:v4];
  }

  return v8;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(MCDFuseContentManager *)self contentResults];

  v8 = 0.0;
  if (!v7)
  {
    v9 = [(MCDFuseContentManager *)self lastReceivedResponse];
    v10 = [v9 results];
    v11 = [v10 sectionAtIndex:a4];

    if ([v11 sectionType] != 13)
    {
      v14.receiver = self;
      v14.super_class = MCDRadioMusicKitContentManager;
      [(MCDFuseContentManager *)&v14 tableView:v6 heightForHeaderInSection:a4];
      v8 = v12;
    }
  }

  return v8;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v8 = [v7 results];
  v9 = [v8 sectionAtIndex:a4];

  if ([v9 sectionType] == 13)
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = MCDRadioMusicKitContentManager;
    v10 = [(MCDFuseContentManager *)&v12 tableView:v6 viewForHeaderInSection:a4];
  }

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MCDFuseContentManager *)self lastReceivedResponse];
  v9 = [v8 results];
  v10 = [v9 sectionAtIndex:{objc_msgSend(v7, "section")}];

  if ([v10 sectionType] != 13)
  {
    v11.receiver = self;
    v11.super_class = MCDRadioMusicKitContentManager;
    [(MCDFuseContentManager *)&v11 tableView:v6 didSelectRowAtIndexPath:v7];
  }
}

- (void)updateLiveStationsRow
{
  v3 = [(MCDFuseContentManager *)self tableView];
  v4 = [v3 indexPathsForVisibleRows];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
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
        v11 = [(MCDFuseContentManager *)self lastReceivedResponse];
        v12 = [v11 results];
        v13 = [v12 sectionAtIndex:{objc_msgSend(v10, "section")}];

        if ([v13 sectionType] == 13)
        {
          v14 = [(MCDFuseContentManager *)self tableView];
          v15 = [v14 cellForRowAtIndexPath:v10];

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

- (id)viewModelsAtIndexPath:(id)a3 prefersTallArtwork:(BOOL)a4 withSubtitleForPlaylists:(BOOL)a5 actionToPerform:(unint64_t)a6
{
  v7 = a3;
  v49 = objc_opt_new();
  v47 = self;
  v41 = v7;
  v8 = [(MCDRadioMusicKitContentManager *)self childrenOfItemAtIndexPath:v7];
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
        v13 = [v12 radioStation];
        v14 = [v13 identifiers];
        v15 = [v14 radio];
        v16 = [v15 stationStringID];

        v17 = [v9 objectForKey:v16];
        if (v17)
        {
          v18 = [v9 objectForKey:v16];
          v19 = [v18 unsignedIntegerValue];

          v20 = v19 + 1;
          v21 = [NSNumber numberWithUnsignedInteger:v19 + 1];
          [v9 setValue:v21 forKey:v16];

          v22 = [NSString stringWithFormat:@"%@-%ld", v16, v20];

          v16 = v22;
        }

        else
        {
          [v9 setValue:&off_10110B2B0 forKey:v16];
        }

        v23 = [v10 + 3960 shared];
        v24 = [v23 currentPlayingRadioStation];
        v25 = [v24 identifiers];
        v26 = [v25 radio];
        v27 = [v26 stationStringID];
        if ([v27 isEqualToString:v16])
        {
          v28 = [v10 + 3960 shared];
          v51 = [v28 playerState] == 2;
        }

        else
        {
          v51 = 0;
        }

        v29 = [CPUIGridViewBaseViewModel alloc];
        v30 = [v12 radioStation];
        v31 = [v30 name];
        v32 = [v12 radioStation];
        v33 = [v32 editorialArtworkCatalog];
        v34 = v33;
        if (!v33)
        {
          v44 = [v12 radioStation];
          v34 = [v44 artworkCatalog];
          v43 = v34;
        }

        v35 = [CPUIGridViewBaseViewModelImagePlaceholder cpuiPlaceholder:6];
        v52[0] = _NSConcreteStackBlock;
        v52[1] = 3221225472;
        v52[2] = sub_1000FC01C;
        v52[3] = &unk_101098068;
        v52[5] = v12;
        v52[6] = a6;
        v52[4] = v47;
        BYTE2(v40) = v51;
        LOWORD(v40) = 1;
        LOBYTE(v39) = 0;
        v36 = [v29 initWithId:v16 title:v31 subtitle:0 titlePriority:1 artworkCatalog:v34 imageShape:0 isTallArtwork:v39 placeholder:v35 accessorySystemImage:0 allowsTouches:v40 disabledAppearance:v52 isPressed:? action:?];

        if (!v33)
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