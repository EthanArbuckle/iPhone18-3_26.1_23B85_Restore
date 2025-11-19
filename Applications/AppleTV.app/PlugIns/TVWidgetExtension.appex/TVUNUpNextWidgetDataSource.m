@interface TVUNUpNextWidgetDataSource
+ (id)_contentGroupWithContinuations:(id)a3 widgetSize:(unint64_t)a4 expiration:(id)a5;
+ (id)_contentItemWithContinuation:(id)a3 mediaItem:(id)a4 widgetSize:(unint64_t)a5 itemPosition:(int)a6;
+ (id)_contentItemsWithContinuations:(id)a3 widgetSize:(unint64_t)a4;
+ (id)cropCodeForContentType:(unint64_t)a3;
+ (void)_completeUpNextItemCollectionResponse:(id)a3 widgetSize:(unint64_t)a4 expirationDate:(id)a5 resourceType:(int64_t)a6 withCompletion:(id)a7;
+ (void)_processContinuationsDelta:(id)a3 withCompletion:(id)a4;
+ (void)fetchUpNext:(unint64_t)a3 withCompletion:(id)a4;
@end

@implementation TVUNUpNextWidgetDataSource

+ (void)fetchUpNext:(unint64_t)a3 withCompletion:(id)a4
{
  v5 = a4;
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
  v8 = v5;
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
    v19 = a3;
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
    v15[1] = a3;
    v13 = v9;
    [v12 fetchConfigurationWithCompletionHandler:v14];
  }
}

+ (void)_completeUpNextItemCollectionResponse:(id)a3 widgetSize:(unint64_t)a4 expirationDate:(id)a5 resourceType:(int64_t)a6 withCompletion:(id)a7
{
  v12 = a5;
  v13 = a7;
  v14 = a3;
  v15 = [v14 items];
  v16 = [v15 mutableCopy];

  v17 = [v14 items];

  if (!v17)
  {
    v18 = objc_alloc_init(NSMutableArray);

    v16 = v18;
  }

  v19 = sub_100002C80();
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (a6 == 1)
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
    v35 = a1;
    v22 = &v32;
    v23 = &v33;
    v32 = v16;
    v33 = v12;
    v36 = a4;
    v34 = v13;
    v24 = v13;
    v25 = v12;
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
    v30[1] = a1;
    v30[2] = a4;
    v22 = &v29;
    v23 = v30;
    v29 = v12;
    v30[0] = v13;
    v26 = v13;
    v27 = v12;
    [a1 _processContinuationsDelta:v16 withCompletion:v28];
  }
}

+ (id)_contentGroupWithContinuations:(id)a3 widgetSize:(unint64_t)a4 expiration:(id)a5
{
  v8 = a5;
  v9 = [a1 _contentItemsWithContinuations:a3 widgetSize:a4];
  if ([v9 count])
  {
    v10 = objc_alloc_init(TVUNContentItemGroup);
    v11 = +[NSBundle mainBundle];
    v12 = [v11 localizedStringForKey:@"CONTINUE_WATCHING" value:&stru_10011D978 table:0];
    [(TVUNContentItemGroup *)v10 setTitle:v12];

    [(TVUNContentItemGroup *)v10 setItems:v9];
    [(TVUNContentItemGroup *)v10 setExpirationDate:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (void)_processContinuationsDelta:(id)a3 withCompletion:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  v15 = v5;
  v16 = v6;
  v10 = v6;
  v11 = v5;
  v12 = v8;
  [v9 read:v13];
}

+ (id)_contentItemsWithContinuations:(id)a3 widgetSize:(unint64_t)a4
{
  v6 = a3;
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
  v16 = a1;
  v17 = a4;
  v13 = v8;
  v15 = v18;
  v9 = v7;
  v14 = v9;
  [v6 enumerateObjectsUsingBlock:v12];
  v10 = [v9 copy];

  _Block_object_dispose(v18, 8);

  return v10;
}

+ (id)_contentItemWithContinuation:(id)a3 mediaItem:(id)a4 widgetSize:(unint64_t)a5 itemPosition:(int)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v9 movieOrShowContent];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v9;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = [v11 canonicalID];

  if (!v16)
  {
    v18 = sub_100002C80();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_1000D1350(v9, v18);
    }

    goto LABEL_21;
  }

  if (v13)
  {
    v17 = [v13 tvun_punchoutURL:0];
  }

  else
  {
    if (!v15)
    {
      goto LABEL_19;
    }

    v17 = [v15 tvun_defaultActionURL];
  }

  v19 = v17;
  if (!v17)
  {
LABEL_19:
    v18 = sub_100002C80();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_1000D12C4(v9, v18);
    }

LABEL_21:
    v28 = 0;
    goto LABEL_73;
  }

  v84 = v10;
  v87 = [v11 canonicalID];
  v88 = [v9 localizedContext];
  v90 = [v11 title];
  v20 = [v11 genres];
  v21 = [v20 firstObject];
  v22 = [v21 name];

  v89 = [v9 tvun_contextString];
  v86 = +[TVUNUpNextWidgetDataSource cropCodeForContentType:](TVUNUpNextWidgetDataSource, "cropCodeForContentType:", [v11 contentType]);
  if ([v9 contextEnum] == 1)
  {
    if (v13)
    {
      v23 = [v13 playable];
      v24 = [v23 playEvent];

      if (v24)
      {
        [v24 elapsedTime];
        v26 = v25;
        [v24 duration];
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
    if ([v9 contextEnum] == 12 || objc_msgSend(v9, "contextEnum") == 13)
    {
      v85 = 0;
      v80 = 0;
      v29 = 1;
      v30 = 29;
      goto LABEL_31;
    }

    v85 = 0;
    v29 = 0;
    v80 = [v9 contextEnum] == 2;
  }

  v30 = 28;
LABEL_31:
  objc_opt_class();
  v83 = v15;
  v82 = a6;
  v81 = a5;
  v79 = v29;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v9 isRental])
      {
        v78 = v19;
        v41 = [v84 tvun_expirationDate];
        v42 = [v84 tvun_expirationString];
        v31 = v42;
        if (v42)
        {
          v31 = v42;

          v43 = v88;
          v44 = 0;
          v89 = v43;
          v22 = v31;
        }

        else
        {
          v44 = 0;
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
        v31 = v11;
        v52 = [v31 shortTitle];

        v53 = [v31 leagueName];

        v44 = [v31 leagueShortName];
        if (v29)
        {
          v41 = 0;
          v22 = v53;
          v90 = v52;
        }

        else
        {
          v90 = v52;
          v69 = [v13 playable];

          if (v69)
          {
            v70 = [v13 playable];
            v71 = [v70 airingType];

            v41 = 0;
            v72 = 30;
            if (v71 == 1)
            {
              v72 = 28;
            }

            v22 = v53;
            v30 = v72;
            goto LABEL_54;
          }

          v41 = 0;
          v22 = v53;
        }

        goto LABEL_53;
      }
    }

    v41 = 0;
    v44 = 0;
    goto LABEL_55;
  }

  v78 = v19;
  v31 = v11;
  v32 = [v31 showTitle];
  v76 = v32;
  v77 = v30;
  if (v32)
  {
    v33 = v32;

    v90 = v33;
  }

  v34 = [v31 seasonNumber];
  v35 = [v31 episodeNumber];
  v75 = v35;
  if (v34 && v35)
  {
    v36 = v35;
    v37 = +[NSBundle mainBundle];
    v38 = [v37 localizedStringForKey:@"EPISODE_SEASON_EPISODE_FORMAT" value:&stru_10011D978 table:0];
    v74 = [NSString localizedStringWithFormat:v38, v34, v36];

    v39 = +[NSBundle mainBundle];
    v40 = [v39 localizedStringForKey:@"EPISODE_SEASON_EPISODE_FORMAT_SHORT" value:&stru_10011D978 table:0];
    [NSString localizedStringWithFormat:v40, v34, v36];
  }

  else
  {
    if (!v34)
    {
      v51 = [v31 title];
      v44 = 0;
      v47 = v22;
      goto LABEL_51;
    }

    v45 = +[NSBundle mainBundle];
    v46 = [v45 localizedStringForKey:@"EPISODE_SEASON_FORMAT" value:&stru_10011D978 table:0];
    v74 = [NSString localizedStringWithFormat:v46, v34];

    v39 = +[NSBundle mainBundle];
    v40 = [v39 localizedStringForKey:@"EPISODE_SEASON_FORMAT_SHORT" value:&stru_10011D978 table:0];
    [NSString localizedStringWithFormat:v40, v34, v73];
  }
  v44 = ;

  if (v44)
  {
    v47 = +[NSBundle mainBundle];
    v48 = [v47 localizedStringForKey:@"SUBTITLE_WITH_CONTEXT_FORMAT" value:&stru_10011D978 table:0];
    v49 = [v9 tvun_contextString];
    v50 = [NSString localizedStringWithFormat:v48, v49, v44];

    v89 = v50;
    v51 = v74;
LABEL_51:

    goto LABEL_52;
  }

  v51 = v74;
LABEL_52:

  v41 = 0;
  v22 = v51;
LABEL_53:
  v30 = v77;
LABEL_54:

  v19 = v78;
LABEL_55:
  if (v82)
  {
    v54 = 0;
  }

  else
  {
    v54 = (v81 & 0xFFFFFFFFFFFFFFFELL) == 2;
  }

  if (v54)
  {
    v30 = 27;
  }

  v55 = [v11 images];
  v56 = [v55 artworkVariantOfType:v30];

  if (v56)
  {
    goto LABEL_65;
  }

  v57 = v22;
  if (v30 != 28)
  {
    v58 = sub_100002C80();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = [v11 title];
      *buf = 138412290;
      v92 = v59;
      _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Artwork is nil for %@. Fall back to ShelfItemImage", buf, 0xCu);
    }

    v60 = [v11 images];
    v56 = [v60 artworkVariantOfType:28];

LABEL_65:
    v57 = v22;
  }

  v61 = objc_alloc_init(TVUNContentItem);
  [(TVUNContentItem *)v61 setIdentifier:v87];
  [(TVUNContentItem *)v61 setTitle:v90];
  [(TVUNContentItem *)v61 setSubtitle:v57];
  [(TVUNContentItem *)v61 setSubtitleShort:v44];
  [(TVUNContentItem *)v61 setSubtitleComposed:v89];
  [(TVUNContentItem *)v61 setContext:v88];
  [(TVUNContentItem *)v61 setPlaybackPercentage:v85];
  [(TVUNContentItem *)v61 setRentalExpirationDate:v41];
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
    v57 = v22;
  }

  [(TVUNContentItem *)v61 setActionURL:v19];
  if (v56)
  {
    v64 = [v56 artworkURLString];
    [(TVUNContentItem *)v61 setImageURLTemplate:v64];

    v57 = v22;
    [v56 artworkSize];
    v66 = v65;
    [v56 artworkSize];
    [(TVUNContentItem *)v61 setImageAspectRatio:v66 / v67];
  }

  v18 = v61;

  v28 = v18;
  v15 = v83;
  v10 = v84;
LABEL_73:

  return v28;
}

+ (id)cropCodeForContentType:(unint64_t)a3
{
  if (a3 == 5)
  {
    return @"sh";
  }

  else
  {
    return 0;
  }
}

@end