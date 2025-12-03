@interface MTEpisodeDescriptionCache
- (MTEpisodeDescriptionCache)init;
- (NSCache)descriptionCache;
- (NSCache)episodeCache;
- (id)createVideoGlyphAttributedString;
- (id)dependantPropertyKeys;
- (id)descriptionBodyTextForEpisode:(id)episode html:(BOOL)html withAttributes:(id)attributes;
- (id)descriptionCacheForEpisodeUuid:(id)uuid;
- (id)descriptionFooterTextForEpisode:(id)episode includesSeasonEpisodeType:(BOOL)type includesDuration:(BOOL)duration includesPlayedIfPlayed:(BOOL)played hasBodyText:(BOOL)text unavailableReason:(int64_t)reason;
- (id)descriptionForEpisode:(id)episode;
- (id)descriptionForEpisode:(id)episode options:(unint64_t)options;
- (id)descriptionKeyForOptions:(unint64_t)options unavailableReason:(int64_t)reason;
- (id)descriptionPrefixTextForEpisode:(id)episode options:(unint64_t)options trailingNewline:(BOOL)newline;
- (id)descriptionPrefixTextForPlayerItem:(id)item options:(unint64_t)options trailingNewline:(BOOL)newline;
- (id)descriptionTextForEpisode:(id)episode options:(unint64_t)options;
- (id)metadataFooterForEpisode:(id)episode includingSeasonEpisodeType:(BOOL)type includingDuration:(BOOL)duration includingPlayedIfPlayed:(BOOL)played;
- (void)cache:(id)cache willEvictObject:(id)object;
- (void)dealloc;
- (void)invalidate;
- (void)updateCacheForEpisode:(id)episode;
@end

@implementation MTEpisodeDescriptionCache

- (MTEpisodeDescriptionCache)init
{
  v5.receiver = self;
  v5.super_class = MTEpisodeDescriptionCache;
  v2 = [(MTEpisodeDescriptionCache *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"invalidate" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MTEpisodeDescriptionCache;
  [(MTEpisodeDescriptionCache *)&v4 dealloc];
}

- (id)descriptionForEpisode:(id)episode
{
  episodeCopy = episode;
  v5 = +[MTEpisodeLockup descriptionFont];
  v9 = NSFontAttributeName;
  v10 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v7 = [(MTEpisodeDescriptionCache *)self descriptionBodyTextForEpisode:episodeCopy html:1 withAttributes:v6];

  return v7;
}

- (id)descriptionForEpisode:(id)episode options:(unint64_t)options
{
  episodeCopy = episode;
  uuid = [episodeCopy uuid];
  v8 = [uuid length];

  if (v8)
  {
    uuid2 = [episodeCopy uuid];
    [(MTEpisodeDescriptionCache *)self updateCacheForEpisode:episodeCopy];
    v10 = [(MTEpisodeDescriptionCache *)self descriptionCacheForEpisodeUuid:uuid2];
    v11 = -[MTEpisodeDescriptionCache descriptionKeyForOptions:unavailableReason:](self, "descriptionKeyForOptions:unavailableReason:", options, [episodeCopy reasonForNotPlayable]);
    v12 = [v10 objectForKeyedSubscript:v11];
    if (!v12)
    {
      v12 = [(MTEpisodeDescriptionCache *)self descriptionTextForEpisode:episodeCopy options:options];
      [v10 setObject:v12 forKey:v11];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)metadataFooterForEpisode:(id)episode includingSeasonEpisodeType:(BOOL)type includingDuration:(BOOL)duration includingPlayedIfPlayed:(BOOL)played
{
  v6 = 64;
  if (type)
  {
    v6 = 320;
  }

  if (duration)
  {
    v6 |= 0x200uLL;
  }

  if (played)
  {
    v7 = v6 | 0x400;
  }

  else
  {
    v7 = v6;
  }

  return [(MTEpisodeDescriptionCache *)self descriptionForEpisode:episode options:v7];
}

- (void)invalidate
{
  descriptionCache = [(MTEpisodeDescriptionCache *)self descriptionCache];
  [descriptionCache removeAllObjects];

  episodeCache = [(MTEpisodeDescriptionCache *)self episodeCache];
  [episodeCache removeAllObjects];
}

- (void)cache:(id)cache willEvictObject:(id)object
{
  cacheCopy = cache;
  v7 = [object objectForKeyedSubscript:kEpisodeUuid];
  episodeCache = [(MTEpisodeDescriptionCache *)self episodeCache];

  if (episodeCache == cacheCopy)
  {
    v10 = v13;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v11 = sub_1000AD7F4;
    goto LABEL_5;
  }

  descriptionCache = [(MTEpisodeDescriptionCache *)self descriptionCache];

  if (descriptionCache == cacheCopy)
  {
    v10 = v12;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v11 = sub_1000AD848;
LABEL_5:
    v10[2] = v11;
    v10[3] = &unk_1004D8798;
    v10[4] = self;
    v10[5] = v7;
    dispatch_async(&_dispatch_main_q, v10);
  }
}

- (NSCache)descriptionCache
{
  descriptionCache = self->_descriptionCache;
  if (!descriptionCache)
  {
    v4 = objc_alloc_init(NSCache);
    v5 = self->_descriptionCache;
    self->_descriptionCache = v4;

    [(NSCache *)self->_descriptionCache setDelegate:self];
    descriptionCache = self->_descriptionCache;
  }

  return descriptionCache;
}

- (NSCache)episodeCache
{
  episodeCache = self->_episodeCache;
  if (!episodeCache)
  {
    v4 = objc_alloc_init(NSCache);
    v5 = self->_episodeCache;
    self->_episodeCache = v4;

    [(NSCache *)self->_episodeCache setDelegate:self];
    episodeCache = self->_episodeCache;
  }

  return episodeCache;
}

- (id)dependantPropertyKeys
{
  if (qword_100583B48 != -1)
  {
    sub_1003B2B84();
  }

  v3 = qword_100583B40;

  return v3;
}

- (id)descriptionCacheForEpisodeUuid:(id)uuid
{
  uuidCopy = uuid;
  descriptionCache = [(MTEpisodeDescriptionCache *)self descriptionCache];
  v6 = [descriptionCache objectForKey:uuidCopy];

  if (!v6)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    [v6 setObject:uuidCopy forKey:kEpisodeUuid];
    descriptionCache2 = [(MTEpisodeDescriptionCache *)self descriptionCache];
    [descriptionCache2 setObject:v6 forKey:uuidCopy];
  }

  return v6;
}

- (id)descriptionKeyForOptions:(unint64_t)options unavailableReason:(int64_t)reason
{
  if ((options & 0x80) != 0)
  {
    [NSString stringWithFormat:@"opt%lu-f-%lu", reason, options, reason];
  }

  else
  {
    [NSString stringWithFormat:@"opt%lu-c", reason, options, v6];
  }
  v4 = ;

  return v4;
}

- (void)updateCacheForEpisode:(id)episode
{
  episodeCopy = episode;
  episodeCache = [(MTEpisodeDescriptionCache *)self episodeCache];
  uuid = [episodeCopy uuid];
  v6 = [episodeCache objectForKey:uuid];

  dependantPropertyKeys = [(MTEpisodeDescriptionCache *)self dependantPropertyKeys];
  v8 = [episodeCopy dictionaryWithValuesForKeys:dependantPropertyKeys];

  if (([v6 isEqualToDictionary:v8] & 1) == 0)
  {
    episodeCache2 = [(MTEpisodeDescriptionCache *)self episodeCache];
    uuid2 = [episodeCopy uuid];
    [episodeCache2 setObject:v8 forKey:uuid2];

    descriptionCache = [(MTEpisodeDescriptionCache *)self descriptionCache];
    uuid3 = [episodeCopy uuid];
    [descriptionCache removeObjectForKey:uuid3];
  }
}

- (id)descriptionTextForEpisode:(id)episode options:(unint64_t)options
{
  episodeCopy = episode;
  v7 = +[MTEpisodeLockup descriptionFont];
  v8 = v7;
  if ((options & 0x10) == 0)
  {
    v9 = 0;
    if (options)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = objc_opt_new();
    goto LABEL_7;
  }

  v18 = NSFontAttributeName;
  v19 = v7;
  v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v9 = [(MTEpisodeDescriptionCache *)self descriptionBodyTextForEpisode:episodeCopy html:(options >> 5) & 1 withAttributes:v13];

  if ((options & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v10 = -[MTEpisodeDescriptionCache descriptionPrefixTextForEpisode:options:trailingNewline:](self, "descriptionPrefixTextForEpisode:options:trailingNewline:", episodeCopy, options, [v9 length] != 0);
  v11 = objc_opt_new();
  v12 = v11;
  if (v10)
  {
    [v11 appendAttributedString:v10];
  }

LABEL_7:
  if (v9)
  {
    [v12 appendAttributedString:v9];
  }

  if ((options & 0x40) != 0)
  {
    if ((options & 0x80) != 0)
    {
      reasonForNotPlayable = [episodeCopy reasonForNotPlayable];
    }

    else
    {
      reasonForNotPlayable = 0;
    }

    v15 = -[MTEpisodeDescriptionCache descriptionFooterTextForEpisode:includesSeasonEpisodeType:includesDuration:includesPlayedIfPlayed:hasBodyText:unavailableReason:](self, "descriptionFooterTextForEpisode:includesSeasonEpisodeType:includesDuration:includesPlayedIfPlayed:hasBodyText:unavailableReason:", episodeCopy, (options >> 8) & 1, (options >> 9) & 1, (options >> 10) & 1, [v9 length] != 0, reasonForNotPlayable);
    if (v15)
    {
      [v12 appendAttributedString:v15];
    }
  }

  v16 = [[NSAttributedString alloc] initWithAttributedString:v12];

  return v16;
}

- (id)descriptionPrefixTextForEpisode:(id)episode options:(unint64_t)options trailingNewline:(BOOL)newline
{
  newlineCopy = newline;
  optionsCopy = options;
  episodeCopy = episode;
  v8 = +[NSMutableArray array];
  if ((optionsCopy & 2) != 0 && ([episodeCopy pubDate], v9 > 0.0))
  {
    [episodeCopy pubDate];
    v10 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v10 = 0;
  }

  if (+[MTEpisodeLockup useLayoutForSkinnyPhones])
  {
    [v10 nanoFriendlyDisplayString];
  }

  else
  {
    [v10 abbreviatedFriendlyDisplayString];
  }
  v11 = ;
  if (v11)
  {
    v12 = [[NSAttributedString alloc] initWithString:v11];
    [v8 addObject:v12];
  }

  if ((optionsCopy & 4) != 0 && [episodeCopy isPartiallyPlayed])
  {
    v13 = +[MTEpisode timeRemainingStringForEpisode:abbreviated:](MTEpisode, "timeRemainingStringForEpisode:abbreviated:", episodeCopy, +[MTEpisodeLockup useLayoutForSkinnyPhones]);
  }

  else
  {
    v13 = 0;
  }

  if (![v13 length])
  {
    [episodeCopy duration];
    v15 = +[NSString prettyShortStringWithDuration:abbreviated:](NSString, "prettyShortStringWithDuration:abbreviated:", +[MTEpisodeLockup useLayoutForSkinnyPhones], v14);

    v13 = v15;
  }

  isVideo = [episodeCopy isVideo];
  if (optionsCopy & 8) != 0 && (isVideo)
  {
    createVideoGlyphAttributedString = [(MTEpisodeDescriptionCache *)self createVideoGlyphAttributedString];
    v18 = objc_opt_new();
    v19 = v18;
    if (createVideoGlyphAttributedString)
    {
      [v18 appendAttributedString:createVideoGlyphAttributedString];
    }
  }

  else
  {
    v19 = objc_opt_new();
  }

  if ([v13 length])
  {
    v20 = [[NSAttributedString alloc] initWithString:v13];
    [v19 appendAttributedString:v20];
  }

  v39 = v13;
  v41 = v11;
  v42 = v10;
  v43 = episodeCopy;
  if ([v19 length])
  {
    v21 = [v19 copy];
    [v8 addObject:v21];
  }

  v38 = v19;
  v22 = +[MTEpisodeLockup descriptionFont];
  v23 = +[MTEpisodeLockup metadataHeaderFont];
  v53 = NSFontAttributeName;
  v54 = v23;
  v24 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
  v25 = [[NSAttributedString alloc] initWithString:@" " attributes:v24];
  v26 = [NSAttributedString alloc];
  v51 = NSFontAttributeName;
  v52 = v22;
  v27 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  v28 = [v26 initWithString:@"•" attributes:v27];

  v29 = [[NSAttributedString alloc] initWithString:@"\n" attributes:v24];
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_1000AE428;
  v44[3] = &unk_1004DAC88;
  v30 = objc_alloc_init(NSMutableAttributedString);
  v45 = v30;
  v31 = v8;
  v46 = v31;
  v32 = v25;
  v47 = v32;
  v33 = v28;
  v48 = v33;
  v50 = newlineCopy;
  v34 = v29;
  v49 = v34;
  [v31 enumerateObjectsUsingBlock:v44];
  [v30 im_addAttribute:NSFontAttributeName value:v23];
  if (newlineCopy && [v30 length])
  {
    v35 = objc_alloc_init(NSMutableParagraphStyle);
    [v23 _leading];
    [v35 setParagraphSpacing:?];
    [v30 im_addAttribute:NSParagraphStyleAttributeName value:v35];
  }

  if ([v30 length])
  {
    v36 = [[NSAttributedString alloc] initWithAttributedString:v30];
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (id)descriptionFooterTextForEpisode:(id)episode includesSeasonEpisodeType:(BOOL)type includesDuration:(BOOL)duration includesPlayedIfPlayed:(BOOL)played hasBodyText:(BOOL)text unavailableReason:(int64_t)reason
{
  textCopy = text;
  durationCopy = duration;
  playedCopy = played;
  typeCopy = type;
  episodeCopy = episode;
  v12 = objc_opt_new();
  v13 = +[MTEpisodeLockup metadataFooterFont];
  v14 = objc_opt_new();
  v71 = v13;
  [v13 lineHeight];
  v72 = v14;
  [v14 setParagraphSpacingBefore:v15 * 0.5];
  podcast = [episodeCopy podcast];
  title = [podcast title];
  v18 = [MTEpisodeUnavailableUtil longStringForUnavailableReason:reason podcastTitle:title];

  v69 = [v18 length];
  if (v69)
  {
    if (textCopy)
    {
      v80 = NSParagraphStyleAttributeName;
      v81 = v72;
      v19 = [NSDictionary dictionaryWithObjects:&v81 forKeys:&v80 count:1];
      v20 = [@"\n" stringByAppendingString:v18];

      v18 = v20;
    }

    else
    {
      v19 = 0;
    }

    v21 = [[NSAttributedString alloc] initWithString:v18 attributes:v19];
    [v12 appendAttributedString:v21];
  }

  v73 = objc_opt_new();
  v22 = &kPlaylistITunesPlaylistUuid_ptr;
  if (typeCopy)
  {
    v23 = textCopy;
    seasonNumber = [episodeCopy seasonNumber];
    episodeNumber = [episodeCopy episodeNumber];
    episodeTypeResolvedValue = [episodeCopy episodeTypeResolvedValue];
    if (episodeTypeResolvedValue == 2)
    {
      if (seasonNumber >= 1 && episodeNumber >= 1)
      {
        v27 = +[NSBundle mainBundle];
        v28 = v27;
        v29 = @"EPISODE_AND_SEASON_NUMBER_BONUS";
        goto LABEL_19;
      }

      if (seasonNumber >= 1)
      {
        v31 = +[NSBundle mainBundle];
        v28 = v31;
        v32 = @"SEASON_NUMBER_BONUS";
        goto LABEL_26;
      }

      if (episodeNumber >= 1)
      {
        v34 = +[NSBundle mainBundle];
        v28 = v34;
        v35 = @"EPISODE_NUMBER_BONUS";
        goto LABEL_36;
      }

      v63 = +[NSBundle mainBundle];
      v28 = v63;
      v64 = @"BONUS_EPISODE";
    }

    else
    {
      if (episodeTypeResolvedValue != 1)
      {
        if (episodeTypeResolvedValue)
        {
          goto LABEL_37;
        }

        if (seasonNumber >= 1 && episodeNumber >= 1)
        {
          v27 = +[NSBundle mainBundle];
          v28 = v27;
          v29 = @"EPISODE_AND_SEASON_NUMBER_FORMAT";
LABEL_19:
          v30 = [v27 localizedStringForKey:v29 value:&stru_1004F3018 table:0];
          v65 = episodeNumber;
LABEL_27:
          [NSString localizedStringWithFormat:v30, seasonNumber, v65];
          v33 = LABEL_28:;

          v22 = &kPlaylistITunesPlaylistUuid_ptr;
LABEL_29:
          LOBYTE(textCopy) = v23;

LABEL_38:
          if ([v33 length])
          {
            [v73 addObject:v33];
          }

          goto LABEL_41;
        }

        if (seasonNumber >= 1)
        {
          v31 = +[NSBundle mainBundle];
          v28 = v31;
          v32 = @"SEASON_NUMBER_FORMAT";
          goto LABEL_26;
        }

        if (episodeNumber < 1)
        {
LABEL_37:
          v33 = 0;
          LOBYTE(textCopy) = v23;
          goto LABEL_38;
        }

        v34 = +[NSBundle mainBundle];
        v28 = v34;
        v35 = @"EPISODE_NUMBER_FORMAT";
LABEL_36:
        v30 = [v34 localizedStringForKey:v35 value:&stru_1004F3018 table:0];
        [NSString localizedStringWithFormat:v30, episodeNumber, v65];
        goto LABEL_28;
      }

      if (seasonNumber >= 1 && episodeNumber >= 1)
      {
        v27 = +[NSBundle mainBundle];
        v28 = v27;
        v29 = @"EPISODE_AND_SEASON_NUMBER_TRAILER";
        goto LABEL_19;
      }

      if (seasonNumber >= 1)
      {
        v31 = +[NSBundle mainBundle];
        v28 = v31;
        v32 = @"SEASON_NUMBER_TRAILER";
LABEL_26:
        v30 = [v31 localizedStringForKey:v32 value:&stru_1004F3018 table:0];
        goto LABEL_27;
      }

      if (episodeNumber >= 1)
      {
        v34 = +[NSBundle mainBundle];
        v28 = v34;
        v35 = @"EPISODE_NUMBER_TRAILER";
        goto LABEL_36;
      }

      v63 = +[NSBundle mainBundle];
      v28 = v63;
      v64 = @"TRAILER_EPISODE";
    }

    v33 = [v63 localizedStringForKey:v64 value:&stru_1004F3018 table:0];
    goto LABEL_29;
  }

LABEL_41:
  v36 = [episodeCopy valueForKey:kEpisodePubDate];
  verboseDisplayString = [v36 verboseDisplayString];

  if (verboseDisplayString)
  {
    [v73 addObject:verboseDisplayString];
  }

  v70 = v12;
  if ([episodeCopy byteSize] < 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = +[NSString stringWithBytesize:](NSString, "stringWithBytesize:", [episodeCopy byteSize]);
  }

  mainBundle = [v22[115] mainBundle];
  if ([episodeCopy isAudio])
  {
    v40 = @"Audio";
  }

  else if ([episodeCopy isVideo])
  {
    v40 = @"Video";
  }

  else
  {
    v40 = @"Document";
  }

  v41 = [mainBundle localizedStringForKey:v40 value:&stru_1004F3018 table:0];

  v66 = v38;
  if ([v38 length])
  {
    mainBundle2 = [v22[115] mainBundle];
    v43 = [mainBundle2 localizedStringForKey:@"EPISODE_SIZE_ALT_FORMAT" value:&stru_1004F3018 table:0];
    v44 = [NSString localizedStringWithFormat:v43, v38, v41, v38];
  }

  else
  {
    v44 = v41;
  }

  if (durationCopy && ([episodeCopy duration], v45 >= 1.0))
  {
    [episodeCopy duration];
    v46 = [NSString stringWithDuration:3 unitsStyle:0 includeTimeRemainingPhrase:?];
    if ([v46 length])
    {
      v47 = +[NSBundle mainBundle];
      v48 = [v47 localizedStringForKey:@"EPISODE_DURATION_SIZE_FORMAT" value:&stru_1004F3018 table:0];
      v49 = [NSString localizedStringWithFormat:v48, v46, v44];

      [v73 addObject:v49];
    }

    else
    {
      [v73 addObject:v44];
    }
  }

  else
  {
    [v73 addObject:v44];
  }

  if (playedCopy)
  {
    playedText = [episodeCopy playedText];
    if ([playedText length])
    {
      [v73 addObject:playedText];
    }
  }

  if ([episodeCopy isDownloaded])
  {
    podcast2 = [episodeCopy podcast];
    deletePlayedEpisodesResolvedValue = [podcast2 deletePlayedEpisodesResolvedValue];

    if (deletePlayedEpisodesResolvedValue)
    {
      podcastUuid = [episodeCopy podcastUuid];
      v54 = [MTEpisode predicateForRecentlyPlayedEpisodesToBeDeletedOnPodcastUuid:podcastUuid deletePlayedEpisodes:1];

      if ([v54 evaluateWithObject:episodeCopy])
      {
        v55 = +[NSBundle mainBundle];
        v56 = [v55 localizedStringForKey:@"EPISODE_DETAIL_DOWNLOAD_WILL_BE_DELETED" value:&stru_1004F3018 table:0];
        [v73 addObject:v56];
      }
    }
  }

  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_1000AEDC0;
  v74[3] = &unk_1004DACB0;
  v78 = textCopy;
  v75 = v18;
  v76 = v72;
  v79 = v69 != 0;
  v77 = v70;
  v57 = v70;
  v58 = v72;
  v59 = v18;
  [v73 enumerateObjectsUsingBlock:v74];
  [v57 addAttribute:NSFontAttributeName value:v71 range:{0, objc_msgSend(v57, "length")}];
  v60 = +[UIColor systemGrayColor];
  [v57 addAttribute:NSForegroundColorAttributeName value:v60 range:{0, objc_msgSend(v57, "length")}];

  v61 = [v57 copy];

  return v61;
}

- (id)createVideoGlyphAttributedString
{
  v2 = +[MTEpisodeStateView videoIcon];
  v3 = objc_opt_new();
  [v3 im_appendImage:v2];
  [v3 im_appendString:@" "];
  v4 = [v3 copy];

  return v4;
}

- (id)descriptionBodyTextForEpisode:(id)episode html:(BOOL)html withAttributes:(id)attributes
{
  htmlCopy = html;
  episodeCopy = episode;
  attributesCopy = attributes;
  if (htmlCopy && [episodeCopy itemDescriptionHasHTML])
  {
    lazyAttributedDescription = [episodeCopy lazyAttributedDescription];
    v10 = [lazyAttributedDescription mutableCopy];

    [v10 addAttributes:attributesCopy range:{0, objc_msgSend(v10, "length")}];
    if ([v10 length])
    {
      v11 = [v10 copy];
LABEL_9:
      v16 = v11;

      goto LABEL_10;
    }
  }

  itemDescriptionWithoutHTML = [episodeCopy itemDescriptionWithoutHTML];
  v13 = [itemDescriptionWithoutHTML length];

  if (v13)
  {
    v14 = [NSAttributedString alloc];
    itemDescriptionWithoutHTML2 = [episodeCopy itemDescriptionWithoutHTML];
LABEL_8:
    v10 = itemDescriptionWithoutHTML2;
    v11 = [v14 initWithString:itemDescriptionWithoutHTML2 attributes:attributesCopy];
    goto LABEL_9;
  }

  if ([episodeCopy itemDescriptionHasHTML])
  {
    v16 = 0;
  }

  else
  {
    itemDescription = [episodeCopy itemDescription];
    v16 = [itemDescription length];

    if (v16)
    {
      v14 = [NSAttributedString alloc];
      itemDescriptionWithoutHTML2 = [episodeCopy itemDescription];
      goto LABEL_8;
    }
  }

LABEL_10:

  return v16;
}

- (id)descriptionPrefixTextForPlayerItem:(id)item options:(unint64_t)options trailingNewline:(BOOL)newline
{
  newlineCopy = newline;
  optionsCopy = options;
  itemCopy = item;
  v8 = +[NSMutableArray array];
  if ((optionsCopy & 2) != 0)
  {
    pubDate = [itemCopy pubDate];
  }

  else
  {
    pubDate = 0;
  }

  if (+[MTEpisodeLockup useLayoutForSkinnyPhones])
  {
    [pubDate nanoFriendlyDisplayString];
  }

  else
  {
    [pubDate abbreviatedFriendlyDisplayString];
  }
  v10 = ;
  if (v10)
  {
    v11 = [[NSAttributedString alloc] initWithString:v10];
    [v8 addObject:v11];
  }

  if ((optionsCopy & 4) != 0 && ([itemCopy playhead], v13 = v12, objc_msgSend(itemCopy, "duration"), +[MTEpisode isPlayhead:resumableForDuration:](MTEpisode, "isPlayhead:resumableForDuration:", v13, v14)) && (objc_msgSend(itemCopy, "duration"), v16 = v15, objc_msgSend(itemCopy, "duration"), v18 = v16 - v17, v18 > 0.0))
  {
    v19 = +[NSString prettyShortStringWithDuration:includeTimeRemainingPhrase:abbreviated:](NSString, "prettyShortStringWithDuration:includeTimeRemainingPhrase:abbreviated:", 1, +[MTEpisodeLockup useLayoutForSkinnyPhones], v18);
  }

  else
  {
    v19 = 0;
  }

  if (![v19 length])
  {
    [itemCopy duration];
    v21 = +[NSString prettyShortStringWithDuration:abbreviated:](NSString, "prettyShortStringWithDuration:abbreviated:", +[MTEpisodeLockup useLayoutForSkinnyPhones], v20);

    v19 = v21;
  }

  isVideo = [itemCopy isVideo];
  if (optionsCopy & 8) != 0 && (isVideo)
  {
    createVideoGlyphAttributedString = [(MTEpisodeDescriptionCache *)self createVideoGlyphAttributedString];
    v24 = objc_opt_new();
    v25 = v24;
    if (createVideoGlyphAttributedString)
    {
      [v24 appendAttributedString:createVideoGlyphAttributedString];
    }
  }

  else
  {
    v25 = objc_opt_new();
  }

  if ([v19 length])
  {
    v26 = [[NSAttributedString alloc] initWithString:v19];
    [v25 appendAttributedString:v26];
  }

  v45 = v19;
  v47 = v10;
  v48 = pubDate;
  v49 = itemCopy;
  if ([v25 length])
  {
    v27 = [v25 copy];
    [v8 addObject:v27];
  }

  v44 = v25;
  v28 = +[MTEpisodeLockup descriptionFont];
  v29 = +[MTEpisodeLockup metadataHeaderFont];
  v59 = NSFontAttributeName;
  v60 = v29;
  v30 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
  v31 = [[NSAttributedString alloc] initWithString:@" " attributes:v30];
  v32 = [NSAttributedString alloc];
  v57 = NSFontAttributeName;
  v58 = v28;
  v33 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  v34 = [v32 initWithString:@"•" attributes:v33];

  v35 = [[NSAttributedString alloc] initWithString:@"\n" attributes:v30];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1000AF618;
  v50[3] = &unk_1004DAC88;
  v36 = objc_alloc_init(NSMutableAttributedString);
  v51 = v36;
  v37 = v8;
  v52 = v37;
  v38 = v31;
  v53 = v38;
  v39 = v34;
  v54 = v39;
  v56 = newlineCopy;
  v40 = v35;
  v55 = v40;
  [v37 enumerateObjectsUsingBlock:v50];
  [v36 im_addAttribute:NSFontAttributeName value:v29];
  if (newlineCopy && [v36 length])
  {
    v41 = objc_alloc_init(NSMutableParagraphStyle);
    [v29 _leading];
    [v41 setParagraphSpacing:?];
    [v36 im_addAttribute:NSParagraphStyleAttributeName value:v41];
  }

  if ([v36 length])
  {
    v42 = [[NSAttributedString alloc] initWithAttributedString:v36];
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

@end