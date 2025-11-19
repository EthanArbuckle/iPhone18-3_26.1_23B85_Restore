@interface BKMLAudiobookChapter
+ (id)customChapterTitleForMediaItem:(id)a3 mediaChapter:(id)a4 chapterIndex:(unint64_t)a5;
- ($8BD1E3C934A4AE6C9488C351520253D1)timeRangeInAudiobook;
- ($8BD1E3C934A4AE6C9488C351520253D1)timeRangeInTrack;
- (BKAudiobook)audiobook;
- (BKAudiobookTrack)track;
- (BKMLAudiobookChapter)initWithMediaChapter:(id)a3 track:(id)a4 number:(unint64_t)a5 trackNumber:(unint64_t)a6 trackCount:(unint64_t)a7;
- (BKMLAudiobookTrack)containingTrack;
- (CGImage)artwork;
- (MPNowPlayingContentItem)contentItem;
- (NSDate)dateLastOpened;
- (NSString)description;
- (NSString)identifier;
- (NSString)title;
- (NSURL)assetURL;
@end

@implementation BKMLAudiobookChapter

+ (id)customChapterTitleForMediaItem:(id)a3 mediaChapter:(id)a4 chapterIndex:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (qword_47A10 != -1)
  {
    sub_2166C();
  }

  v9 = [v7 bk_effectiveTitle];
  if (!v9)
  {
    goto LABEL_23;
  }

  v10 = [v7 title];
  v11 = [v10 hasPrefix:v9];

  if (!v11)
  {
    goto LABEL_23;
  }

  v12 = [v7 title];
  v13 = [v12 substringFromIndex:{objc_msgSend(v9, "length")}];

  v14 = [v13 stringByTrimmingCharactersInSet:qword_47A08];

  if (!v8)
  {
    if (![v14 length])
    {

      goto LABEL_23;
    }

    v20 = v14;
    goto LABEL_22;
  }

  v15 = [v8 bk_UTF8Title];
  if ([v15 hasPrefix:v9])
  {
    v16 = [v15 substringFromIndex:{objc_msgSend(v9, "length")}];
    v17 = [v16 stringByTrimmingCharactersInSet:qword_47A08];

    if ([v14 length] && objc_msgSend(v17, "length") && objc_msgSend(v14, "caseInsensitiveCompare:", v17))
    {
      v18 = BKAudiobooksBundle();
      v19 = [v18 localizedStringForKey:@"%@ - %@" value:&stru_3D458 table:&stru_3D458];
      v20 = [NSString stringWithFormat:v19, v14, v17];
    }

    else
    {
      if ([v14 length])
      {
        v21 = v14;
      }

      else
      {
        if (![v17 length])
        {
          v20 = 0;
          goto LABEL_20;
        }

        v21 = v17;
      }

      v20 = v21;
    }

LABEL_20:

    goto LABEL_21;
  }

  v20 = 0;
LABEL_21:

LABEL_22:
  if (v20)
  {
    goto LABEL_29;
  }

LABEL_23:
  v22 = [v8 bk_UTF8Title];
  if ([v22 length])
  {
    v23 = v22;
  }

  else
  {
    v24 = [v7 title];
    v25 = [v24 length];

    if (!v25)
    {
      v27 = BKAudiobooksBundle();
      v28 = [v27 localizedStringForKey:@"%@ - Chapter %@" value:&stru_3D458 table:&stru_3D458];
      v29 = [NSNumber numberWithUnsignedInteger:a5 + 1];
      v20 = [NSString stringWithFormat:v28, v9, v29];

      goto LABEL_28;
    }

    v23 = [v7 title];
  }

  v20 = v23;
LABEL_28:

LABEL_29:

  return v20;
}

- (BKMLAudiobookChapter)initWithMediaChapter:(id)a3 track:(id)a4 number:(unint64_t)a5 trackNumber:(unint64_t)a6 trackCount:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v37.receiver = self;
  v37.super_class = BKMLAudiobookChapter;
  v15 = [(BKMLAudiobookChapter *)&v37 init];
  v16 = v15;
  if (v15)
  {
    v17 = objc_storeWeak(&v15->_containingTrack, v14);
    v16->_chapterIndexInAudiobook = a5;
    v16->_albumTrackNumber = a6;
    v16->_albumTrackCount = a7;
    v18 = v17;
    v19 = [v14 author];
    author = v16->_author;
    v16->_author = v19;

    WeakRetained = objc_loadWeakRetained(&v16->_containingTrack);
    v22 = [WeakRetained mediaItem];
    v23 = [BKMLAudiobookChapter customChapterTitleForMediaItem:v22 mediaChapter:v13 chapterIndex:v16->_chapterIndexInAudiobook];
    title = v16->_title;
    v16->_title = v23;

    if (v13)
    {
      objc_storeStrong(&v16->_mediaChapter, a3);
      [v13 playbackTime];
      v16->_startTimeInTrack = v25;
      [v13 playbackDuration];
      v16->_duration = v26;
    }

    else
    {
      v16->_startTimeInTrack = 0.0;
      v27 = objc_loadWeakRetained(&v16->_containingTrack);
      [v27 duration];
      v16->_duration = v28;
    }

    CMTimeMake(&start, (v16->_startTimeInTrack * 1000.0), 1000);
    CMTimeMake(&v34, (v16->_duration * 1000.0), 1000);
    CMTimeRangeMake(&v36, &start, &v34);
    v29 = *&v36.start.epoch;
    *&v16->_timeRangeInTrack.start.value = *&v36.start.value;
    *&v16->_timeRangeInTrack.start.epoch = v29;
    *&v16->_timeRangeInTrack.duration.timescale = *&v36.duration.timescale;
    v30 = objc_loadWeakRetained(&v16->_containingTrack);
    [v30 startTime];
    CMTimeMake(&start, ((v31 + v16->_startTimeInTrack) * 1000.0), 1000);
    CMTimeMake(&v34, (v16->_duration * 1000.0), 1000);
    CMTimeRangeMake(&v36, &start, &v34);
    v32 = *&v36.start.epoch;
    *&v16->_timeRangeInAudiobook.start.value = *&v36.start.value;
    *&v16->_timeRangeInAudiobook.start.epoch = v32;
    *&v16->_timeRangeInAudiobook.duration.timescale = *&v36.duration.timescale;
  }

  return v16;
}

- (BKAudiobookTrack)track
{
  WeakRetained = objc_loadWeakRetained(&self->_containingTrack);

  return WeakRetained;
}

- (BKAudiobook)audiobook
{
  WeakRetained = objc_loadWeakRetained(&self->_containingTrack);
  v3 = [WeakRetained audiobook];

  return v3;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BKMLAudiobookChapter *)self albumTrackNumber];
  v6 = [(BKMLAudiobookChapter *)self title];
  v7 = [(BKMLAudiobookChapter *)self author];
  v8 = [(BKMLAudiobookChapter *)self customTitle];
  [(BKMLAudiobookChapter *)self timeRangeInAudiobook];
  time = v13;
  Seconds = CMTimeGetSeconds(&time);
  [(BKMLAudiobookChapter *)self duration];
  v11 = [NSString stringWithFormat:@"<%@:%p trackNumber=%lu title=%@ author=%@ customTitle=%@ range=(%.1lf, %.1lf)>", v4, self, v5, v6, v7, v8, *&Seconds, v10];

  return v11;
}

- (NSString)title
{
  customTitle = self->_customTitle;
  if (!customTitle)
  {
    customTitle = self->_title;
  }

  return customTitle;
}

- (CGImage)artwork
{
  WeakRetained = objc_loadWeakRetained(&self->_containingTrack);
  v3 = [WeakRetained artwork];

  return v3;
}

- (NSURL)assetURL
{
  WeakRetained = objc_loadWeakRetained(&self->_containingTrack);
  v3 = [WeakRetained assetURL];

  return v3;
}

- (NSDate)dateLastOpened
{
  WeakRetained = objc_loadWeakRetained(&self->_containingTrack);
  v3 = [WeakRetained dateLastOpened];

  return v3;
}

- (NSString)identifier
{
  v3 = [(BKMLAudiobookChapter *)self containingTrack];
  v4 = [v3 mediaItem];
  v5 = [v4 bk_assetID];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(BKMLAudiobookChapter *)self assetURL];
    v7 = [v8 absoluteString];
  }

  if ([v7 length])
  {
    v9 = [NSString stringWithFormat:@"%@.%lu", v7, self->_chapterIndexInAudiobook];
  }

  else
  {
    v10 = +[NSUUID UUID];
    v9 = [v10 UUIDString];
  }

  return v9;
}

- (MPNowPlayingContentItem)contentItem
{
  contentItem = self->_contentItem;
  if (!contentItem)
  {
    v4 = [MPNowPlayingContentItem alloc];
    v5 = [(BKMLAudiobookChapter *)self identifier];
    v6 = [v4 initWithIdentifier:v5];
    v7 = self->_contentItem;
    self->_contentItem = v6;

    [(MPNowPlayingContentItem *)self->_contentItem setMediaType:4];
    WeakRetained = objc_loadWeakRetained(&self->_containingTrack);
    v9 = [WeakRetained mediaItem];
    v10 = [v9 artist];
    [(MPNowPlayingContentItem *)self->_contentItem setTrackArtistName:v10];

    v11 = objc_loadWeakRetained(&self->_containingTrack);
    v12 = [v11 mediaItem];
    v13 = [v12 albumArtist];
    [(MPNowPlayingContentItem *)self->_contentItem setAlbumArtistName:v13];

    v14 = objc_loadWeakRetained(&self->_containingTrack);
    v15 = [v14 mediaItem];
    v16 = [v15 genre];
    [(MPNowPlayingContentItem *)self->_contentItem setGenreName:v16];

    v17 = [(BKMLAudiobookChapter *)self title];
    [(MPNowPlayingContentItem *)self->_contentItem setTitle:v17];

    v18 = objc_loadWeakRetained(&self->_containingTrack);
    v19 = [v18 mediaItem];
    v20 = [v19 albumTitle];
    [(MPNowPlayingContentItem *)self->_contentItem setAlbumName:v20];

    [(BKMLAudiobookChapter *)self duration];
    [(MPNowPlayingContentItem *)self->_contentItem setDuration:?];
    [(MPNowPlayingContentItem *)self->_contentItem setElapsedTime:0.0];
    [(MPNowPlayingContentItem *)self->_contentItem setPlaybackRate:0.0];
    LODWORD(v21) = 1.0;
    [(MPNowPlayingContentItem *)self->_contentItem setDefaultPlaybackRate:v21];
    [(MPNowPlayingContentItem *)self->_contentItem setNumberOfChildren:0];
    [(MPNowPlayingContentItem *)self->_contentItem setContainer:0];
    [(MPNowPlayingContentItem *)self->_contentItem setHasArtwork:1];
    v22 = [(MPNowPlayingContentItem *)self->_contentItem identifier];
    [(MPNowPlayingContentItem *)self->_contentItem setArtworkIdentifier:v22];

    [(MPNowPlayingContentItem *)self->_contentItem setPlayable:1];
    v23 = objc_loadWeakRetained(&self->_containingTrack);
    v24 = [v23 mediaItem];
    -[MPNowPlayingContentItem setExplicitContent:](self->_contentItem, "setExplicitContent:", [v24 isExplicitItem]);

    v34[0] = kMRMediaRemoteNowPlayingInfoChapterNumber;
    v25 = [NSNumber numberWithUnsignedInteger:[(BKMLAudiobookChapter *)self chapterIndexInAudiobook]];
    v35[0] = v25;
    v34[1] = kMRMediaRemoteNowPlayingInfoTotalChapterCount;
    v26 = [(BKMLAudiobookChapter *)self audiobook];
    v27 = [v26 chapters];
    v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v27 count]);
    v35[1] = v28;
    v34[2] = kMRMediaRemoteNowPlayingInfoUniqueIdentifier;
    v29 = objc_loadWeakRetained(&self->_containingTrack);
    v30 = [v29 mediaItem];
    v31 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v30 persistentID]);
    v35[2] = v31;
    v32 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];

    [(MPNowPlayingContentItem *)self->_contentItem setNowPlayingInfo:v32];
    contentItem = self->_contentItem;
  }

  return contentItem;
}

- ($8BD1E3C934A4AE6C9488C351520253D1)timeRangeInTrack
{
  v3 = *&self[3].var1.var0;
  *&retstr->var0.var0 = *&self[3].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[3].var1.var3;
  return self;
}

- ($8BD1E3C934A4AE6C9488C351520253D1)timeRangeInAudiobook
{
  v3 = *&self[4].var1.var0;
  *&retstr->var0.var0 = *&self[4].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[4].var1.var3;
  return self;
}

- (BKMLAudiobookTrack)containingTrack
{
  WeakRetained = objc_loadWeakRetained(&self->_containingTrack);

  return WeakRetained;
}

@end