@interface BKMLAudiobookChapter
+ (id)customChapterTitleForMediaItem:(id)item mediaChapter:(id)chapter chapterIndex:(unint64_t)index;
- ($8BD1E3C934A4AE6C9488C351520253D1)timeRangeInAudiobook;
- ($8BD1E3C934A4AE6C9488C351520253D1)timeRangeInTrack;
- (BKAudiobook)audiobook;
- (BKAudiobookTrack)track;
- (BKMLAudiobookChapter)initWithMediaChapter:(id)chapter track:(id)track number:(unint64_t)number trackNumber:(unint64_t)trackNumber trackCount:(unint64_t)count;
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

+ (id)customChapterTitleForMediaItem:(id)item mediaChapter:(id)chapter chapterIndex:(unint64_t)index
{
  itemCopy = item;
  chapterCopy = chapter;
  if (qword_47A10 != -1)
  {
    sub_2166C();
  }

  bk_effectiveTitle = [itemCopy bk_effectiveTitle];
  if (!bk_effectiveTitle)
  {
    goto LABEL_23;
  }

  title = [itemCopy title];
  v11 = [title hasPrefix:bk_effectiveTitle];

  if (!v11)
  {
    goto LABEL_23;
  }

  title2 = [itemCopy title];
  v13 = [title2 substringFromIndex:{objc_msgSend(bk_effectiveTitle, "length")}];

  v14 = [v13 stringByTrimmingCharactersInSet:qword_47A08];

  if (!chapterCopy)
  {
    if (![v14 length])
    {

      goto LABEL_23;
    }

    v20 = v14;
    goto LABEL_22;
  }

  bk_UTF8Title = [chapterCopy bk_UTF8Title];
  if ([bk_UTF8Title hasPrefix:bk_effectiveTitle])
  {
    v16 = [bk_UTF8Title substringFromIndex:{objc_msgSend(bk_effectiveTitle, "length")}];
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
  bk_UTF8Title2 = [chapterCopy bk_UTF8Title];
  if ([bk_UTF8Title2 length])
  {
    title4 = bk_UTF8Title2;
  }

  else
  {
    title3 = [itemCopy title];
    v25 = [title3 length];

    if (!v25)
    {
      v27 = BKAudiobooksBundle();
      v28 = [v27 localizedStringForKey:@"%@ - Chapter %@" value:&stru_3D458 table:&stru_3D458];
      v29 = [NSNumber numberWithUnsignedInteger:index + 1];
      v20 = [NSString stringWithFormat:v28, bk_effectiveTitle, v29];

      goto LABEL_28;
    }

    title4 = [itemCopy title];
  }

  v20 = title4;
LABEL_28:

LABEL_29:

  return v20;
}

- (BKMLAudiobookChapter)initWithMediaChapter:(id)chapter track:(id)track number:(unint64_t)number trackNumber:(unint64_t)trackNumber trackCount:(unint64_t)count
{
  chapterCopy = chapter;
  trackCopy = track;
  v37.receiver = self;
  v37.super_class = BKMLAudiobookChapter;
  v15 = [(BKMLAudiobookChapter *)&v37 init];
  v16 = v15;
  if (v15)
  {
    v17 = objc_storeWeak(&v15->_containingTrack, trackCopy);
    v16->_chapterIndexInAudiobook = number;
    v16->_albumTrackNumber = trackNumber;
    v16->_albumTrackCount = count;
    v18 = v17;
    author = [trackCopy author];
    author = v16->_author;
    v16->_author = author;

    WeakRetained = objc_loadWeakRetained(&v16->_containingTrack);
    mediaItem = [WeakRetained mediaItem];
    v23 = [BKMLAudiobookChapter customChapterTitleForMediaItem:mediaItem mediaChapter:chapterCopy chapterIndex:v16->_chapterIndexInAudiobook];
    title = v16->_title;
    v16->_title = v23;

    if (chapterCopy)
    {
      objc_storeStrong(&v16->_mediaChapter, chapter);
      [chapterCopy playbackTime];
      v16->_startTimeInTrack = v25;
      [chapterCopy playbackDuration];
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
  audiobook = [WeakRetained audiobook];

  return audiobook;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  albumTrackNumber = [(BKMLAudiobookChapter *)self albumTrackNumber];
  title = [(BKMLAudiobookChapter *)self title];
  author = [(BKMLAudiobookChapter *)self author];
  customTitle = [(BKMLAudiobookChapter *)self customTitle];
  [(BKMLAudiobookChapter *)self timeRangeInAudiobook];
  time = v13;
  Seconds = CMTimeGetSeconds(&time);
  [(BKMLAudiobookChapter *)self duration];
  v11 = [NSString stringWithFormat:@"<%@:%p trackNumber=%lu title=%@ author=%@ customTitle=%@ range=(%.1lf, %.1lf)>", v4, self, albumTrackNumber, title, author, customTitle, *&Seconds, v10];

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
  artwork = [WeakRetained artwork];

  return artwork;
}

- (NSURL)assetURL
{
  WeakRetained = objc_loadWeakRetained(&self->_containingTrack);
  assetURL = [WeakRetained assetURL];

  return assetURL;
}

- (NSDate)dateLastOpened
{
  WeakRetained = objc_loadWeakRetained(&self->_containingTrack);
  dateLastOpened = [WeakRetained dateLastOpened];

  return dateLastOpened;
}

- (NSString)identifier
{
  containingTrack = [(BKMLAudiobookChapter *)self containingTrack];
  mediaItem = [containingTrack mediaItem];
  bk_assetID = [mediaItem bk_assetID];
  v6 = bk_assetID;
  if (bk_assetID)
  {
    absoluteString = bk_assetID;
  }

  else
  {
    assetURL = [(BKMLAudiobookChapter *)self assetURL];
    absoluteString = [assetURL absoluteString];
  }

  if ([absoluteString length])
  {
    uUIDString = [NSString stringWithFormat:@"%@.%lu", absoluteString, self->_chapterIndexInAudiobook];
  }

  else
  {
    v10 = +[NSUUID UUID];
    uUIDString = [v10 UUIDString];
  }

  return uUIDString;
}

- (MPNowPlayingContentItem)contentItem
{
  contentItem = self->_contentItem;
  if (!contentItem)
  {
    v4 = [MPNowPlayingContentItem alloc];
    identifier = [(BKMLAudiobookChapter *)self identifier];
    v6 = [v4 initWithIdentifier:identifier];
    v7 = self->_contentItem;
    self->_contentItem = v6;

    [(MPNowPlayingContentItem *)self->_contentItem setMediaType:4];
    WeakRetained = objc_loadWeakRetained(&self->_containingTrack);
    mediaItem = [WeakRetained mediaItem];
    artist = [mediaItem artist];
    [(MPNowPlayingContentItem *)self->_contentItem setTrackArtistName:artist];

    v11 = objc_loadWeakRetained(&self->_containingTrack);
    mediaItem2 = [v11 mediaItem];
    albumArtist = [mediaItem2 albumArtist];
    [(MPNowPlayingContentItem *)self->_contentItem setAlbumArtistName:albumArtist];

    v14 = objc_loadWeakRetained(&self->_containingTrack);
    mediaItem3 = [v14 mediaItem];
    genre = [mediaItem3 genre];
    [(MPNowPlayingContentItem *)self->_contentItem setGenreName:genre];

    title = [(BKMLAudiobookChapter *)self title];
    [(MPNowPlayingContentItem *)self->_contentItem setTitle:title];

    v18 = objc_loadWeakRetained(&self->_containingTrack);
    mediaItem4 = [v18 mediaItem];
    albumTitle = [mediaItem4 albumTitle];
    [(MPNowPlayingContentItem *)self->_contentItem setAlbumName:albumTitle];

    [(BKMLAudiobookChapter *)self duration];
    [(MPNowPlayingContentItem *)self->_contentItem setDuration:?];
    [(MPNowPlayingContentItem *)self->_contentItem setElapsedTime:0.0];
    [(MPNowPlayingContentItem *)self->_contentItem setPlaybackRate:0.0];
    LODWORD(v21) = 1.0;
    [(MPNowPlayingContentItem *)self->_contentItem setDefaultPlaybackRate:v21];
    [(MPNowPlayingContentItem *)self->_contentItem setNumberOfChildren:0];
    [(MPNowPlayingContentItem *)self->_contentItem setContainer:0];
    [(MPNowPlayingContentItem *)self->_contentItem setHasArtwork:1];
    identifier2 = [(MPNowPlayingContentItem *)self->_contentItem identifier];
    [(MPNowPlayingContentItem *)self->_contentItem setArtworkIdentifier:identifier2];

    [(MPNowPlayingContentItem *)self->_contentItem setPlayable:1];
    v23 = objc_loadWeakRetained(&self->_containingTrack);
    mediaItem5 = [v23 mediaItem];
    -[MPNowPlayingContentItem setExplicitContent:](self->_contentItem, "setExplicitContent:", [mediaItem5 isExplicitItem]);

    v34[0] = kMRMediaRemoteNowPlayingInfoChapterNumber;
    v25 = [NSNumber numberWithUnsignedInteger:[(BKMLAudiobookChapter *)self chapterIndexInAudiobook]];
    v35[0] = v25;
    v34[1] = kMRMediaRemoteNowPlayingInfoTotalChapterCount;
    audiobook = [(BKMLAudiobookChapter *)self audiobook];
    chapters = [audiobook chapters];
    v28 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [chapters count]);
    v35[1] = v28;
    v34[2] = kMRMediaRemoteNowPlayingInfoUniqueIdentifier;
    v29 = objc_loadWeakRetained(&self->_containingTrack);
    mediaItem6 = [v29 mediaItem];
    v31 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [mediaItem6 persistentID]);
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