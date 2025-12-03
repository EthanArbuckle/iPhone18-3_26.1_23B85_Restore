@interface BKMLAudiobookTrack
- (BKAudiobook)audiobook;
- (BKMLAudiobook)containingAudiobook;
- (BKMLAudiobookTrack)initWithAudiobook:(id)audiobook mediaItem:(id)item startTime:(double)time startChapterNumber:(unint64_t)number trackNumber:(unint64_t)trackNumber trackCount:(unint64_t)count storeDemoMode:(BOOL)mode;
- (BOOL)incrementPlayCountForStopTime:(double)time;
- (CGImage)artwork;
- (CGImage)artworkForTime:(double)time;
- (NSDate)dateLastOpened;
- (NSString)description;
- (UIImage)coverArt;
- (double)bookmarkTime;
- (id)alternateArtworkTimes;
- (void)_lookupRacGUIDFromHLSPlaylistWithCompletion:(id)completion;
- (void)lookupRacGUIDWithCompletion:(id)completion;
- (void)setBookmarkTime:(double)time;
@end

@implementation BKMLAudiobookTrack

- (BKMLAudiobookTrack)initWithAudiobook:(id)audiobook mediaItem:(id)item startTime:(double)time startChapterNumber:(unint64_t)number trackNumber:(unint64_t)trackNumber trackCount:(unint64_t)count storeDemoMode:(BOOL)mode
{
  audiobookCopy = audiobook;
  itemCopy = item;
  v62.receiver = self;
  v62.super_class = BKMLAudiobookTrack;
  v16 = [(BKMLAudiobookTrack *)&v62 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_containingAudiobook, audiobookCopy);
    objc_storeStrong(&v17->_mediaItem, item);
    v18 = [itemCopy valueForProperty:MPMediaItemPropertyTitle];
    v19 = [v18 copy];
    title = v17->_title;
    v17->_title = v19;

    v21 = [itemCopy valueForProperty:MPMediaItemPropertyArtist];
    v22 = [v21 copy];
    author = v17->_author;
    v17->_author = v22;

    v24 = [itemCopy valueForProperty:MPMediaItemPropertyPlaybackDuration];
    [v24 doubleValue];
    v17->_duration = v25;

    v17->_startTime = time;
    v17->_hasAlternateArtwork = 0;
    if ([(MPMediaItem *)v17->_mediaItem countOfChaptersOfType:2])
    {
      [(MPMediaItem *)v17->_mediaItem chaptersOfType:2];
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v26 = v61 = 0u;
      v27 = [v26 countByEnumeratingWithState:&v58 objects:v64 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v59;
        while (2)
        {
          for (i = 0; i != v28; i = i + 1)
          {
            if (*v59 != v29)
            {
              objc_enumerationMutation(v26);
            }

            artworkCatalog = [*(*(&v58 + 1) + 8 * i) artworkCatalog];
            bestImageFromDisk = [artworkCatalog bestImageFromDisk];
            if (bestImageFromDisk)
            {
              v17->_hasAlternateArtwork = 1;

              goto LABEL_13;
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v58 objects:v64 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }

    mediaItem = v17->_mediaItem;
    if (mode)
    {
      [(MPMediaItem *)mediaItem bk_storeDemoAssetURL];
    }

    else
    {
      [(MPMediaItem *)mediaItem bk_assetURL];
    }
    v34 = ;
    assetURL = v17->_assetURL;
    v17->_assetURL = v34;

    v36 = objc_opt_new();
    v37 = [(MPMediaItem *)v17->_mediaItem chaptersOfType:1];
    if ([v37 count])
    {
      v51 = itemCopy;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v38 = v37;
      v39 = [(BKMLAudiobookChapter *)v38 countByEnumeratingWithState:&v54 objects:v63 count:16];
      if (v39)
      {
        v40 = v39;
        v49 = v37;
        v50 = audiobookCopy;
        v41 = *v55;
        do
        {
          v42 = 0;
          numberCopy = number;
          do
          {
            if (*v55 != v41)
            {
              objc_enumerationMutation(v38);
            }

            number = numberCopy + 1;
            v44 = [[BKMLAudiobookChapter alloc] initWithMediaChapter:*(*(&v54 + 1) + 8 * v42) track:v17 number:numberCopy trackNumber:trackNumber trackCount:count];
            [v36 addObject:v44];

            v42 = v42 + 1;
            ++numberCopy;
          }

          while (v40 != v42);
          v40 = [(BKMLAudiobookChapter *)v38 countByEnumeratingWithState:&v54 objects:v63 count:16];
        }

        while (v40);
        audiobookCopy = v50;
        itemCopy = v51;
        v37 = v49;
      }
    }

    else
    {
      v45 = BKAudiobooksLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        sub_21680(&v17->_mediaItem, v45);
      }

      v38 = [[BKMLAudiobookChapter alloc] initWithMediaChapter:0 track:v17 number:number trackNumber:trackNumber trackCount:count];
      [v36 addObject:v38];
    }

    v46 = [v36 copy];
    chapters = v17->_chapters;
    v17->_chapters = v46;
  }

  return v17;
}

- (BKAudiobook)audiobook
{
  WeakRetained = objc_loadWeakRetained(&self->_containingAudiobook);

  return WeakRetained;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  assetURL = [(BKMLAudiobookTrack *)self assetURL];
  title = [(BKMLAudiobookTrack *)self title];
  author = [(BKMLAudiobookTrack *)self author];
  artwork = [(BKMLAudiobookTrack *)self artwork];
  [(BKMLAudiobookTrack *)self duration];
  v10 = [NSMutableString stringWithFormat:@"<%@:%p url=%@ title=%@ author=%@ artwork=%p duration=%lf chapters=\n", v4, self, assetURL, title, author, artwork, v9];

  v11 = [(NSArray *)self->_chapters count];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    do
    {
      v14 = [(NSArray *)self->_chapters objectAtIndexedSubscript:v13];
      v15 = [v14 description];
      v16 = v15;
      if (--v12)
      {
        v17 = @",";
      }

      else
      {
        v17 = &stru_3D458;
      }

      [v10 appendFormat:@"  %@%@\n", v15, v17];

      ++v13;
    }

    while (v12);
  }

  [v10 appendFormat:@">"];

  return v10;
}

- (double)bookmarkTime
{
  v3 = [(MPMediaItem *)self->_mediaItem valueForProperty:MPMediaItemPropertyBookmarkTime];
  [v3 doubleValue];
  v5 = v4;

  result = 0.0;
  if (v5 <= self->_duration)
  {
    return v5;
  }

  return result;
}

- (void)setBookmarkTime:(double)time
{
  [(MPMediaItem *)self->_mediaItem setHasBeenPlayed:1];
  v5 = +[NSDate date];
  [(MPMediaItem *)self->_mediaItem setLastPlayedDate:v5];

  mediaItem = self->_mediaItem;
  v7 = [NSNumber numberWithDouble:time];
  [(MPMediaItem *)mediaItem setValue:v7 forProperty:MPMediaItemPropertyBookmarkTime withCompletionBlock:0];
}

- (NSDate)dateLastOpened
{
  objc_opt_class();
  v3 = [(MPMediaItem *)self->_mediaItem objectForKeyedSubscript:MPMediaItemPropertyLastPlayedDate];
  v4 = BUDynamicCast();

  return v4;
}

- (id)alternateArtworkTimes
{
  v3 = objc_opt_new();
  if ([(BKMLAudiobookTrack *)self hasAlternateArtwork])
  {
    v4 = [(MPMediaItem *)self->_mediaItem chaptersOfType:2];
    if ([v4 count])
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v5 = v4;
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v14;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v5);
            }

            [*(*(&v13 + 1) + 8 * i) playbackTime];
            v10 = [NSNumber numberWithDouble:?];
            [v3 addObject:v10];
          }

          v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v7);
      }
    }
  }

  v11 = [v3 copy];

  return v11;
}

- (CGImage)artworkForTime:(double)time
{
  if (![(BKMLAudiobookTrack *)self hasAlternateArtwork])
  {
    return 0;
  }

  v5 = [(MPMediaItem *)self->_mediaItem chapterOfType:2 atTime:time];
  artworkCatalog = [v5 artworkCatalog];
  bestImageFromDisk = [artworkCatalog bestImageFromDisk];
  cGImage = [bestImageFromDisk CGImage];

  return cGImage;
}

- (UIImage)coverArt
{
  coverArt = self->_coverArt;
  if (!coverArt)
  {
    mediaItem = [(BKMLAudiobookTrack *)self mediaItem];
    v5 = [mediaItem valueForProperty:MPMediaItemPropertyArtwork];

    if (v5)
    {
      [v5 bounds];
      v8 = [v5 imageWithSize:{v6, v7}];
      v9 = self->_coverArt;
      self->_coverArt = v8;
    }

    coverArt = self->_coverArt;
  }

  return coverArt;
}

- (CGImage)artwork
{
  coverArt = [(BKMLAudiobookTrack *)self coverArt];
  cGImage = [coverArt CGImage];

  return cGImage;
}

- (BOOL)incrementPlayCountForStopTime:(double)time
{
  mediaItem = [(BKMLAudiobookTrack *)self mediaItem];
  [mediaItem startTime];
  [mediaItem effectiveStopTime];
  v4 = MPShouldIncrementPlayCountForElapsedTime();
  if (v4)
  {
    [mediaItem setPlayCount:{objc_msgSend(mediaItem, "playCount") + 1}];
    [mediaItem setPlayCountSinceSync:{objc_msgSend(mediaItem, "playCountSinceSync") + 1}];
    v5 = +[NSDate date];
    [mediaItem setLastPlayedDate:v5];
  }

  return v4;
}

- (void)lookupRacGUIDWithCompletion:(id)completion
{
  completionCopy = completion;
  assetURL = [(BKMLAudiobookTrack *)self assetURL];
  bk_isStreamingAssetURL = [assetURL bk_isStreamingAssetURL];

  if (bk_isStreamingAssetURL)
  {
    [(BKMLAudiobookTrack *)self _lookupRacGUIDFromHLSPlaylistWithCompletion:completionCopy];
  }

  else
  {
    v7 = objc_alloc_init(BLMetadataStore);
    mediaItem = [(BKMLAudiobookTrack *)self mediaItem];
    bk_storePlaylistID = [mediaItem bk_storePlaylistID];
    longLongValue = [bk_storePlaylistID longLongValue];

    if (longLongValue)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1368C;
      v13[3] = &unk_3CFC0;
      v13[4] = self;
      v14 = completionCopy;
      [v7 racGUIDForStoreID:longLongValue result:v13];
    }

    else
    {
      v11 = objc_retainBlock(completionCopy);
      v12 = v11;
      if (v11)
      {
        (*(v11 + 2))(v11, 0);
      }
    }
  }
}

- (void)_lookupRacGUIDFromHLSPlaylistWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [[BLHLSAudiobookFetcher alloc] initCanUseCellularData:1 powerRequired:0 bundleID:0];
  assetURL = [(BKMLAudiobookTrack *)self assetURL];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1382C;
  v8[3] = &unk_3CFE8;
  v9 = completionCopy;
  v7 = completionCopy;
  [v5 getRacGUIDFromMasterPlaylistURL:assetURL completion:v8];
}

- (BKMLAudiobook)containingAudiobook
{
  WeakRetained = objc_loadWeakRetained(&self->_containingAudiobook);

  return WeakRetained;
}

@end