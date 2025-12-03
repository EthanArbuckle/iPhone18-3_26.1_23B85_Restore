@interface TVUNUpNextWidgetDataSource
+ (id)_contentGroupWithContinuations:(id)continuations widgetSize:(unint64_t)size expiration:(id)expiration;
+ (id)_contentItemWithContinuation:(id)continuation mediaItem:(id)item widgetSize:(unint64_t)size itemPosition:(int)position;
+ (id)_contentItemsWithContinuations:(id)continuations widgetSize:(unint64_t)size;
+ (id)cropCodeForContentType:(unint64_t)type;
+ (void)_completeUpNextItemCollectionResponse:(id)response widgetSize:(unint64_t)size expirationDate:(id)date resourceType:(int64_t)type withCompletion:(id)completion;
+ (void)_processContinuationsDelta:(id)delta withCompletion:(id)completion;
+ (void)fetchUpNext:(unint64_t)next withCompletion:(id)completion;
@end

@implementation TVUNUpNextWidgetDataSource

+ (void)fetchUpNext:(unint64_t)next withCompletion:(id)completion
{
  completionCopy = completion;
  if (qword_1001283C8[0] != -1)
  {
    sub_1000D12B0();
  }

  v6 = sub_100002C80();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Begin FetchUpNextWidget", buf, 2u);
  }

  +[NSDate date];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000365C;
  v7 = v20[3] = &unk_100117950;
  v21 = v7;
  v8 = completionCopy;
  v22 = v8;
  v9 = objc_retainBlock(v20);
  if (_os_feature_enabled_impl())
  {
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000037B0;
    v16[3] = &unk_100117978;
    v10 = &v17;
    v17 = v9;
    v18 = v8;
    nextCopy = next;
    v11 = v9;
    [_TtC17TVWidgetExtension24TVUTSNetworkManagerProxy fetchConfiguration:0 completion:v16];
    v12 = v18;
  }

  else
  {
    v12 = +[WLKConfigurationManager sharedInstance];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100003F40;
    v14[3] = &unk_1001179F0;
    v10 = v15;
    v15[0] = v9;
    v15[1] = next;
    v13 = v9;
    [v12 fetchConfigurationWithCompletionHandler:v14];
  }
}

+ (void)_completeUpNextItemCollectionResponse:(id)response widgetSize:(unint64_t)size expirationDate:(id)date resourceType:(int64_t)type withCompletion:(id)completion
{
  dateCopy = date;
  completionCopy = completion;
  responseCopy = response;
  items = [responseCopy items];
  v16 = [items mutableCopy];

  items2 = [responseCopy items];

  if (!items2)
  {
    v18 = objc_alloc_init(NSMutableArray);

    v16 = v18;
  }

  v19 = sub_100002C80();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (type == 1)
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Request was a Network load", buf, 2u);
    }

    v21 = +[WLKUpNextDeltaStore sharedInstance];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100004574;
    v31[3] = &unk_100117A18;
    selfCopy = self;
    v22 = &v32;
    v23 = &v33;
    v32 = v16;
    v33 = dateCopy;
    sizeCopy = size;
    v34 = completionCopy;
    v24 = completionCopy;
    v25 = dateCopy;
    [v21 delete:v31];
  }

  else
  {
    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Request was a Cache hit", buf, 2u);
    }

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100004718;
    v28[3] = &unk_100117A40;
    v30[1] = self;
    v30[2] = size;
    v22 = &v29;
    v23 = v30;
    v29 = dateCopy;
    v30[0] = completionCopy;
    v26 = completionCopy;
    v27 = dateCopy;
    [self _processContinuationsDelta:v16 withCompletion:v28];
  }
}

+ (id)_contentGroupWithContinuations:(id)continuations widgetSize:(unint64_t)size expiration:(id)expiration
{
  expirationCopy = expiration;
  v9 = [self _contentItemsWithContinuations:continuations widgetSize:size];
  if ([v9 count])
  {
    v10 = objc_alloc_init(TVUNContentItemGroup);
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"CONTINUE_WATCHING" value:&stru_10011D978 table:0];
    [(TVUNContentItemGroup *)v10 setTitle:v12];

    [(TVUNContentItemGroup *)v10 setItems:v9];
    [(TVUNContentItemGroup *)v10 setExpirationDate:expirationCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)_processContinuationsDelta:(id)delta withCompletion:(id)completion
{
  deltaCopy = delta;
  completionCopy = completion;
  v7 = sub_100002C80();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Begin fetching delta", buf, 2u);
  }

  v8 = +[NSDate date];
  v9 = +[WLKUpNextDeltaStore sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100004A74;
  v13[3] = &unk_100117A68;
  v14 = v8;
  v15 = deltaCopy;
  v16 = completionCopy;
  v10 = completionCopy;
  v11 = deltaCopy;
  v12 = v8;
  [v9 read:v13];
}

+ (id)_contentItemsWithContinuations:(id)continuations widgetSize:(unint64_t)size
{
  continuationsCopy = continuations;
  v7 = objc_alloc_init(NSMutableArray);
  +[TVUNRentalUtilities fetchRentals];
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100005204;
  v8 = v12[3] = &unk_100117A90;
  selfCopy = self;
  sizeCopy = size;
  v13 = v8;
  v15 = v18;
  v9 = v7;
  v14 = v9;
  [continuationsCopy enumerateObjectsUsingBlock:v12];
  v10 = [v9 copy];

  _Block_object_dispose(v18, 8);

  return v10;
}

+ (id)_contentItemWithContinuation:(id)continuation mediaItem:(id)item widgetSize:(unint64_t)size itemPosition:(int)position
{
  continuationCopy = continuation;
  itemCopy = item;
  movieOrShowContent = [continuationCopy movieOrShowContent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = continuationCopy;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = continuationCopy;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  canonicalID = [movieOrShowContent canonicalID];

  if (!canonicalID)
  {
    v18 = sub_100002C80();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_1000D1350(continuationCopy, v18);
    }

    goto LABEL_21;
  }

  if (v13)
  {
    tvun_defaultActionURL = [v13 tvun_punchoutURL:0];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_19;
    }

    tvun_defaultActionURL = [v15 tvun_defaultActionURL];
  }

  v19 = tvun_defaultActionURL;
  if (!tvun_defaultActionURL)
  {
LABEL_19:
    v18 = sub_100002C80();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000D12C4(continuationCopy, v18);
    }

LABEL_21:
    v28 = 0;
    goto LABEL_73;
  }

  v84 = itemCopy;
  canonicalID2 = [movieOrShowContent canonicalID];
  localizedContext = [continuationCopy localizedContext];
  title = [movieOrShowContent title];
  genres = [movieOrShowContent genres];
  firstObject = [genres firstObject];
  name = [firstObject name];

  tvun_contextString = [continuationCopy tvun_contextString];
  v86 = +[TVUNUpNextWidgetDataSource cropCodeForContentType:](TVUNUpNextWidgetDataSource, "cropCodeForContentType:", [movieOrShowContent contentType]);
  if ([continuationCopy contextEnum] == 1)
  {
    if (v13)
    {
      playable = [v13 playable];
      playEvent = [playable playEvent];

      if (playEvent)
      {
        [playEvent elapsedTime];
        v26 = v25;
        [playEvent duration];
        v85 = [NSNumber numberWithDouble:fmax(v26 / v27, 0.025)];
      }

      else
      {
        v85 = 0;
      }
    }

    else
    {
      v85 = 0;
    }

    v29 = 0;
    v80 = 0;
  }

  else
  {
    if ([continuationCopy contextEnum] == 12 || objc_msgSend(continuationCopy, "contextEnum") == 13)
    {
      v85 = 0;
      v80 = 0;
      v29 = 1;
      v30 = 29;
      goto LABEL_31;
    }

    v85 = 0;
    v29 = 0;
    v80 = [continuationCopy contextEnum] == 2;
  }

  v30 = 28;
LABEL_31:
  objc_opt_class();
  v83 = v15;
  positionCopy = position;
  sizeCopy = size;
  v79 = v29;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([continuationCopy isRental])
      {
        v78 = v19;
        tvun_expirationDate = [v84 tvun_expirationDate];
        tvun_expirationString = [v84 tvun_expirationString];
        v31 = tvun_expirationString;
        if (tvun_expirationString)
        {
          v31 = tvun_expirationString;

          v43 = localizedContext;
          leagueShortName = 0;
          tvun_contextString = v43;
          name = v31;
        }

        else
        {
          leagueShortName = 0;
        }

        goto LABEL_54;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v77 = v30;
        v78 = v19;
        v31 = movieOrShowContent;
        shortTitle = [v31 shortTitle];

        leagueName = [v31 leagueName];

        leagueShortName = [v31 leagueShortName];
        if (v29)
        {
          tvun_expirationDate = 0;
          name = leagueName;
          title = shortTitle;
        }

        else
        {
          title = shortTitle;
          playable2 = [v13 playable];

          if (playable2)
          {
            playable3 = [v13 playable];
            airingType = [playable3 airingType];

            tvun_expirationDate = 0;
            v72 = 30;
            if (airingType == 1)
            {
              v72 = 28;
            }

            name = leagueName;
            v30 = v72;
            goto LABEL_54;
          }

          tvun_expirationDate = 0;
          name = leagueName;
        }

        goto LABEL_53;
      }
    }

    tvun_expirationDate = 0;
    leagueShortName = 0;
    goto LABEL_55;
  }

  v78 = v19;
  v31 = movieOrShowContent;
  showTitle = [v31 showTitle];
  v76 = showTitle;
  v77 = v30;
  if (showTitle)
  {
    v33 = showTitle;

    title = v33;
  }

  seasonNumber = [v31 seasonNumber];
  episodeNumber = [v31 episodeNumber];
  v75 = episodeNumber;
  if (seasonNumber && episodeNumber)
  {
    v36 = episodeNumber;
    v37 = +[NSBundle mainBundle];
    v38 = [v37 localizedStringForKey:@"EPISODE_SEASON_EPISODE_FORMAT" value:&stru_10011D978 table:0];
    v74 = [NSString localizedStringWithFormat:v38, seasonNumber, v36];

    v39 = +[NSBundle mainBundle];
    v40 = [v39 localizedStringForKey:@"EPISODE_SEASON_EPISODE_FORMAT_SHORT" value:&stru_10011D978 table:0];
    [NSString localizedStringWithFormat:v40, seasonNumber, v36];
  }

  else
  {
    if (!seasonNumber)
    {
      title2 = [v31 title];
      leagueShortName = 0;
      v47 = name;
      goto LABEL_51;
    }

    v45 = +[NSBundle mainBundle];
    v46 = [v45 localizedStringForKey:@"EPISODE_SEASON_FORMAT" value:&stru_10011D978 table:0];
    v74 = [NSString localizedStringWithFormat:v46, seasonNumber];

    v39 = +[NSBundle mainBundle];
    v40 = [v39 localizedStringForKey:@"EPISODE_SEASON_FORMAT_SHORT" value:&stru_10011D978 table:0];
    [NSString localizedStringWithFormat:v40, seasonNumber, v73];
  }
  leagueShortName = ;

  if (leagueShortName)
  {
    v47 = +[NSBundle mainBundle];
    v48 = [v47 localizedStringForKey:@"SUBTITLE_WITH_CONTEXT_FORMAT" value:&stru_10011D978 table:0];
    tvun_contextString2 = [continuationCopy tvun_contextString];
    v50 = [NSString localizedStringWithFormat:v48, tvun_contextString2, leagueShortName];

    tvun_contextString = v50;
    title2 = v74;
LABEL_51:

    goto LABEL_52;
  }

  title2 = v74;
LABEL_52:

  tvun_expirationDate = 0;
  name = title2;
LABEL_53:
  v30 = v77;
LABEL_54:

  v19 = v78;
LABEL_55:
  if (positionCopy)
  {
    v54 = 0;
  }

  else
  {
    v54 = (sizeCopy & 0xFFFFFFFFFFFFFFFELL) == 2;
  }

  if (v54)
  {
    v30 = 27;
  }

  images = [movieOrShowContent images];
  v56 = [images artworkVariantOfType:v30];

  if (v56)
  {
    goto LABEL_65;
  }

  v57 = name;
  if (v30 != 28)
  {
    v58 = sub_100002C80();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      title3 = [movieOrShowContent title];
      *buf = 138412290;
      v92 = title3;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Artwork is nil for %@. Fall back to ShelfItemImage", buf, 0xCu);
    }

    images2 = [movieOrShowContent images];
    v56 = [images2 artworkVariantOfType:28];

LABEL_65:
    v57 = name;
  }

  v61 = objc_alloc_init(TVUNContentItem);
  [(TVUNContentItem *)v61 setIdentifier:canonicalID2];
  [(TVUNContentItem *)v61 setTitle:title];
  [(TVUNContentItem *)v61 setSubtitle:v57];
  [(TVUNContentItem *)v61 setSubtitleShort:leagueShortName];
  [(TVUNContentItem *)v61 setSubtitleComposed:tvun_contextString];
  [(TVUNContentItem *)v61 setContext:localizedContext];
  [(TVUNContentItem *)v61 setPlaybackPercentage:v85];
  [(TVUNContentItem *)v61 setRentalExpirationDate:tvun_expirationDate];
  [(TVUNContentItem *)v61 setLiveEvent:v79];
  [(TVUNContentItem *)v61 setNewEpisode:v80];
  [(TVUNContentItem *)v61 setCropCode:v86];
  if (v13)
  {
    v62 = v19;
    buf[0] = 0;
    v63 = [v13 tvun_channelImageURLString:buf];
    if (v63)
    {
      [(TVUNContentItem *)v61 setBadgeURLTemplate:v63];
      [(TVUNContentItem *)v61 setBadgeRequiresTransparency:buf[0]];
    }

    v19 = v62;
    v57 = name;
  }

  [(TVUNContentItem *)v61 setActionURL:v19];
  if (v56)
  {
    artworkURLString = [v56 artworkURLString];
    [(TVUNContentItem *)v61 setImageURLTemplate:artworkURLString];

    v57 = name;
    [v56 artworkSize];
    v66 = v65;
    [v56 artworkSize];
    [(TVUNContentItem *)v61 setImageAspectRatio:v66 / v67];
  }

  v18 = v61;

  v28 = v18;
  v15 = v83;
  itemCopy = v84;
LABEL_73:

  return v28;
}

+ (id)cropCodeForContentType:(unint64_t)type
{
  if (type == 5)
  {
    return @"sh";
  }

  else
  {
    return 0;
  }
}

@end