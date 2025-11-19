@interface MCDStorePlaybackManager
- (id)_normalizedStringStoreIDForContentItem:(id)a3;
- (id)_setupPlaybackIntentForContentItem:(id)a3 shouldShuffle:(BOOL)a4;
- (id)_setupPlaybackIntentForQueuedSongsLength:(int64_t)a3 startItemIdentifiers:(id)a4;
- (id)_storeIDForObject:(id)a3;
- (void)_initiatePlaybackForItem:(id)a3 shouldShuffle:(BOOL)a4 playActivityFeatureName:(id)a5;
- (void)initiatePlaybackForPlaylist:(id)a3 lastResponse:(id)a4 shuffled:(BOOL)a5 playActivityFeatureName:(id)a6;
- (void)initiatePlaybackForRadioStation:(id)a3 lastResponse:(id)a4 shuffled:(BOOL)a5 playActivityFeatureName:(id)a6;
- (void)initiatePlaybackForSong:(id)a3 lastResponse:(id)a4 shuffled:(BOOL)a5 forceScopingToResponseResults:(BOOL)a6 playActivityFeatureName:(id)a7;
- (void)initiatePlaybackForSong:(id)a3 useResultsAsPlaybackQueue:(BOOL)a4 itemList:(id)a5 playActivityFeatureName:(id)a6;
@end

@implementation MCDStorePlaybackManager

- (void)initiatePlaybackForSong:(id)a3 lastResponse:(id)a4 shuffled:(BOOL)a5 forceScopingToResponseResults:(BOOL)a6 playActivityFeatureName:(id)a7
{
  v7 = a5;
  v11 = a7;
  v12 = a3;
  v13 = [a4 results];
  v14 = [v13 itemsInSectionAtIndex:0];

  if ([v14 count])
  {
    [(MCDStorePlaybackManager *)self initiatePlaybackForSong:v12 useResultsAsPlaybackQueue:1 itemList:v14 playActivityFeatureName:v11];
  }

  else
  {
    [(MCDStorePlaybackManager *)self _initiatePlaybackForItem:v12 shouldShuffle:v7 playActivityFeatureName:v11];
  }
}

- (void)initiatePlaybackForSong:(id)a3 useResultsAsPlaybackQueue:(BOOL)a4 itemList:(id)a5 playActivityFeatureName:(id)a6
{
  v8 = a4;
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  if (!v8)
  {
    v31 = [(MCDStorePlaybackManager *)self _setupPlaybackIntentForContentItem:v10 shouldShuffle:0];
    goto LABEL_29;
  }

  v37 = v12;
  v39 = self;
  v14 = +[NSMutableArray array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v38 = v11;
  v15 = v11;
  v16 = v14;
  v17 = v15;
  v18 = [v15 countByEnumeratingWithState:&v43 objects:v47 count:16];
  v40 = v14;
  if (!v18)
  {
    goto LABEL_19;
  }

  v19 = v18;
  v20 = *v44;
  do
  {
    for (i = 0; i != v19; i = i + 1)
    {
      if (*v44 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v43 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          continue;
        }

        v23 = [v22 identifiers];
        v25 = [v23 universalStore];
        v24 = [v25 adamID];
LABEL_13:

        goto LABEL_15;
      }

      v23 = v22;
      if ([v23 itemType] == 7)
      {
        v24 = [v23 song];

        if (!v24)
        {
          goto LABEL_15;
        }

        v25 = [v23 song];
        v26 = [v25 identifiers];
        v27 = [v26 universalStore];
        v24 = [v27 adamID];

        v16 = v40;
        goto LABEL_13;
      }

      v24 = 0;
LABEL_15:

      if (v24)
      {
        v28 = [NSString stringWithFormat:@"%lld", v24];
        [v16 addObject:v28];
      }
    }

    v19 = [v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
  }

  while (v19);
LABEL_19:

  [(MCDStorePlaybackManager *)v39 setPlaybackQueueItemIDs:v16];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = [v10 song];
    v30 = [v29 identifiers];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = [v10 identifiers];
    }

    else
    {
      v30 = 0;
    }
  }

  v31 = -[MCDStorePlaybackManager _setupPlaybackIntentForQueuedSongsLength:startItemIdentifiers:](v39, "_setupPlaybackIntentForQueuedSongsLength:startItemIdentifiers:", [v16 count], v30);
  v32 = [v10 identifiers];
  v33 = [v32 personalizedStore];
  v34 = [v33 recommendationID];

  if (v34)
  {
    v35 = [v34 dataUsingEncoding:4];
  }

  else
  {
    v35 = 0;
  }

  [v31 setPlayActivityRecommendationData:v35];

  v13 = v37;
  v11 = v38;
  self = v39;
LABEL_29:
  [v31 setPlayActivityFeatureName:v13];
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_100103874;
  v41[3] = &unk_1010987A0;
  v41[4] = self;
  v42 = v31;
  v36 = v31;
  [(MCDPlaybackManager *)self setupPlaybackRequestWithCompletion:v41];
}

- (void)initiatePlaybackForPlaylist:(id)a3 lastResponse:(id)a4 shuffled:(BOOL)a5 playActivityFeatureName:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v23.receiver = self;
  v23.super_class = MCDStorePlaybackManager;
  v13 = [(MCDLibraryPlaybackManager *)&v23 playbackRequestForPlaylist:v10];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100103A28;
  v17[3] = &unk_1010987C8;
  v18 = v10;
  v19 = v11;
  v22 = a5;
  v20 = v12;
  v21 = self;
  v14 = v12;
  v15 = v11;
  v16 = v10;
  [v13 performWithResponseHandler:v17];
}

- (void)initiatePlaybackForRadioStation:(id)a3 lastResponse:(id)a4 shuffled:(BOOL)a5 playActivityFeatureName:(id)a6
{
  v8 = a3;
  v9 = a6;
  v10 = v8;
  objc_opt_class();
  v11 = v10;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [v10 radioStation];
  }

  if (v11)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100103BD4;
    v12[3] = &unk_1010987F0;
    v13 = v11;
    v14 = v9;
    v15 = self;
    [(MCDPlaybackManager *)self setupPlaybackRequestWithCompletion:v12];
  }
}

- (void)_initiatePlaybackForItem:(id)a3 shouldShuffle:(BOOL)a4 playActivityFeatureName:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Initiating playback for store item", buf, 2u);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100103E10;
  v13[3] = &unk_101098818;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [(MCDPlaybackManager *)self setupPlaybackRequestWithCompletion:v13];
}

- (id)_setupPlaybackIntentForQueuedSongsLength:(int64_t)a3 startItemIdentifiers:(id)a4
{
  v7 = a4;
  v8 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting up playback for queued songs", v17, 2u);
  }

  v9 = objc_alloc_init(MPCModelStorePlaybackItemsRequest);
  v10 = [(MCDStorePlaybackManager *)self playbackQueueItemIDs];
  v11 = [(MCDStorePlaybackManager *)self playbackQueueItemIDs];
  v12 = [v11 count];
  v13 = a3;
  if (v12 <= a3)
  {
    v4 = [(MCDStorePlaybackManager *)self playbackQueueItemIDs];
    v13 = [v4 count];
  }

  v14 = [v10 subarrayWithRange:{0, v13}];
  [v9 setStoreIDs:v14];

  if (v12 <= a3)
  {
  }

  v15 = [v9 playbackIntentWithStartItemIdentifiers:v7];

  return v15;
}

- (id)_setupPlaybackIntentForContentItem:(id)a3 shouldShuffle:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = objc_alloc_init(MPCModelStorePlaybackItemsRequest);
  v7 = objc_alloc_init(NSMutableArray);
  v8 = [v5 identifiers];
  v9 = [v8 universalStore];
  v10 = [v9 globalPlaylistID];

  if (v10 || ([v5 identifiers], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "universalStore"), v12 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", objc_msgSend(v12, "adamID")), v10 = objc_claimAutoreleasedReturnValue(), v12, v11, v10))
  {
    [v7 addObject:v10];
  }

  [v6 setStoreIDs:v7];
  v13 = [v6 playbackIntentWithStartItemIdentifiers:0];
  v14 = [v5 identifiers];
  v15 = [v14 personalizedStore];
  v16 = [v15 recommendationID];

  if (v16)
  {
    v17 = [v16 dataUsingEncoding:4];
  }

  else
  {
    v17 = 0;
  }

  [v13 setPlayActivityRecommendationData:v17];
  if (v4)
  {
    v18 = 1;
  }

  else
  {
    v18 = -1;
  }

  [v13 setShuffleMode:v18];

  return v13;
}

- (id)_normalizedStringStoreIDForContentItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [(MCDStorePlaybackManager *)self _storeIDForObject:v4];
    goto LABEL_12;
  }

  v5 = v4;
  v6 = [v5 itemType];
  if (v6 == 7)
  {
    v7 = [v5 song];
  }

  else if (v6 == 4)
  {
    v7 = [v5 playlist];
  }

  else
  {
    if (v6 != 1)
    {
      v8 = 0;
      goto LABEL_11;
    }

    v7 = [v5 album];
  }

  v9 = v7;
  v8 = [(MCDStorePlaybackManager *)self _storeIDForObject:v7];

LABEL_11:
LABEL_12:

  return v8;
}

- (id)_storeIDForObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [v3 identifiers];
    v5 = [v4 universalStore];
    v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 adamID]);
    v7 = MPStoreItemMetadataStringNormalizeStoreIDValue();

LABEL_4:
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 identifiers];
    v5 = [v4 universalStore];
    v7 = [v5 globalPlaylistID];
    goto LABEL_4;
  }

  v7 = 0;
LABEL_5:

  return v7;
}

@end