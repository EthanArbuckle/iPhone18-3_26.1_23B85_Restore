@interface BKMLAudiobookTrack
- (BKAudiobook)audiobook;
- (BKMLAudiobook)containingAudiobook;
- (BKMLAudiobookTrack)initWithAudiobook:(id)a3 mediaItem:(id)a4 startTime:(double)a5 startChapterNumber:(unint64_t)a6 trackNumber:(unint64_t)a7 trackCount:(unint64_t)a8 storeDemoMode:(BOOL)a9;
- (BOOL)incrementPlayCountForStopTime:(double)a3;
- (CGImage)artwork;
- (CGImage)artworkForTime:(double)a3;
- (NSDate)dateLastOpened;
- (NSString)description;
- (UIImage)coverArt;
- (double)bookmarkTime;
- (id)alternateArtworkTimes;
- (void)_lookupRacGUIDFromHLSPlaylistWithCompletion:(id)a3;
- (void)lookupRacGUIDWithCompletion:(id)a3;
- (void)setBookmarkTime:(double)a3;
@end

@implementation BKMLAudiobookTrack

- (BKMLAudiobookTrack)initWithAudiobook:(id)a3 mediaItem:(id)a4 startTime:(double)a5 startChapterNumber:(unint64_t)a6 trackNumber:(unint64_t)a7 trackCount:(unint64_t)a8 storeDemoMode:(BOOL)a9
{
  v14 = a3;
  v15 = a4;
  v62.receiver = self;
  v62.super_class = BKMLAudiobookTrack;
  v16 = [(BKMLAudiobookTrack *)&v62 init];
  v17 = v16;
  if (v16)
  {
    objc_storeWeak(&v16->_containingAudiobook, v14);
    objc_storeStrong(&v17->_mediaItem, a4);
    v18 = [v15 valueForProperty:MPMediaItemPropertyTitle];
    v19 = [v18 copy];
    title = v17->_title;
    v17->_title = v19;

    v21 = [v15 valueForProperty:MPMediaItemPropertyArtist];
    v22 = [v21 copy];
    author = v17->_author;
    v17->_author = v22;

    v24 = [v15 valueForProperty:MPMediaItemPropertyPlaybackDuration];
    [v24 doubleValue];
    v17->_duration = v25;

    v17->_startTime = a5;
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

            v31 = [*(*(&v58 + 1) + 8 * i) artworkCatalog];
            v32 = [v31 bestImageFromDisk];
            if (v32)
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
    if (a9)
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
      v51 = v15;
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
        v50 = v14;
        v41 = *v55;
        do
        {
          v42 = 0;
          v43 = a6;
          do
          {
            if (*v55 != v41)
            {
              objc_enumerationMutation(v38);
            }

            a6 = v43 + 1;
            v44 = [[BKMLAudiobookChapter alloc] initWithMediaChapter:*(*(&v54 + 1) + 8 * v42) track:v17 number:v43 trackNumber:a7 trackCount:a8];
            [v36 addObject:v44];

            v42 = v42 + 1;
            ++v43;
          }

          while (v40 != v42);
          v40 = [(BKMLAudiobookChapter *)v38 countByEnumeratingWithState:&v54 objects:v63 count:16];
        }

        while (v40);
        v14 = v50;
        v15 = v51;
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

      v38 = [[BKMLAudiobookChapter alloc] initWithMediaChapter:0 track:v17 number:a6 trackNumber:a7 trackCount:a8];
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
  v5 = [(BKMLAudiobookTrack *)self assetURL];
  v6 = [(BKMLAudiobookTrack *)self title];
  v7 = [(BKMLAudiobookTrack *)self author];
  v8 = [(BKMLAudiobookTrack *)self artwork];
  [(BKMLAudiobookTrack *)self duration];
  v10 = [NSMutableString stringWithFormat:@"<%@:%p url=%@ title=%@ author=%@ artwork=%p duration=%lf chapters=\n", v4, self, v5, v6, v7, v8, v9];

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

- (void)setBookmarkTime:(double)a3
{
  [(MPMediaItem *)self->_mediaItem setHasBeenPlayed:1];
  v5 = +[NSDate date];
  [(MPMediaItem *)self->_mediaItem setLastPlayedDate:v5];

  mediaItem = self->_mediaItem;
  v7 = [NSNumber numberWithDouble:a3];
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

- (CGImage)artworkForTime:(double)a3
{
  if (![(BKMLAudiobookTrack *)self hasAlternateArtwork])
  {
    return 0;
  }

  v5 = [(MPMediaItem *)self->_mediaItem chapterOfType:2 atTime:a3];
  v6 = [v5 artworkCatalog];
  v7 = [v6 bestImageFromDisk];
  v8 = [v7 CGImage];

  return v8;
}

- (UIImage)coverArt
{
  coverArt = self->_coverArt;
  if (!coverArt)
  {
    v4 = [(BKMLAudiobookTrack *)self mediaItem];
    v5 = [v4 valueForProperty:MPMediaItemPropertyArtwork];

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
  v2 = [(BKMLAudiobookTrack *)self coverArt];
  v3 = [v2 CGImage];

  return v3;
}

- (BOOL)incrementPlayCountForStopTime:(double)a3
{
  v3 = [(BKMLAudiobookTrack *)self mediaItem];
  [v3 startTime];
  [v3 effectiveStopTime];
  v4 = MPShouldIncrementPlayCountForElapsedTime();
  if (v4)
  {
    [v3 setPlayCount:{objc_msgSend(v3, "playCount") + 1}];
    [v3 setPlayCountSinceSync:{objc_msgSend(v3, "playCountSinceSync") + 1}];
    v5 = +[NSDate date];
    [v3 setLastPlayedDate:v5];
  }

  return v4;
}

- (void)lookupRacGUIDWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(BKMLAudiobookTrack *)self assetURL];
  v6 = [v5 bk_isStreamingAssetURL];

  if (v6)
  {
    [(BKMLAudiobookTrack *)self _lookupRacGUIDFromHLSPlaylistWithCompletion:v4];
  }

  else
  {
    v7 = objc_alloc_init(BLMetadataStore);
    v8 = [(BKMLAudiobookTrack *)self mediaItem];
    v9 = [v8 bk_storePlaylistID];
    v10 = [v9 longLongValue];

    if (v10)
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1368C;
      v13[3] = &unk_3CFC0;
      v13[4] = self;
      v14 = v4;
      [v7 racGUIDForStoreID:v10 result:v13];
    }

    else
    {
      v11 = objc_retainBlock(v4);
      v12 = v11;
      if (v11)
      {
        (*(v11 + 2))(v11, 0);
      }
    }
  }
}

- (void)_lookupRacGUIDFromHLSPlaylistWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [[BLHLSAudiobookFetcher alloc] initCanUseCellularData:1 powerRequired:0 bundleID:0];
  v6 = [(BKMLAudiobookTrack *)self assetURL];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1382C;
  v8[3] = &unk_3CFE8;
  v9 = v4;
  v7 = v4;
  [v5 getRacGUIDFromMasterPlaylistURL:v6 completion:v8];
}

- (BKMLAudiobook)containingAudiobook
{
  WeakRetained = objc_loadWeakRetained(&self->_containingAudiobook);

  return WeakRetained;
}

@end