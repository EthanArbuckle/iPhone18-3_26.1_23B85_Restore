@interface BKAudiobookNowPlayingAdaptorMediaLibrary
- (id)nowPlayingInfoCenter:(id)center artworkForContentItem:(id)item size:(CGSize)size completion:(id)completion;
- (id)nowPlayingInfoCenter:(id)center contentItemForID:(id)d;
- (id)nowPlayingInfoCenter:(id)center contentItemIDForOffset:(int64_t)offset;
- (void)_fireAndFreeArtworkCompletionBlocksWithImage:(id)image error:(id)error;
- (void)coverWillChangeTo:(CGImage *)to;
- (void)dealloc;
- (void)nowPlayingInfoChanged:(BOOL)changed;
- (void)player:(id)player audiobookDidChange:(id)change;
- (void)setSessionID:(id)d;
@end

@implementation BKAudiobookNowPlayingAdaptorMediaLibrary

- (void)dealloc
{
  [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self _fireAndFreeArtworkCompletionBlocksWithImage:0 error:0];
  v3.receiver = self;
  v3.super_class = BKAudiobookNowPlayingAdaptorMediaLibrary;
  [(BKAudiobookNowPlayingAdaptorMediaLibrary *)&v3 dealloc];
}

- (void)setSessionID:(id)d
{
  v4.receiver = self;
  v4.super_class = BKAudiobookNowPlayingAdaptorMediaLibrary;
  [(BKAudiobookNowPlayingAdaptor *)&v4 setSessionID:d];
  [(BKAudiobookNowPlayingAdaptor *)self invalidatePlaybackQueue];
}

- (id)nowPlayingInfoCenter:(id)center contentItemIDForOffset:(int64_t)offset
{
  if ([(BKAudiobookNowPlayingAdaptor *)self audiobookPlayerActiveOutput])
  {
    objc_opt_class();
    player = [(BKAudiobookNowPlayingAdaptor *)self player];
    currentAudiobook = [player currentAudiobook];
    v8 = BUDynamicCast();

    if (v8)
    {
      objc_opt_class();
      player2 = [(BKAudiobookNowPlayingAdaptor *)self player];
      currentChapter = [player2 currentChapter];
      v11 = BUDynamicCast();

      if (v11)
      {
        player3 = [(BKAudiobookNowPlayingAdaptor *)self player];
        currentChapterIndex = [player3 currentChapterIndex];

        chapters = [v8 chapters];
        v15 = [chapters count];

        if (&currentChapterIndex[offset] >= v15)
        {
          v18 = 0;
          identifier = 0;
        }

        else
        {
          objc_opt_class();
          chapters2 = [v8 chapters];
          v17 = [chapters2 objectAtIndexedSubscript:&currentChapterIndex[offset]];
          v18 = BUDynamicCast();

          contentItem = [v18 contentItem];
          identifier = [contentItem identifier];
        }

        v26 = BKAudiobooksNowPlayingAdaptorLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [NSNumber numberWithInteger:offset];
          contentItem2 = [v18 contentItem];
          identifier2 = [contentItem2 identifier];
          v30 = [NSNumber numberWithInteger:currentChapterIndex];
          v32 = 138412802;
          v33 = v27;
          v34 = 2112;
          v35 = identifier2;
          v36 = 2112;
          v37 = v30;
          _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "contentItemIDForOffset[%@]=%@ chapter=%@", &v32, 0x20u);
        }
      }

      else
      {
        identifier = 0;
      }
    }

    else
    {
      player4 = [(BKAudiobookNowPlayingAdaptor *)self player];
      currentAudiobook2 = [player4 currentAudiobook];
      isAudiobookPreview = [currentAudiobook2 isAudiobookPreview];

      identifier = 0;
      if (isAudiobookPreview && !offset)
      {
        player5 = [(BKAudiobookNowPlayingAdaptor *)self player];
        currentAudiobook3 = [player5 currentAudiobook];
        identifier = [currentAudiobook3 assetID];
      }
    }
  }

  else
  {
    identifier = 0;
  }

  return identifier;
}

- (id)nowPlayingInfoCenter:(id)center contentItemForID:(id)d
{
  dCopy = d;
  player = [(BKAudiobookNowPlayingAdaptor *)self player];
  currentAudiobook = [player currentAudiobook];

  if (![(BKAudiobookNowPlayingAdaptor *)self audiobookPlayerActiveOutput])
  {
    v12 = 0;
    goto LABEL_24;
  }

  objc_opt_class();
  v8 = BUDynamicCast();
  if (v8)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    player2 = [(BKAudiobookNowPlayingAdaptor *)self player];
    currentAudiobook2 = [player2 currentAudiobook];
    chapters = [currentAudiobook2 chapters];

    v12 = [chapters countByEnumeratingWithState:&v35 objects:v45 count:16];
    if (v12)
    {
      v34 = currentAudiobook;
      v13 = *v36;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(chapters);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          objc_opt_class();
          v16 = BUDynamicCast();
          contentItem = [v16 contentItem];
          identifier = [contentItem identifier];
          v19 = [identifier isEqualToString:dCopy];

          if (v19)
          {
            v12 = contentItem;
            v20 = BKAudiobooksNowPlayingAdaptorLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              identifier2 = [v12 identifier];
              *buf = 138412546;
              v42 = identifier2;
              v43 = 2112;
              v44 = v12;
              _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "contentItemForID[%@]=%@", buf, 0x16u);
            }

            currentAudiobook = v34;
            goto LABEL_16;
          }
        }

        v12 = [chapters countByEnumeratingWithState:&v35 objects:v45 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      currentAudiobook = v34;
    }
  }

  else
  {
    if (![currentAudiobook isAudiobookPreview] || (objc_msgSend(currentAudiobook, "assetID"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(dCopy, "isEqual:", v22), v22, !v23))
    {
      v12 = 0;
      goto LABEL_23;
    }

    v24 = [MPNowPlayingContentItem alloc];
    assetID = [currentAudiobook assetID];
    v12 = [v24 initWithIdentifier:assetID];

    [v12 setMediaType:4];
    author = [currentAudiobook author];
    [v12 setTrackArtistName:author];

    author2 = [currentAudiobook author];
    [v12 setAlbumArtistName:author2];

    title = [currentAudiobook title];
    [v12 setTitle:title];

    title2 = [currentAudiobook title];
    [v12 setAlbumName:title2];

    [currentAudiobook duration];
    [v12 setDuration:?];
    [v12 setElapsedTime:0.0];
    [v12 setPlaybackRate:0.0];
    LODWORD(v30) = 1.0;
    [v12 setDefaultPlaybackRate:v30];
    [v12 setNumberOfChildren:0];
    [v12 setContainer:0];
    [v12 setHasArtwork:1];
    [v12 setPlayable:1];
    v39[0] = kMRMediaRemoteNowPlayingInfoChapterNumber;
    v39[1] = kMRMediaRemoteNowPlayingInfoTotalChapterCount;
    v40[0] = &off_3E0D8;
    v40[1] = &off_3E0F0;
    v39[2] = kMRMediaRemoteNowPlayingInfoUniqueIdentifier;
    assetID2 = [currentAudiobook assetID];
    v40[2] = assetID2;
    chapters = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:3];

    [v12 setNowPlayingInfo:chapters];
    [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self setContentItemForPreviews:v12];
    v16 = BKAudiobooksNowPlayingAdaptorLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      identifier3 = [v12 identifier];
      *buf = 138412546;
      v42 = identifier3;
      v43 = 2112;
      v44 = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "contentItemForID[%@]=%@", buf, 0x16u);
    }

LABEL_16:
  }

LABEL_23:
LABEL_24:

  return v12;
}

- (id)nowPlayingInfoCenter:(id)center artworkForContentItem:(id)item size:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  centerCopy = center;
  itemCopy = item;
  completionCopy = completion;
  audiobookPlayerActiveOutput = [(BKAudiobookNowPlayingAdaptor *)self audiobookPlayerActiveOutput];
  v15 = BKAudiobooksNowPlayingAdaptorLog();
  v16 = v15;
  if (audiobookPlayerActiveOutput)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "Attempting to fetch artwork for active audiobook.", buf, 2u);
    }

    player = [(BKAudiobookNowPlayingAdaptor *)self player];
    currentAudiobook = [player currentAudiobook];

    objc_initWeak(buf, self);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_C1B0;
    v21[3] = &unk_3CD58;
    objc_copyWeak(v25, buf);
    v19 = currentAudiobook;
    v22 = v19;
    selfCopy = self;
    v24 = completionCopy;
    v25[1] = *&width;
    v25[2] = *&height;
    [v19 artworkWithCompletion:v21];

    objc_destroyWeak(v25);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_213DC(v16);
    }

    (*(completionCopy + 2))(completionCopy, 0, 0);
  }

  return 0;
}

- (void)nowPlayingInfoChanged:(BOOL)changed
{
  changedCopy = changed;
  objc_opt_class();
  player = [(BKAudiobookNowPlayingAdaptor *)self player];
  currentChapter = [player currentChapter];
  v7 = BUDynamicCast();

  player2 = [(BKAudiobookNowPlayingAdaptor *)self player];
  [player2 playbackRate];
  v10 = v9;

  player3 = [(BKAudiobookNowPlayingAdaptor *)self player];
  [player3 positionInCurrentChapter];
  v13 = v12;

  if (changedCopy)
  {
    player4 = [(BKAudiobookNowPlayingAdaptor *)self player];
    isPlaying = [player4 isPlaying];

    if (!isPlaying)
    {
      v10 = 0.0;
    }
  }

  contentItem = [v7 contentItem];
  player5 = [(BKAudiobookNowPlayingAdaptor *)self player];
  currentAudiobook = [player5 currentAudiobook];
  isAudiobookPreview = [currentAudiobook isAudiobookPreview];

  if (isAudiobookPreview)
  {
    contentItemForPreviews = [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self contentItemForPreviews];

    contentItem = contentItemForPreviews;
  }

  if (contentItem)
  {
    *&v20 = v10;
    [contentItem setElapsedTime:v13 playbackRate:v20];
    player6 = [(BKAudiobookNowPlayingAdaptor *)self player];
    [player6 playbackRate];
    [contentItem setDefaultPlaybackRate:?];

    userInfo = [contentItem userInfo];
    if (!userInfo)
    {
      userInfo = +[NSDictionary dictionary];
    }

    player7 = [(BKAudiobookNowPlayingAdaptor *)self player];
    if ([player7 isStalling])
    {
      isLoadingResources = &dword_0 + 1;
    }

    else
    {
      player8 = [(BKAudiobookNowPlayingAdaptor *)self player];
      isLoadingResources = [player8 isLoadingResources];
    }

    v27 = MPNowPlayingContentItemUserInfoKeyIsLoading;
    v28 = [userInfo objectForKey:MPNowPlayingContentItemUserInfoKeyIsLoading];
    bOOLValue = [v28 BOOLValue];

    if (isLoadingResources != bOOLValue)
    {
      v30 = [userInfo mutableCopy];
      v31 = [NSNumber numberWithBool:isLoadingResources];
      [v30 setObject:v31 forKey:v27];

      [contentItem setUserInfo:v30];
    }

    v32 = BKAudiobooksNowPlayingAdaptorLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [contentItem identifier];
      [contentItem playbackRate];
      v35 = v34;
      [contentItem elapsedTime];
      v37 = v36;
      v38 = [NSNumber numberWithBool:isLoadingResources];
      v45 = 138413058;
      v46 = identifier;
      v47 = 2048;
      v48 = v35;
      v49 = 2048;
      v50 = v37;
      v51 = 2112;
      v52 = v38;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "nowPlayingInfoChanged identifier=%@ rate=%f elapsedTime=%f isLoading=%@", &v45, 0x2Au);
    }
  }

  else
  {
    userInfo = BKAudiobooksNowPlayingAdaptorLog();
    if (os_log_type_enabled(userInfo, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v45) = 0;
      _os_log_impl(&dword_0, userInfo, OS_LOG_TYPE_DEFAULT, "nowPlayingInfoChanged no contentItem available", &v45, 2u);
    }
  }

  player9 = [(BKAudiobookNowPlayingAdaptor *)self player];
  [player9 playbackRate];
  v41 = v40;
  v42 = +[MPRemoteCommandCenter sharedCommandCenter];
  changePlaybackRateCommand = [v42 changePlaybackRateCommand];
  LODWORD(v44) = v41;
  [changePlaybackRateCommand setPreferredRate:v44];
}

- (void)player:(id)player audiobookDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = BKAudiobookNowPlayingAdaptorMediaLibrary;
  [(BKAudiobookNowPlayingAdaptor *)&v5 player:player audiobookDidChange:change];
  [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self _fireAndFreeArtworkCompletionBlocksWithImage:0 error:0];
  [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self setNowPlayingAudiobookArtworkForPreviews:0];
  [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self setContentItemForPreviews:0];
}

- (void)coverWillChangeTo:(CGImage *)to
{
  if (to)
  {
    v4 = [UIImage imageWithCGImage:?];
    [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self setNowPlayingAudiobookArtworkForPreviews:v4];

    nowPlayingAudiobookArtworkForPreviews = [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self nowPlayingAudiobookArtworkForPreviews];
    [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self _fireAndFreeArtworkCompletionBlocksWithImage:nowPlayingAudiobookArtworkForPreviews error:0];
  }
}

- (void)_fireAndFreeArtworkCompletionBlocksWithImage:(id)image error:(id)error
{
  imageCopy = image;
  errorCopy = error;
  artworkCompletionBlocks = [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self artworkCompletionBlocks];
  v9 = [artworkCompletionBlocks copy];

  [(BKAudiobookNowPlayingAdaptorMediaLibrary *)self setArtworkCompletionBlocks:0];
  v10 = BKAudiobooksNowPlayingAdaptorLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    [imageCopy size];
    v11 = NSStringFromCGSize(v24);
    *buf = 138543362;
    v23 = v11;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Finished generating artwork for active preview audiobook (%{public}@)", buf, 0xCu);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        (*(*(*(&v17 + 1) + 8 * v16) + 16))(*(*(&v17 + 1) + 8 * v16));
        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v14);
  }
}

@end