@interface MCDStorePlaybackManager
- (id)_normalizedStringStoreIDForContentItem:(id)item;
- (id)_setupPlaybackIntentForContentItem:(id)item shouldShuffle:(BOOL)shuffle;
- (id)_setupPlaybackIntentForQueuedSongsLength:(int64_t)length startItemIdentifiers:(id)identifiers;
- (id)_storeIDForObject:(id)object;
- (void)_initiatePlaybackForItem:(id)item shouldShuffle:(BOOL)shuffle playActivityFeatureName:(id)name;
- (void)initiatePlaybackForPlaylist:(id)playlist lastResponse:(id)response shuffled:(BOOL)shuffled playActivityFeatureName:(id)name;
- (void)initiatePlaybackForRadioStation:(id)station lastResponse:(id)response shuffled:(BOOL)shuffled playActivityFeatureName:(id)name;
- (void)initiatePlaybackForSong:(id)song lastResponse:(id)response shuffled:(BOOL)shuffled forceScopingToResponseResults:(BOOL)results playActivityFeatureName:(id)name;
- (void)initiatePlaybackForSong:(id)song useResultsAsPlaybackQueue:(BOOL)queue itemList:(id)list playActivityFeatureName:(id)name;
@end

@implementation MCDStorePlaybackManager

- (void)initiatePlaybackForSong:(id)song lastResponse:(id)response shuffled:(BOOL)shuffled forceScopingToResponseResults:(BOOL)results playActivityFeatureName:(id)name
{
  shuffledCopy = shuffled;
  nameCopy = name;
  songCopy = song;
  results = [response results];
  v14 = [results itemsInSectionAtIndex:0];

  if ([v14 count])
  {
    [(MCDStorePlaybackManager *)self initiatePlaybackForSong:songCopy useResultsAsPlaybackQueue:1 itemList:v14 playActivityFeatureName:nameCopy];
  }

  else
  {
    [(MCDStorePlaybackManager *)self _initiatePlaybackForItem:songCopy shouldShuffle:shuffledCopy playActivityFeatureName:nameCopy];
  }
}

- (void)initiatePlaybackForSong:(id)song useResultsAsPlaybackQueue:(BOOL)queue itemList:(id)list playActivityFeatureName:(id)name
{
  queueCopy = queue;
  songCopy = song;
  listCopy = list;
  nameCopy = name;
  v13 = nameCopy;
  if (!queueCopy)
  {
    v31 = [(MCDStorePlaybackManager *)self _setupPlaybackIntentForContentItem:songCopy shouldShuffle:0];
    goto LABEL_29;
  }

  v37 = nameCopy;
  selfCopy = self;
  v14 = +[NSMutableArray array];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v38 = listCopy;
  v15 = listCopy;
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

        identifiers = [v22 identifiers];
        universalStore = [identifiers universalStore];
        adamID = [universalStore adamID];
LABEL_13:

        goto LABEL_15;
      }

      identifiers = v22;
      if ([identifiers itemType] == 7)
      {
        adamID = [identifiers song];

        if (!adamID)
        {
          goto LABEL_15;
        }

        universalStore = [identifiers song];
        identifiers2 = [universalStore identifiers];
        universalStore2 = [identifiers2 universalStore];
        adamID = [universalStore2 adamID];

        v16 = v40;
        goto LABEL_13;
      }

      adamID = 0;
LABEL_15:

      if (adamID)
      {
        v28 = [NSString stringWithFormat:@"%lld", adamID];
        [v16 addObject:v28];
      }
    }

    v19 = [v17 countByEnumeratingWithState:&v43 objects:v47 count:16];
  }

  while (v19);
LABEL_19:

  [(MCDStorePlaybackManager *)selfCopy setPlaybackQueueItemIDs:v16];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    song = [songCopy song];
    identifiers3 = [song identifiers];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifiers3 = [songCopy identifiers];
    }

    else
    {
      identifiers3 = 0;
    }
  }

  v31 = -[MCDStorePlaybackManager _setupPlaybackIntentForQueuedSongsLength:startItemIdentifiers:](selfCopy, "_setupPlaybackIntentForQueuedSongsLength:startItemIdentifiers:", [v16 count], identifiers3);
  identifiers4 = [songCopy identifiers];
  personalizedStore = [identifiers4 personalizedStore];
  recommendationID = [personalizedStore recommendationID];

  if (recommendationID)
  {
    v35 = [recommendationID dataUsingEncoding:4];
  }

  else
  {
    v35 = 0;
  }

  [v31 setPlayActivityRecommendationData:v35];

  v13 = v37;
  listCopy = v38;
  self = selfCopy;
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

- (void)initiatePlaybackForPlaylist:(id)playlist lastResponse:(id)response shuffled:(BOOL)shuffled playActivityFeatureName:(id)name
{
  playlistCopy = playlist;
  responseCopy = response;
  nameCopy = name;
  v23.receiver = self;
  v23.super_class = MCDStorePlaybackManager;
  v13 = [(MCDLibraryPlaybackManager *)&v23 playbackRequestForPlaylist:playlistCopy];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100103A28;
  v17[3] = &unk_1010987C8;
  v18 = playlistCopy;
  v19 = responseCopy;
  shuffledCopy = shuffled;
  v20 = nameCopy;
  selfCopy = self;
  v14 = nameCopy;
  v15 = responseCopy;
  v16 = playlistCopy;
  [v13 performWithResponseHandler:v17];
}

- (void)initiatePlaybackForRadioStation:(id)station lastResponse:(id)response shuffled:(BOOL)shuffled playActivityFeatureName:(id)name
{
  stationCopy = station;
  nameCopy = name;
  v10 = stationCopy;
  objc_opt_class();
  radioStation = v10;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    radioStation = [v10 radioStation];
  }

  if (radioStation)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100103BD4;
    v12[3] = &unk_1010987F0;
    v13 = radioStation;
    v14 = nameCopy;
    selfCopy = self;
    [(MCDPlaybackManager *)self setupPlaybackRequestWithCompletion:v12];
  }
}

- (void)_initiatePlaybackForItem:(id)item shouldShuffle:(BOOL)shuffle playActivityFeatureName:(id)name
{
  itemCopy = item;
  nameCopy = name;
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
  v14 = itemCopy;
  shuffleCopy = shuffle;
  v15 = nameCopy;
  v11 = nameCopy;
  v12 = itemCopy;
  [(MCDPlaybackManager *)self setupPlaybackRequestWithCompletion:v13];
}

- (id)_setupPlaybackIntentForQueuedSongsLength:(int64_t)length startItemIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v8 = MCDMusicGeneralLogging();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting up playback for queued songs", v17, 2u);
  }

  v9 = objc_alloc_init(MPCModelStorePlaybackItemsRequest);
  playbackQueueItemIDs = [(MCDStorePlaybackManager *)self playbackQueueItemIDs];
  playbackQueueItemIDs2 = [(MCDStorePlaybackManager *)self playbackQueueItemIDs];
  v12 = [playbackQueueItemIDs2 count];
  lengthCopy = length;
  if (v12 <= length)
  {
    playbackQueueItemIDs3 = [(MCDStorePlaybackManager *)self playbackQueueItemIDs];
    lengthCopy = [playbackQueueItemIDs3 count];
  }

  v14 = [playbackQueueItemIDs subarrayWithRange:{0, lengthCopy}];
  [v9 setStoreIDs:v14];

  if (v12 <= length)
  {
  }

  v15 = [v9 playbackIntentWithStartItemIdentifiers:identifiersCopy];

  return v15;
}

- (id)_setupPlaybackIntentForContentItem:(id)item shouldShuffle:(BOOL)shuffle
{
  shuffleCopy = shuffle;
  itemCopy = item;
  v6 = objc_alloc_init(MPCModelStorePlaybackItemsRequest);
  v7 = objc_alloc_init(NSMutableArray);
  identifiers = [itemCopy identifiers];
  universalStore = [identifiers universalStore];
  globalPlaylistID = [universalStore globalPlaylistID];

  if (globalPlaylistID || ([itemCopy identifiers], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "universalStore"), v12 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lld", objc_msgSend(v12, "adamID")), globalPlaylistID = objc_claimAutoreleasedReturnValue(), v12, v11, globalPlaylistID))
  {
    [v7 addObject:globalPlaylistID];
  }

  [v6 setStoreIDs:v7];
  v13 = [v6 playbackIntentWithStartItemIdentifiers:0];
  identifiers2 = [itemCopy identifiers];
  personalizedStore = [identifiers2 personalizedStore];
  recommendationID = [personalizedStore recommendationID];

  if (recommendationID)
  {
    v17 = [recommendationID dataUsingEncoding:4];
  }

  else
  {
    v17 = 0;
  }

  [v13 setPlayActivityRecommendationData:v17];
  if (shuffleCopy)
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

- (id)_normalizedStringStoreIDForContentItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [(MCDStorePlaybackManager *)self _storeIDForObject:itemCopy];
    goto LABEL_12;
  }

  v5 = itemCopy;
  itemType = [v5 itemType];
  if (itemType == 7)
  {
    song = [v5 song];
  }

  else if (itemType == 4)
  {
    song = [v5 playlist];
  }

  else
  {
    if (itemType != 1)
    {
      v8 = 0;
      goto LABEL_11;
    }

    song = [v5 album];
  }

  v9 = song;
  v8 = [(MCDStorePlaybackManager *)self _storeIDForObject:song];

LABEL_11:
LABEL_12:

  return v8;
}

- (id)_storeIDForObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    identifiers = [objectCopy identifiers];
    universalStore = [identifiers universalStore];
    v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [universalStore adamID]);
    globalPlaylistID = MPStoreItemMetadataStringNormalizeStoreIDValue();

LABEL_4:
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifiers = [objectCopy identifiers];
    universalStore = [identifiers universalStore];
    globalPlaylistID = [universalStore globalPlaylistID];
    goto LABEL_4;
  }

  globalPlaylistID = 0;
LABEL_5:

  return globalPlaylistID;
}

@end