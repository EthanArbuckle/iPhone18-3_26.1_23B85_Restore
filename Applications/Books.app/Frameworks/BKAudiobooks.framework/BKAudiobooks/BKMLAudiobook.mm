@interface BKMLAudiobook
- (BKMLAudiobook)init;
- (BOOL)isEqualToAudiobook:(id)audiobook;
- (BOOL)isSG;
- (NSDate)dateLastOpened;
- (NSString)assetID;
- (NSString)description;
- (double)bookmarkTime;
- (id)representativeItem;
- (unint64_t)indexOfTrack:(id)track;
- (void)addTracks:(id)tracks;
- (void)artworkWithCompletion:(id)completion;
- (void)coverArtWithCompletion:(id)completion;
- (void)setBookmarkTime:(double)time;
@end

@implementation BKMLAudiobook

- (BKMLAudiobook)init
{
  v10.receiver = self;
  v10.super_class = BKMLAudiobook;
  v2 = [(BKMLAudiobook *)&v10 init];
  v3 = v2;
  if (v2)
  {
    mediaLibraryTracks = v2->_mediaLibraryTracks;
    v2->_mediaLibraryTracks = &__NSArray0__struct;

    mediaLibraryChapters = v3->_mediaLibraryChapters;
    v3->_mediaLibraryChapters = &__NSArray0__struct;

    v3->_duration = 0.0;
    title = v3->_title;
    v3->_title = &stru_3D458;

    author = v3->_author;
    v3->_author = &stru_3D458;

    guid = v3->_guid;
    v3->_guid = &stru_3D458;
  }

  return v3;
}

- (void)addTracks:(id)tracks
{
  tracksCopy = tracks;
  objc_storeStrong(&self->_mediaLibraryTracks, tracks);
  v6 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v7 = self->_mediaLibraryTracks;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v36 objects:v52 count:16];
  if (v8)
  {
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v36 + 1) + 8 * i);
        chapters = [v11 chapters];
        [v6 addObjectsFromArray:chapters];

        [v11 duration];
        self->_duration = v13 + self->_duration;
      }

      v8 = [(NSArray *)v7 countByEnumeratingWithState:&v36 objects:v52 count:16];
    }

    while (v8);
  }

  v14 = [v6 copy];
  mediaLibraryChapters = self->_mediaLibraryChapters;
  self->_mediaLibraryChapters = v14;

  representativeItem = [(BKMLAudiobook *)self representativeItem];
  bk_effectiveTitle = [representativeItem bk_effectiveTitle];
  title = self->_title;
  self->_title = bk_effectiveTitle;

  representativeItem2 = [(BKMLAudiobook *)self representativeItem];
  bk_effectiveAuthor = [representativeItem2 bk_effectiveAuthor];
  author = self->_author;
  self->_author = bk_effectiveAuthor;

  objc_initWeak(&location, self);
  firstObject = [tracksCopy firstObject];
  v30 = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_DA48;
  v33 = &unk_3CF20;
  objc_copyWeak(&v34, &location);
  [firstObject lookupRacGUIDWithCompletion:&v30];

  v23 = BKAudiobooksLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    duration = self->_duration;
    v25 = [(NSArray *)self->_mediaLibraryTracks count:v30];
    v26 = [(NSArray *)self->_mediaLibraryChapters count];
    v27 = [(NSArray *)self->_supplementalContents count];
    v28 = self->_title;
    v29 = self->_author;
    *buf = 134219266;
    v41 = duration;
    v42 = 2048;
    v43 = v25;
    v44 = 2048;
    v45 = v26;
    v46 = 2048;
    v47 = v27;
    v48 = 2112;
    v49 = v28;
    v50 = 2112;
    v51 = v29;
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "Setup audiobook with duration:%.2f tracks:%ld chapters:%ld supplemental content count:%lu title:'%@' author:'%@'", buf, 0x3Eu);
  }

  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

- (void)coverArtWithCompletion:(id)completion
{
  completionCopy = completion;
  representativeItem = [(BKMLAudiobook *)self representativeItem];
  if (representativeItem)
  {
    if (self->_coverArt)
    {
      v6 = objc_retainBlock(completionCopy);
      v7 = v6;
      if (v6)
      {
        (*(v6 + 2))(v6, self->_coverArt);
      }
    }

    else
    {
      v11 = BKAudiobooksLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "Lazy loading artwork into memory.", buf, 2u);
      }

      objc_initWeak(buf, self);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_DCEC;
      v12[3] = &unk_3CF48;
      objc_copyWeak(&v14, buf);
      v13 = completionCopy;
      [representativeItem bk_artworkImageWithCompletion:v12];

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v8 = BKAudiobooksLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_21524(v8);
    }

    v9 = objc_retainBlock(completionCopy);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0);
    }
  }
}

- (void)artworkWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_DE18;
  v5[3] = &unk_3CF70;
  completionCopy = completion;
  v4 = completionCopy;
  [(BKMLAudiobook *)self coverArtWithCompletion:v5];
}

- (NSString)assetID
{
  representativeItem = [(BKMLAudiobook *)self representativeItem];
  bk_assetID = [representativeItem bk_assetID];

  return bk_assetID;
}

- (double)bookmarkTime
{
  firstObject = [(NSArray *)self->_mediaLibraryTracks firstObject];
  [firstObject bookmarkTime];
  v4 = v3;

  v5 = BKAudiobooksLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Fetched media library bookmark time of %.2f.", &v7, 0xCu);
  }

  return v4;
}

- (void)setBookmarkTime:(double)time
{
  if ([(NSArray *)self->_mediaLibraryTracks count])
  {
    v5 = BKAudiobooksLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      timeCopy = time;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Saving media library bookmark time to be %.2f.", &v7, 0xCu);
    }

    firstObject = [(NSArray *)self->_mediaLibraryTracks firstObject];
    [firstObject setBookmarkTime:time];
  }
}

- (NSDate)dateLastOpened
{
  representativeItem = [(BKMLAudiobook *)self representativeItem];
  objc_opt_class();
  v3 = [representativeItem objectForKeyedSubscript:MPMediaItemPropertyLastPlayedDate];
  v4 = BUDynamicCast();

  v5 = BKAudiobooksLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Fetched media library last opened date of %@.", &v7, 0xCu);
  }

  return v4;
}

- (unint64_t)indexOfTrack:(id)track
{
  trackCopy = track;
  objc_opt_class();
  v5 = BUDynamicCast();

  v6 = [(NSArray *)self->_mediaLibraryTracks indexOfObject:v5];
  return v6;
}

- (id)representativeItem
{
  firstObject = [(NSArray *)self->_mediaLibraryTracks firstObject];
  mediaItem = [firstObject mediaItem];

  return mediaItem;
}

- (BOOL)isEqualToAudiobook:(id)audiobook
{
  audiobookCopy = audiobook;
  assetID = [(BKMLAudiobook *)self assetID];
  assetID2 = [audiobookCopy assetID];

  LOBYTE(audiobookCopy) = [assetID isEqualToString:assetID2];
  return audiobookCopy;
}

- (BOOL)isSG
{
  guid = self->_guid;
  if (guid)
  {
    LOBYTE(guid) = [(NSString *)guid length]!= 0;
  }

  return guid;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  title = [(BKMLAudiobook *)self title];
  author = [(BKMLAudiobook *)self author];
  v7 = [NSMutableString stringWithFormat:@"<%@:%p title=%@ author=%@ _coverArt=%p tracks=\n", v4, self, title, author, self->_coverArt];

  selfCopy = self;
  v8 = [(NSArray *)self->_mediaLibraryTracks count];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = v8 - 1;
    do
    {
      v12 = [(NSArray *)selfCopy->_mediaLibraryTracks objectAtIndexedSubscript:v10];
      v13 = [v12 description];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v14 = [v13 componentsSeparatedByString:@"\n"];
      v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v23;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v23 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [v7 appendFormat:@"  %@\n", *(*(&v22 + 1) + 8 * i)];
          }

          v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v16);
      }

      if (v10 == v11)
      {
        v19 = &stru_3D458;
      }

      else
      {
        v19 = @",";
      }

      [v7 appendString:v19];

      ++v10;
    }

    while (v10 != v9);
  }

  [v7 appendFormat:@">"];

  return v7;
}

@end