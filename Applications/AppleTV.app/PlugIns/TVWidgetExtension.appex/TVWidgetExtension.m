id sub_100002C80()
{
  if (qword_1001283A0 != -1)
  {
    sub_1000D1274();
  }

  v1 = qword_100128398;

  return v1;
}

void sub_100002CC4(id a1)
{
  qword_100128398 = os_log_create("com.apple.tv.TVUpNext", "Default");

  _objc_release_x1();
}

id sub_100002D08()
{
  if (qword_1001283B0 != -1)
  {
    sub_1000D1288();
  }

  v1 = qword_1001283A8;

  return v1;
}

void sub_100002D4C(id a1)
{
  qword_1001283A8 = os_log_create("com.apple.tv.SportsWidget", "Default");

  _objc_release_x1();
}

void sub_100002E2C(id a1)
{
  v15[0] = @"NextEpisode";
  v14 = +[NSBundle mainBundle];
  v13 = [v14 localizedStringForKey:@"TV.UpNext.NextEpisode" value:&stru_10011D978 table:0];
  v16[0] = v13;
  v15[1] = @"NextChapter";
  v1 = +[NSBundle mainBundle];
  v2 = [v1 localizedStringForKey:@"TV.UpNext.NextChapter" value:&stru_10011D978 table:0];
  v16[1] = v2;
  v15[2] = @"NextSeason";
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"TV.UpNext.NextSeason" value:&stru_10011D978 table:0];
  v16[2] = v4;
  v15[3] = @"NewEpisode";
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"TV.UpNext.NewEpisode" value:&stru_10011D978 table:0];
  v16[3] = v6;
  v15[4] = @"NewChapter";
  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"TV.UpNext.NewChapter" value:&stru_10011D978 table:0];
  v16[4] = v8;
  v15[5] = @"NewSeason";
  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"TV.UpNext.NewSeason" value:&stru_10011D978 table:0];
  v16[5] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:6];
  v12 = qword_1001283B8;
  qword_1001283B8 = v11;
}

void sub_1000035E8(id a1)
{
  v1 = sub_100002C80();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Registering widget", v2, 2u);
  }

  notify_post("com.apple.tv.TVWidgetExtension.Register");
}

void sub_10000365C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002C80();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = +[NSDate date];
    [v8 timeIntervalSinceDate:*(a1 + 32)];
    v12 = 134217984;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - End FetchUpNextWidget - elapsed time: %.5f", &v12, 0xCu);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v5, v6);
  }

  else
  {
    v11 = sub_100002C80();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - No completion block provided", &v12, 2u);
    }
  }
}

void sub_1000037B0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2 && !v5)
  {
    v7 = [a2 data];
    v8 = [NSJSONSerialization JSONObjectWithData:v7 options:0 error:0];
    v9 = [WLKServerConfigurationResponse alloc];
    v10 = [v8 vui_dictionaryForKey:@"data"];
    v11 = [v9 initWithServerResponseDictionary:v10 expirationDate:0 environmentHash:0];

    v12 = [v11 features];

    if (v12)
    {
      v13 = WLKServerConfigurationResponseKeyFeaturesUNW;
      v14 = [v11 features];
      v15 = [v14 wlk_BOOLForKey:v13 defaultValue:1];

      if ((v15 & 1) == 0)
      {
        v19 = sub_100002C80();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v25 = v13;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Bailing early. UTS has disabled the feature %@", buf, 0xCu);
        }

        (*(*(a1 + 32) + 16))();
        goto LABEL_13;
      }
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100003A70;
    v20[3] = &unk_1001179A0;
    v21 = *(a1 + 40);
    v16 = *(a1 + 32);
    v17 = *(a1 + 48);
    v22 = v16;
    v23 = v17;
    [_TtC17TVWidgetExtension29WidgetsURLRequestFactoryProxy createRoute:@"shelves/up-next-widget" completion:v20];

    v13 = v21;
LABEL_13:

    goto LABEL_14;
  }

  v18 = sub_100002C80();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - fetchUpNext, failed to fetch configuration with error:%@", buf, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
LABEL_14:
}

void sub_100003A70(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 mutableCopy];
  if (+[WLKUpNextWidgetCacheManager consumePendingInvalidation])
  {
    [v6 setCachePolicy:1];
  }

  v7 = [v6 copy];
  if (!a2 || v5)
  {
    v10 = sub_100002C80();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - buildPlayUrlForIntent - failed to construct url request with error:%@.", buf, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003C1C;
    v11[3] = &unk_100117978;
    v12 = *(a1 + 40);
    v8 = *(a1 + 32);
    v9 = *(a1 + 48);
    v13 = v8;
    v14 = v9;
    [_TtC17TVWidgetExtension24TVUTSNetworkManagerProxy executeRequest:v7 completion:v11];
  }
}

void sub_100003C1C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = sub_100002C80();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - fetchUpNext - execute request failed with error:%@.", buf, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  else
  {
    v8 = [v5 data];
    v26 = 0;
    v9 = [NSJSONSerialization JSONObjectWithData:v8 options:0 error:&v26];
    v10 = v26;

    if (v10)
    {
      v11 = sub_100002C80();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - fetchUpNext - failed to parse response with error:%@.", buf, 0xCu);
      }

      (*(a1[5] + 16))();
    }

    else
    {
      v13 = [v9 wlk_dictionaryForKey:@"data"];
      v14 = [WLKChannelsResponse parseChannelsFromPayload:v13];
      v24 = v14;
      if (v14)
      {
        v27 = WLKModelContextKeyChannels;
        v28 = v14;
        v15 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      }

      else
      {
        v15 = 0;
      }

      v23 = v15;
      v16 = [[WLKUpNextItemCollection alloc] initWithDictionary:v13 context:v15];
      v17 = [v5 taskMetrics];
      v18 = [v17 transactionMetrics];
      v19 = [v18 lastObject];

      objc_opt_class();
      v25 = v13;
      if (objc_opt_isKindOfClass())
      {
        v20 = [v19 resourceFetchType];
      }

      else
      {
        v20 = 0;
      }

      v21 = +[NSDate date];
      v22 = [v21 dateByAddingTimeInterval:86400.0];

      [TVUNUpNextWidgetDataSource _completeUpNextItemCollectionResponse:v16 widgetSize:a1[6] expirationDate:v22 resourceType:v20 withCompletion:a1[4]];
    }
  }
}

void sub_100003F40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    (*(*(a1 + 32) + 16))();
    goto LABEL_15;
  }

  v7 = [v5 features];

  if (!v7)
  {
    goto LABEL_5;
  }

  v8 = WLKServerConfigurationResponseKeyFeaturesUNW;
  v9 = [v5 features];
  v10 = [v9 wlk_BOOLForKey:v8 defaultValue:1];

  if (v10)
  {

LABEL_5:
    if (+[WLKUpNextWidgetCacheManager consumePendingInvalidation])
    {
      v11 = sub_100002C80();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Ignoring cache", buf, 2u);
      }

      v12 = 9;
    }

    else
    {
      v12 = 1;
    }

    v13 = [[WLKUpNextWidgetRequestOperation alloc] initWithQueryParameters:0 options:v12];
    objc_initWeak(buf, v13);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100004204;
    v18[3] = &unk_1001179C8;
    objc_copyWeak(v20, buf);
    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v19 = v14;
    v20[1] = v15;
    [v13 setCompletionBlock:v18];
    v16 = +[NSOperationQueue wlkDefaultQueue];
    [v16 addOperation:v13];

    objc_destroyWeak(v20);
    objc_destroyWeak(buf);

    goto LABEL_15;
  }

  v17 = sub_100002C80();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Bailing early. UTS has disabled the feature %@", buf, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
LABEL_15:
}

void sub_1000041DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004204(uint64_t a1)
{
  v2 = sub_100002C80();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Network request complete", v7, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained error];

  if (v4)
  {
    v5 = [WeakRetained error];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v5 = [WeakRetained itemCollection];
    v6 = [WeakRetained originalExpirationDate];
    +[TVUNUpNextWidgetDataSource _completeUpNextItemCollectionResponse:widgetSize:expirationDate:resourceType:withCompletion:](TVUNUpNextWidgetDataSource, "_completeUpNextItemCollectionResponse:widgetSize:expirationDate:resourceType:withCompletion:", v5, *(a1 + 48), v6, [WeakRetained resourceFetchType], *(a1 + 32));
  }
}

void sub_100004574(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = sub_100002C80();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v6 = [v4 description];
    }

    else
    {
      v6 = &stru_10011D978;
    }

    v11 = 138412290;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Done deleting delta (fresh load) %@", &v11, 0xCu);
    if (v4)
    {
    }
  }

  v7 = [*(a1 + 56) _contentGroupWithContinuations:*(a1 + 32) widgetSize:*(a1 + 64) expiration:*(a1 + 40)];
  v8 = sub_100002C80();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 items];
    v10 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 count]);
    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - End processing up next. Returning items:[%@]", &v11, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100004718(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 48) _contentGroupWithContinuations:a2 widgetSize:*(a1 + 56) expiration:*(a1 + 32)];
  v4 = sub_100002C80();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [v3 items];
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 count]);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - End processing up next. Returning items:[%@]", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100004A74(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_100002C80();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = +[NSDate date];
    [v8 timeIntervalSinceDate:a1[4]];
    *buf = 138412546;
    v62 = v5;
    v63 = 2048;
    v64 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Done fetching delta %@ elapsed:%.5f", buf, 0x16u);
  }

  if (v6)
  {
    v10 = sub_100002C80();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v62 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Continuing after Up Next delta error: %@", buf, 0xCu);
    }
  }

  v11 = sub_100002C80();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v12)
    {
      *buf = 138412290;
      v62 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Parsing Up Next delta: %@", buf, 0xCu);
    }

    v44 = v6;
    if (_os_feature_enabled_impl())
    {
      v58 = 0;
      v11 = [_TtC17TVWidgetExtension30TVRestrictionsUtilityProxyObjC getMaximumEffectiveTVShowRankingAndReturnError:&v58];
      v13 = v58;
      if (v13)
      {
        v14 = sub_100002C80();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v62 = v13;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - getMaximumEffectiveTVShowRankingAndReturnError failed with error %@", buf, 0xCu);
        }
      }

      v57 = 0;
      v15 = [_TtC17TVWidgetExtension30TVRestrictionsUtilityProxyObjC getMaximumEffectiveMoviesRankingAndReturnError:&v57];
      v16 = v57;
      if (v16)
      {
        v17 = sub_100002C80();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v62 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - getMaximumEffectiveMoviesRankingAndReturnError failed with error %@", buf, 0xCu);
        }
      }

      v18 = v15;
    }

    else
    {
      v11 = WLKRestrictionsMaximumEffectiveTVShowRanking();
      v18 = WLKRestrictionsMaximumEffectiveMovieRanking();
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v45 = v5;
    v19 = [v5 additions];
    v20 = &_s7SwiftUI5GroupVMa_ptr;
    v48 = [v19 countByEnumeratingWithState:&v53 objects:v67 count:16];
    if (v48)
    {
      v21 = *v54;
      v47 = a1;
      v46 = *v54;
      do
      {
        for (i = 0; i != v48; i = i + 1)
        {
          if (*v54 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v53 + 1) + 8 * i);
          v24 = [v23 movieOrShowContent];
          v25 = [v24 contentRating];

          if (v11 && [v25 systemType] == 2)
          {
            v26 = [v25 ratingValue];
            v27 = v11;
          }

          else
          {
            if (!v18 || [v25 systemType] != 1)
            {
LABEL_38:
              [v20[311] add:v23 toCollection:a1[5]];
              goto LABEL_39;
            }

            v26 = [v25 ratingValue];
            v27 = v18;
          }

          if (v26 <= [v27 unsignedIntValue])
          {
            goto LABEL_38;
          }

          v28 = sub_100002C80();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = [v25 name];
            v30 = v19;
            v31 = v18;
            v32 = v11;
            v33 = [v25 ratingValue];
            v34 = [v23 movieOrShowContent];
            v35 = [v34 canonicalID];
            *buf = 138412802;
            v62 = v29;
            v63 = 2048;
            v64 = v33;
            v11 = v32;
            v18 = v31;
            v19 = v30;
            v21 = v46;
            v65 = 2112;
            v66 = v35;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Up Next delta content not allowed by current restrictions: %@-%lu, %@", buf, 0x20u);

            v20 = &_s7SwiftUI5GroupVMa_ptr;
            a1 = v47;
          }

LABEL_39:
        }

        v48 = [v19 countByEnumeratingWithState:&v53 objects:v67 count:16];
      }

      while (v48);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v5 = v45;
    v36 = [v45 removals];
    v37 = [v36 countByEnumeratingWithState:&v49 objects:v60 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v50;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v50 != v39)
          {
            objc_enumerationMutation(v36);
          }

          [v20[311] remove:*(*(&v49 + 1) + 8 * j) fromCollection:a1[5]];
        }

        v38 = [v36 countByEnumeratingWithState:&v49 objects:v60 count:16];
      }

      while (v38);
    }

    v41 = a1[5];
    v42 = [NSSortDescriptor sortDescriptorWithKey:@"timestamp" ascending:0];
    v59 = v42;
    v43 = [NSArray arrayWithObjects:&v59 count:1];
    [v41 sortUsingDescriptors:v43];

    v6 = v44;
  }

  else if (v12)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Up Next delta is nil", buf, 2u);
  }

  (*(a1[6] + 16))();
}

void sub_1000051EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100005204(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = 0;
  if (![v3 isRental])
  {
    goto LABEL_16;
  }

  if (v5)
  {
    v9 = [v5 playable];
    v8 = [v9 externalID];
  }

  else if (v7)
  {
    v8 = [v7 adamID];
  }

  else
  {
    v8 = 0;
  }

  if ([v8 length])
  {
    v10 = +[TVUNRentalUtilities validRentalWithIdentifier:inRentals:](TVUNRentalUtilities, "validRentalWithIdentifier:inRentals:", [v8 longLongValue], *(a1 + 32));
    if (v10)
    {
      v11 = v10;

      v8 = v11;
LABEL_16:
      v12 = [*(a1 + 56) _contentItemWithContinuation:v3 mediaItem:v8 widgetSize:*(a1 + 64) itemPosition:*(*(*(a1 + 48) + 8) + 24)];
      if (v12)
      {
        [*(a1 + 40) addObject:v12];
      }

      else
      {
        v13 = sub_100002C80();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = 138412290;
          v15 = v3;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - No content item returned for %@", &v14, 0xCu);
        }
      }

      ++*(*(*(a1 + 48) + 8) + 24);
      goto LABEL_24;
    }
  }

  v12 = sub_100002C80();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "TVUNUpNextWidgetDataSource - Skipping Up Next rental. Lacks valid DB item %@ - %@", &v14, 0x16u);
  }

LABEL_24:
}

Swift::Int sub_100005E64()
{
  v1 = *v0;
  sub_1000D3A4C();
  sub_1000D3A5C(v1);
  return sub_1000D3A6C();
}

Swift::Int sub_100005ED8()
{
  v1 = *v0;
  sub_1000D3A4C();
  sub_1000D3A5C(v1);
  return sub_1000D3A6C();
}

uint64_t sub_100005F1C()
{
  v0 = sub_1000D1DBC();
  sub_1000065AC(v0, qword_10013BF68);
  v1 = sub_100006610(v0, qword_10013BF68);
  v2 = enum case for DynamicTypeSize.large(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_100005FA4(__int128 *a1)
{
  v2 = *a1;
  if (sub_1000D0D84(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100006018(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (sub_1000D0D84(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_100006084()
{
  sub_100006334(&qword_100122240);
  sub_10000637C(&qword_100122248);
  sub_1000063C4();
  swift_getOpaqueTypeConformance2();
  return sub_1000D226C();
}

BOOL sub_100006170(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1000061A0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1000061CC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000062CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100006A00(a1);

  *a2 = v3;
  return result;
}

void *sub_100006318@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100006334(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000637C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1000063C4()
{
  result = qword_100122250;
  if (!qword_100122250)
  {
    sub_10000637C(&qword_100122248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122250);
  }

  return result;
}

uint64_t sub_100006438(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100006458(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

__n128 sub_1000064A8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000064B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000064FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000654C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000656C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t *sub_1000065AC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100006610(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

__n128 sub_100006648(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100006668(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100006688(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SportsWidgetClockViewLayoutStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SportsWidgetClockViewLayoutStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100006838()
{
  result = qword_100122280;
  if (!qword_100122280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122280);
  }

  return result;
}

void sub_1000068A0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_100006954(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Unit(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100006A00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100006A58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100006334(&qword_1001222B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = type metadata accessor for SportsWidgetContentViewLayout();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = type metadata accessor for SportsWidgetContentViewModel(0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_100006BE8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_100006334(&qword_1001222B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5] + 8) = -a2;
    return result;
  }

  v13 = type metadata accessor for SportsWidgetContentViewLayout();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = type metadata accessor for SportsWidgetContentViewModel(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for SportsWidgetContentView()
{
  result = qword_100122310;
  if (!qword_100122310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100006DB4()
{
  sub_100006E68();
  if (v0 <= 0x3F)
  {
    sub_100006EC0();
    if (v1 <= 0x3F)
    {
      type metadata accessor for SportsWidgetContentViewLayout();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SportsWidgetContentViewModel(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100006E68()
{
  if (!qword_100122320)
  {
    sub_1000D1DBC();
    v0 = sub_1000D1BDC();
    if (!v1)
    {
      atomic_store(v0, &qword_100122320);
    }
  }
}

void sub_100006EC0()
{
  if (!qword_100122328)
  {
    v0 = sub_1000D1BDC();
    if (!v1)
    {
      atomic_store(v0, &qword_100122328);
    }
  }
}

BOOL sub_100006F2C()
{
  v1 = (v0 + *(type metadata accessor for SportsWidgetContentView() + 28));
  v2 = v1[9];
  v3 = v1[11];
  if (v3)
  {
    if ((v3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v3) & 0xF;
    }

    else
    {
      v4 = v1[10] & 0xFFFFFFFFFFFFLL;
    }

    if (!(v4 | v2))
    {
      return 0;
    }
  }

  else if (!v2)
  {
    return 0;
  }

  v6 = v1[24];
  v7 = v1[26];
  if (!v7)
  {
    return v6 != 0;
  }

  v8 = v1[25] & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v7) & 0xF;
  }

  return v8 || v6 != 0;
}

uint64_t sub_100006FC0()
{
  v0 = sub_1000D1DBC();
  v1 = *(v0 - 8);
  v2 = (__chkstk_darwin)();
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  v7 = [objc_opt_self() mainScreen];
  [v7 bounds];
  v9 = v8;

  sub_1000B2124(v6);
  if (v9 <= 291.0)
  {
    (*(v1 + 104))(v4, enum case for DynamicTypeSize.xLarge(_:), v0);
    sub_10000FE34(&qword_100122460, &type metadata accessor for DynamicTypeSize);
    v11 = sub_1000D353C();
    v12 = *(v1 + 8);
    v12(v4, v0);
    v12(v6, v0);
    v10 = v11 ^ 1;
  }

  else
  {
    v10 = sub_1000D1D9C();
    (*(v1 + 8))(v6, v0);
  }

  return v10 & 1;
}

uint64_t sub_1000071B8@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = sub_100006334(&qword_100122360);
  __chkstk_darwin(v2 - 8);
  v4 = &v55 - v3;
  v57 = sub_100006334(&qword_100122368);
  __chkstk_darwin(v57);
  v6 = &v55 - v5;
  v62 = sub_100006334(&qword_100122370);
  __chkstk_darwin(v62);
  v58 = &v55 - v7;
  v60 = sub_100006334(&qword_100122378);
  __chkstk_darwin(v60);
  v9 = &v55 - v8;
  v59 = sub_100006334(&qword_100122380);
  __chkstk_darwin(v59);
  v11 = &v55 - v10;
  v64 = sub_100006334(&qword_100122388);
  __chkstk_darwin(v64);
  v13 = &v55 - v12;
  v61 = sub_100006334(&qword_100122390);
  v56 = *(v61 - 8);
  __chkstk_darwin(v61);
  v15 = &v55 - v14;
  v16 = sub_100006FC0();
  v17 = (v1 + *(type metadata accessor for SportsWidgetContentView() + 24));
  v18 = *v17;
  v19 = v17[1];
  if (v16)
  {
    v20 = v64;
    v58 = v9;
    *v13 = v19;
    *(v13 + 1) = v18;
    v13[16] = 0;
    v21 = sub_100006334(&qword_1001223C8);
    sub_100008718(v1, &v13[*(v21 + 44)]);
    v22 = enum case for DynamicTypeSize.accessibility3(_:);
    v23 = sub_1000D1DBC();
    (*(*(v23 - 8) + 104))(v11, v22, v23);
    sub_10000FE34(&qword_1001223D0, &type metadata accessor for DynamicTypeSize);
    result = sub_1000D357C();
    if (result)
    {
      v25 = sub_10000FC38(&qword_1001223A0, &qword_100122388);
      v26 = sub_10000FC38(&qword_1001223A8, &qword_100122380);
      v27 = v20;
      v28 = v59;
      sub_1000D270C();
      sub_10000F938(v11, &qword_100122380);
      sub_10000F938(v13, &qword_100122388);
      v29 = v56;
      v30 = v61;
      (*(v56 + 16))(v58, v15, v61);
      swift_storeEnumTagMultiPayload();
      v65 = v27;
      v66 = v28;
      v67 = v25;
      v68 = v26;
      swift_getOpaqueTypeConformance2();
      sub_10000ECE8();
      sub_1000D229C();
      return (*(v29 + 8))(v15, v30);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *v4 = v19;
    *(v4 + 1) = v18;
    v4[16] = 0;
    v31 = sub_100006334(&qword_100122398);
    sub_1000078DC(v1, &v4[*(v31 + 44)]);
    v32 = sub_1000D236C();
    type metadata accessor for SportsWidgetContentViewModel(0);
    sub_1000D1B9C();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    sub_10000F998(v4, v6, &qword_100122360);
    v41 = &v6[*(v57 + 36)];
    *v41 = v32;
    *(v41 + 1) = v34;
    *(v41 + 2) = v36;
    *(v41 + 3) = v38;
    *(v41 + 4) = v40;
    v41[40] = 0;
    v42 = sub_1000D237C();
    sub_1000D1B9C();
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v51 = v58;
    sub_10000F998(v6, v58, &qword_100122368);
    v52 = v51 + *(v62 + 36);
    *v52 = v42;
    *(v52 + 8) = v44;
    *(v52 + 16) = v46;
    *(v52 + 24) = v48;
    *(v52 + 32) = v50;
    *(v52 + 40) = 0;
    sub_10000F8D0(v51, v9, &qword_100122370);
    swift_storeEnumTagMultiPayload();
    v53 = sub_10000FC38(&qword_1001223A0, &qword_100122388);
    v54 = sub_10000FC38(&qword_1001223A8, &qword_100122380);
    v65 = v64;
    v66 = v59;
    v67 = v53;
    v68 = v54;
    swift_getOpaqueTypeConformance2();
    sub_10000ECE8();
    sub_1000D229C();
    return sub_10000F938(v51, &qword_100122370);
  }

  return result;
}

uint64_t sub_1000078DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_100006334(&qword_1001223D8);
  __chkstk_darwin(v3 - 8);
  v59 = &v59 - v4;
  v68 = sub_100006334(&qword_100122608);
  v65 = *(v68 - 8);
  v5 = __chkstk_darwin(v68);
  v61 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v60 = &v59 - v7;
  v8 = sub_100006334(&qword_100122610);
  v9 = __chkstk_darwin(v8 - 8);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v69 = &v59 - v11;
  v12 = sub_1000D2AAC();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100006334(&qword_1001223E8);
  v17 = __chkstk_darwin(v16 - 8);
  v64 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v59 - v19;
  v21 = sub_100006334(&qword_100122618);
  __chkstk_darwin(v21 - 8);
  v23 = &v59 - v22;
  v24 = sub_100006334(&qword_100122620);
  v25 = v24 - 8;
  v26 = __chkstk_darwin(v24);
  v63 = &v59 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v59 - v29;
  __chkstk_darwin(v28);
  v32 = &v59 - v31;
  sub_1000080BC(v23);
  sub_1000D2B5C();
  v33 = 1;
  sub_1000D1E2C();
  sub_10000F998(v23, v30, &qword_100122618);
  v34 = &v30[*(v25 + 44)];
  v35 = v75;
  *(v34 + 4) = v74;
  *(v34 + 5) = v35;
  *(v34 + 6) = v76;
  v36 = v71;
  *v34 = v70;
  *(v34 + 1) = v36;
  v37 = v73;
  *(v34 + 2) = v72;
  *(v34 + 3) = v37;
  v62 = v32;
  sub_10000F998(v30, v32, &qword_100122620);
  v38 = type metadata accessor for SportsWidgetContentView();
  if (sub_1000B23B0(*(a1 + *(v38 + 20)), *(a1 + *(v38 + 20) + 8)))
  {
    sub_1000D2A9C();
    (*(v13 + 32))(v20, v15, v12);
    v33 = 0;
  }

  v39 = 1;
  (*(v13 + 56))(v20, v33, 1, v12);
  v40 = a1 + *(v38 + 28);
  if (*(v40 + *(type metadata accessor for SportsWidgetContentViewModel(0) + 48)) == 1)
  {
    v41 = v59;
    sub_1000083B0(v59);
    sub_1000D2B5C();
    sub_1000D1E2C();
    v42 = v41;
    v43 = v61;
    sub_10000F998(v42, v61, &qword_1001223D8);
    v44 = (v43 + *(v68 + 36));
    v45 = v82;
    v44[4] = v81;
    v44[5] = v45;
    v44[6] = v83;
    v46 = v78;
    *v44 = v77;
    v44[1] = v46;
    v47 = v80;
    v44[2] = v79;
    v44[3] = v47;
    v48 = v43;
    v49 = v60;
    sub_10000F998(v48, v60, &qword_100122608);
    sub_10000F998(v49, v69, &qword_100122608);
    v39 = 0;
  }

  v50 = v69;
  (*(v65 + 56))(v69, v39, 1, v68);
  v51 = v62;
  v52 = v63;
  sub_10000F8D0(v62, v63, &qword_100122620);
  v53 = v20;
  v54 = v64;
  sub_10000F8D0(v20, v64, &qword_1001223E8);
  v55 = v66;
  sub_10000F8D0(v50, v66, &qword_100122610);
  v56 = v67;
  sub_10000F8D0(v52, v67, &qword_100122620);
  v57 = sub_100006334(&qword_100122628);
  sub_10000F8D0(v54, v56 + *(v57 + 48), &qword_1001223E8);
  sub_10000F8D0(v55, v56 + *(v57 + 64), &qword_100122610);
  sub_10000F938(v50, &qword_100122610);
  sub_10000F938(v53, &qword_1001223E8);
  sub_10000F938(v51, &qword_100122620);
  sub_10000F938(v55, &qword_100122610);
  sub_10000F938(v54, &qword_1001223E8);
  return sub_10000F938(v52, &qword_100122620);
}

uint64_t sub_1000080BC@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_100006334(&qword_100122630);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_100006334(&qword_100122638);
  __chkstk_darwin(v5);
  v7 = &v23 - v6;
  v8 = sub_100006334(&qword_100122618);
  __chkstk_darwin(v8);
  v10 = &v23 - v9;
  *v4 = sub_1000D210C();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v11 = sub_100006334(&qword_100122640);
  sub_10000A724(v1, &v4[*(v11 + 44)]);
  v12 = type metadata accessor for SportsWidgetContentView();
  sub_1000D2B5C();
  sub_1000D1E2C();
  sub_10000F998(v4, v7, &qword_100122630);
  v13 = &v7[*(v5 + 36)];
  v14 = v30;
  *(v13 + 4) = v29;
  *(v13 + 5) = v14;
  *(v13 + 6) = v31;
  v15 = v26;
  *v13 = v25;
  *(v13 + 1) = v15;
  v16 = v28;
  *(v13 + 2) = v27;
  *(v13 + 3) = v16;
  v17 = v1 + *(v12 + 28);
  v18 = (v17 + *(type metadata accessor for SportsWidgetContentViewModel(0) + 60));
  v19 = *v18;
  v20 = v18[1];
  sub_10000F998(v7, v10, &qword_100122638);
  v21 = &v10[*(v8 + 36)];
  *v21 = v19;
  *(v21 + 1) = v20;
  sub_10000F998(v10, v24, &qword_100122618);
}

uint64_t sub_1000083B0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SportsWidgetPlayByPlayView();
  __chkstk_darwin(v3);
  v5 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100006334(&qword_100122408);
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = v1 + *(type metadata accessor for SportsWidgetContentView() + 28);
  v10 = type metadata accessor for SportsWidgetContentViewModel(0);
  if (*(v9 + *(v10 + 56)) == 1)
  {
    sub_10002F270(v27);
    *&v28[7] = v27[0];
    *&v28[23] = v27[1];
    *&v28[39] = v27[2];
    *&v28[87] = v27[5];
    *&v28[71] = v27[4];
    *&v28[55] = v27[3];
    *v8 = 2;
    v11 = *&v28[48];
    *(v8 + 33) = *&v28[32];
    v12 = *v28;
    *(v8 + 17) = *&v28[16];
    *(v8 + 1) = v12;
    v13 = *&v28[64];
    v14 = *&v28[80];
    *(v8 + 12) = *&v28[95];
    *(v8 + 81) = v14;
    *(v8 + 65) = v13;
    *(v8 + 49) = v11;
    swift_storeEnumTagMultiPayload();
    sub_10000F204();
    sub_10000FE34(&qword_100122420, type metadata accessor for SportsWidgetPlayByPlayView);
    return sub_1000D229C();
  }

  else
  {
    v16 = (v9 + *(v10 + 32));
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v16 + 16);
    v20 = v16[3];
    v25 = *(v16 + 32);
    v21 = v16[5];
    v24 = *(v16 + 48);
    v26 = a1;
    v22 = *(v3 + 24);

    sub_1000B6240(v5 + v22, 34.0, 20.0);
    *v5 = swift_getKeyPath();
    sub_100006334(&qword_100122410);
    swift_storeEnumTagMultiPayload();
    v23 = v5 + *(v3 + 20);
    *v23 = v18;
    *(v23 + 1) = v17;
    v23[16] = v19;
    *(v23 + 3) = v20;
    v23[32] = v25;
    *(v23 + 5) = v21;
    v23[48] = v24;
    sub_10000F258(v5, v8, type metadata accessor for SportsWidgetPlayByPlayView);
    swift_storeEnumTagMultiPayload();
    sub_10000F204();
    sub_10000FE34(&qword_100122420, type metadata accessor for SportsWidgetPlayByPlayView);
    sub_1000D229C();
    return sub_10000F2C0(v5, type metadata accessor for SportsWidgetPlayByPlayView);
  }
}

uint64_t sub_100008718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v57 = sub_100006334(&qword_1001223D8);
  v55 = *(v57 - 8);
  __chkstk_darwin(v57);
  v50 = &v49 - v3;
  v4 = sub_100006334(&qword_1001223E0);
  v5 = __chkstk_darwin(v4 - 8);
  v54 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v49 - v7;
  v52 = sub_1000D2AAC();
  v9 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100006334(&qword_1001223E8);
  v12 = __chkstk_darwin(v11 - 8);
  v56 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v49 - v14;
  v16 = sub_100006334(&qword_1001223F0);
  v17 = v16 - 8;
  v18 = __chkstk_darwin(v16);
  v53 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v49 - v20;
  *v21 = sub_1000D21BC();
  *(v21 + 1) = 0;
  v22 = 1;
  v21[16] = 1;
  v23 = sub_100006334(&qword_1001223F8);
  sub_100008C7C(a1, &v21[*(v23 + 44)]);
  v24 = type metadata accessor for SportsWidgetContentView();
  v25 = a1 + *(v24 + 28);
  v26 = type metadata accessor for SportsWidgetContentViewModel(0);
  v27 = (v25 + *(v26 + 60));
  v29 = *v27;
  v28 = v27[1];
  v30 = &v21[*(v17 + 44)];
  *v30 = v29;
  *(v30 + 1) = v28;
  v31 = *(v24 + 20);
  v51 = a1;
  v32 = a1 + v31;
  v33 = *v32;
  LOBYTE(v24) = *(v32 + 8);

  v34 = v33;
  v35 = v52;
  v36 = v24;
  v37 = v15;
  if (sub_1000B23B0(v34, v36))
  {
    v38 = v49;
    sub_1000D2A9C();
    (*(v9 + 32))(v37, v38, v35);
    v22 = 0;
  }

  v39 = 1;
  (*(v9 + 56))(v37, v22, 1, v35);
  if (*(v25 + *(v26 + 48)) == 1)
  {
    v40 = v50;
    sub_1000083B0(v50);
    sub_10000F998(v40, v8, &qword_1001223D8);
    v39 = 0;
  }

  (*(v55 + 56))(v8, v39, 1, v57);
  v41 = v53;
  sub_10000F8D0(v21, v53, &qword_1001223F0);
  v42 = v56;
  sub_10000F8D0(v37, v56, &qword_1001223E8);
  v57 = v37;
  v43 = v54;
  sub_10000F8D0(v8, v54, &qword_1001223E0);
  v44 = v8;
  v45 = v43;
  v46 = v58;
  sub_10000F8D0(v41, v58, &qword_1001223F0);
  v47 = sub_100006334(&qword_100122400);
  sub_10000F8D0(v42, v46 + *(v47 + 48), &qword_1001223E8);
  sub_10000F8D0(v45, v46 + *(v47 + 64), &qword_1001223E0);
  sub_10000F938(v44, &qword_1001223E0);
  sub_10000F938(v57, &qword_1001223E8);
  sub_10000F938(v21, &qword_1001223F0);
  sub_10000F938(v45, &qword_1001223E0);
  sub_10000F938(v42, &qword_1001223E8);
  return sub_10000F938(v41, &qword_1001223F0);
}

uint64_t sub_100008C7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v100 = a2;
  v91 = sub_100006334(&qword_100122428);
  v90 = *(v91 - 8);
  __chkstk_darwin(v91);
  v89 = (&v75 - v3);
  v85 = sub_100006334(&qword_100122430);
  __chkstk_darwin(v85);
  v80 = (&v75 - v4);
  v82 = sub_100006334(&qword_100122438);
  __chkstk_darwin(v82);
  v84 = &v75 - v5;
  v83 = type metadata accessor for SportsWidgetClockView();
  __chkstk_darwin(v83);
  v81 = (&v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100006334(&qword_100122440);
  v8 = __chkstk_darwin(v7 - 8);
  v88 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v87 = &v75 - v10;
  v11 = sub_1000D1DBC();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v75 - v16;
  v18 = sub_100006334(&qword_100122448);
  v19 = __chkstk_darwin(v18 - 8);
  v99 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v22 = &v75 - v21;
  v23 = sub_100006334(&qword_100122450);
  v24 = __chkstk_darwin(v23 - 8);
  v98 = &v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v75 - v26;
  v86 = type metadata accessor for SportsWidgetContentView();
  v28 = *(a1 + *(v86 + 24) + 56);
  sub_1000D2B5C();
  v92 = v28;
  sub_1000D1C8C();
  v96 = v105;
  v95 = v107;
  v94 = v109;
  v93 = v110;
  v125 = 1;
  v124 = v106;
  v123 = v108;
  *v27 = sub_1000D210C();
  *(v27 + 8) = 0;
  *(v27 + 16) = 1;
  v29 = *(sub_100006334(&qword_100122458) + 44);
  v97 = v27;
  sub_100009968(a1, (v27 + v29));
  sub_1000B2124(v17);
  (*(v12 + 104))(v15, enum case for DynamicTypeSize.accessibility2(_:), v11);
  sub_10000FE34(&qword_100122460, &type metadata accessor for DynamicTypeSize);
  LOBYTE(v27) = sub_1000D353C();
  v30 = *(v12 + 8);
  v30(v15, v11);
  v30(v17, v11);
  v101 = v22;
  if (v27)
  {
    v31 = v91;
    v32 = v90;
    type metadata accessor for SportsWidgetContentViewLayout();
    sub_1000D2B5C();
    sub_1000D1C8C();
    v79 = v111;
    v78 = v113;
    v77 = v115;
    v76 = v116;
    LOBYTE(v117) = 1;
    v104 = v112;
    v103 = v114;
    v33 = a1 + *(v86 + 28);
    v34 = type metadata accessor for SportsWidgetContentViewModel(0);
    if (*(v33 + v34[9]) == 1)
    {
      v35 = v83;
      v36 = v81;
      sub_10000F258(v33 + v34[6], v81 + *(v83 + 20), type metadata accessor for SportsWidgetClock);
      v37 = sub_1000D24AC();
      v38 = [objc_opt_self() labelColor];
      v39 = sub_1000D27DC();
      v40 = sub_1000D24AC();
      *v36 = swift_getKeyPath();
      sub_100006334(&qword_100122410);
      swift_storeEnumTagMultiPayload();
      v41 = v36 + *(v35 + 24);
      *v41 = 1;
      *(v41 + 1) = v37;
      *(v41 + 2) = v39;
      *(v41 + 3) = v40;
      sub_10000F258(v36, v84, type metadata accessor for SportsWidgetClockView);
      swift_storeEnumTagMultiPayload();
      sub_10000FE34(&qword_100122488, type metadata accessor for SportsWidgetClockView);
      sub_10000FC38(&qword_100122490, &qword_100122430);
      v42 = v87;
      sub_1000D229C();
      sub_10000F2C0(v36, type metadata accessor for SportsWidgetClockView);
      v43 = 0;
      v44 = v32;
    }

    else
    {
      v46 = a1;
      v47 = *(v33 + v34[10]);
      v43 = 1;
      v44 = v32;
      v42 = v87;
      if (v47 == 1)
      {
        v48 = sub_1000D21BC();
        v49 = v80;
        *v80 = v48;
        *(v49 + 8) = 0;
        *(v49 + 16) = 1;
        v50 = sub_100006334(&qword_100122480);
        sub_10000C624(v46, v49 + *(v50 + 44));
        sub_10000F8D0(v49, v84, &qword_100122430);
        swift_storeEnumTagMultiPayload();
        sub_10000FE34(&qword_100122488, type metadata accessor for SportsWidgetClockView);
        sub_10000FC38(&qword_100122490, &qword_100122430);
        sub_1000D229C();
        sub_10000F938(v49, &qword_100122430);
        v43 = 0;
      }
    }

    v51 = sub_100006334(&qword_100122470);
    (*(*(v51 - 8) + 56))(v42, v43, 1, v51);
    v52 = v117;
    v53 = v104;
    v54 = v103;
    v55 = v88;
    sub_10000F8D0(v42, v88, &qword_100122440);
    v56 = v89;
    *v89 = 0;
    *(v56 + 8) = v52;
    *(v56 + 16) = v79;
    *(v56 + 24) = v53;
    *(v56 + 32) = v78;
    *(v56 + 40) = v54;
    v57 = v76;
    *(v56 + 48) = v77;
    *(v56 + 56) = v57;
    v58 = sub_100006334(&qword_100122478);
    sub_10000F8D0(v55, v56 + *(v58 + 48), &qword_100122440);
    sub_10000F938(v42, &qword_100122440);
    sub_10000F938(v55, &qword_100122440);
    v45 = v101;
    sub_10000F998(v56, v101, &qword_100122428);
    (*(v44 + 56))(v45, 0, 1, v31);
  }

  else
  {
    (*(v90 + 56))(v22, 1, 1, v91);
    v45 = v22;
  }

  sub_1000D2B5C();
  sub_1000D1C8C();
  v92 = v117;
  v91 = v119;
  v90 = v121;
  v89 = v122;
  v104 = 1;
  v103 = v118;
  v102 = v120;
  v59 = v125;
  v60 = v124;
  v61 = v123;
  v62 = v97;
  v63 = v98;
  sub_10000F8D0(v97, v98, &qword_100122450);
  v64 = v45;
  v65 = v99;
  sub_10000F8D0(v64, v99, &qword_100122448);
  v66 = v104;
  v67 = v103;
  v68 = v102;
  v69 = v100;
  *v100 = 0;
  *(v69 + 8) = v59;
  v69[2] = v96;
  *(v69 + 24) = v60;
  v69[4] = v95;
  *(v69 + 40) = v61;
  v70 = v93;
  v69[6] = v94;
  v69[7] = v70;
  v71 = sub_100006334(&qword_100122468);
  sub_10000F8D0(v63, v69 + v71[12], &qword_100122450);
  sub_10000F8D0(v65, v69 + v71[16], &qword_100122448);
  v72 = v69 + v71[20];
  *v72 = 0;
  v72[8] = v66;
  *(v72 + 2) = v92;
  v72[24] = v67;
  *(v72 + 4) = v91;
  v72[40] = v68;
  v73 = v89;
  *(v72 + 6) = v90;
  *(v72 + 7) = v73;
  sub_10000F938(v101, &qword_100122448);
  sub_10000F938(v62, &qword_100122450);
  sub_10000F938(v65, &qword_100122448);
  return sub_10000F938(v63, &qword_100122450);
}

uint64_t sub_100009968@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v119 = a2;
  v121 = sub_100006334(&qword_1001224F8);
  v109 = *(v121 - 8);
  __chkstk_darwin(v121);
  v99 = (&v97 - v3);
  v4 = sub_100006334(&qword_100122500);
  v5 = __chkstk_darwin(v4 - 8);
  v118 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v129 = &v97 - v7;
  v8 = sub_100006334(&qword_100122508);
  v9 = __chkstk_darwin(v8 - 8);
  v120 = (&v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v12 = &v97 - v11;
  v123 = sub_100006334(&qword_100122510);
  v13 = __chkstk_darwin(v123);
  v116 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v117 = &v97 - v16;
  v17 = __chkstk_darwin(v15);
  v115 = &v97 - v18;
  v19 = __chkstk_darwin(v17);
  v124 = &v97 - v20;
  v21 = __chkstk_darwin(v19);
  v107 = &v97 - v22;
  __chkstk_darwin(v21);
  v126 = &v97 - v23;
  v24 = sub_1000D1DBC();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v114 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v108 = &v97 - v29;
  v30 = __chkstk_darwin(v28);
  v101 = &v97 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v97 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v97 - v36;
  __chkstk_darwin(v35);
  v39 = &v97 - v38;
  sub_1000B2124(&v97 - v38);
  v40 = *(v25 + 104);
  LODWORD(v127) = enum case for DynamicTypeSize.accessibility3(_:);
  v130 = v25 + 104;
  v128 = v40;
  (v40)(v37);
  sub_1000D1DAC();
  v41 = *(v25 + 8);
  v41(v37, v24);
  v125 = v25 + 8;
  v122 = v41;
  v41(v39, v24);
  sub_1000D2B5C();
  sub_1000D1C8C();
  v112 = v145;
  v113 = v143;
  v110 = v148;
  v111 = v147;
  v142 = 1;
  v141 = v144;
  v140 = v146;
  v42 = type metadata accessor for SportsWidgetContentView();
  v43 = a1 + *(v42 + 28);
  v44 = *(v43 + 80);
  v183[4] = *(v43 + 64);
  v183[5] = v44;
  v183[6] = *(v43 + 96);
  v184 = *(v43 + 112);
  v45 = *(v43 + 48);
  v183[2] = *(v43 + 32);
  v183[3] = v45;
  v47 = *v43;
  v46 = *(v43 + 16);
  v100 = v43;
  v183[0] = v47;
  v183[1] = v46;
  *v12 = sub_1000D21BC();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v102 = sub_100006334(&qword_100122518);
  sub_10000CD84(a1, v183, &v12[*(v102 + 44)]);
  v98 = a1 + *(v42 + 24);
  v48 = *(v98 + 80);
  sub_1000D2B5C();
  v103 = v48;
  sub_1000D1E2C();
  v49 = v107;
  sub_10000F998(v12, v107, &qword_100122508);
  v50 = (v49 + *(v123 + 36));
  v51 = v154;
  v50[4] = v153;
  v50[5] = v51;
  v50[6] = v155;
  v52 = v150;
  *v50 = v149;
  v50[1] = v52;
  v53 = v152;
  v50[2] = v151;
  v50[3] = v53;
  sub_10000F998(v49, v126, &qword_100122510);
  sub_1000B2124(v34);
  v54 = v127;
  v55 = v128;
  v128(v37, v127, v24);
  sub_1000D1DAC();
  v56 = v122;
  v122(v37, v24);
  v56(v34, v24);
  sub_1000D2B5C();
  sub_1000D1C8C();
  v106 = v158;
  v107 = v156;
  v104 = v161;
  v105 = v160;
  v139 = 1;
  v138 = v157;
  v137 = v159;
  sub_1000B2124(v37);
  v57 = v101;
  v55(v101, v54, v24);
  LOBYTE(v49) = sub_1000D1DAC();
  v56(v57, v24);
  v56(v37, v24);
  v58 = 1;
  v59 = v129;
  if (v49)
  {
    v60 = sub_1000D21BC();
    v61 = v99;
    *v99 = v60;
    *(v61 + 8) = 0;
    *(v61 + 16) = 1;
    v62 = sub_100006334(&qword_100122528);
    sub_10000B67C(a1, v61 + *(v62 + 44));
    *(v61 + *(v121 + 36)) = *(v98 + *(type metadata accessor for SportsWidgetContentViewLayout() + 140));
    sub_10000F998(v61, v59, &qword_1001224F8);
    v58 = 0;
  }

  (*(v109 + 56))(v59, v58, 1, v121);
  v63 = v108;
  sub_1000B2124(v108);
  v128(v37, v127, v24);
  sub_1000D1DAC();
  v64 = v122;
  v122(v37, v24);
  v64(v63, v24);
  sub_1000D2B5C();
  sub_1000D1C8C();
  v121 = v162;
  v108 = v166;
  v109 = v164;
  v101 = v167;
  v136 = 1;
  v135 = v163;
  v134 = v165;
  v65 = *(v100 + 200);
  v181[4] = *(v100 + 184);
  v181[5] = v65;
  v181[6] = *(v100 + 216);
  v182 = *(v100 + 232);
  v66 = *(v100 + 136);
  v181[0] = *(v100 + 120);
  v181[1] = v66;
  v67 = *(v100 + 168);
  v181[2] = *(v100 + 152);
  v181[3] = v67;
  v68 = sub_1000D21BC();
  v69 = v120;
  *v120 = v68;
  v69[1] = 0;
  *(v69 + 16) = 1;
  sub_10000CD84(a1, v181, v69 + *(v102 + 44));
  sub_1000D2B5C();
  sub_1000D1E2C();
  v70 = v69;
  v71 = v115;
  sub_10000F998(v70, v115, &qword_100122508);
  v72 = (v71 + *(v123 + 36));
  v73 = v173;
  v72[4] = v172;
  v72[5] = v73;
  v72[6] = v174;
  v74 = v169;
  *v72 = v168;
  v72[1] = v74;
  v75 = v171;
  v72[2] = v170;
  v72[3] = v75;
  v76 = v124;
  sub_10000F998(v71, v124, &qword_100122510);
  v77 = v114;
  sub_1000B2124(v114);
  v128(v37, v127, v24);
  sub_1000D1DAC();
  v64(v37, v24);
  v64(v77, v24);
  sub_1000D2B5C();
  sub_1000D1C8C();
  v130 = v175;
  v127 = v179;
  v128 = v177;
  v125 = v180;
  v133 = 1;
  v132 = v176;
  v131 = v178;
  v78 = v142;
  v79 = v141;
  v80 = v140;
  v81 = v117;
  sub_10000F8D0(v126, v117, &qword_100122510);
  LODWORD(v99) = v139;
  LODWORD(v100) = v138;
  LODWORD(v102) = v137;
  v82 = v118;
  sub_10000F8D0(v129, v118, &qword_100122500);
  LODWORD(v103) = v136;
  LODWORD(v114) = v135;
  LODWORD(v115) = v134;
  v83 = v76;
  v84 = v116;
  sub_10000F8D0(v83, v116, &qword_100122510);
  LODWORD(v120) = v133;
  LODWORD(v122) = v132;
  LODWORD(v123) = v131;
  v85 = v119;
  *v119 = 0;
  *(v85 + 8) = v78;
  v86 = v112;
  v85[2] = v113;
  *(v85 + 24) = v79;
  v85[4] = v86;
  *(v85 + 40) = v80;
  v87 = v110;
  v85[6] = v111;
  v85[7] = v87;
  v88 = sub_100006334(&qword_100122520);
  sub_10000F8D0(v81, v85 + v88[12], &qword_100122510);
  v89 = v85 + v88[16];
  *v89 = 0;
  v89[8] = v99;
  *(v89 + 2) = v107;
  v89[24] = v100;
  *(v89 + 4) = v106;
  v89[40] = v102;
  v90 = v104;
  *(v89 + 6) = v105;
  *(v89 + 7) = v90;
  sub_10000F8D0(v82, v85 + v88[20], &qword_100122500);
  v91 = v85 + v88[24];
  *v91 = 0;
  v91[8] = v103;
  *(v91 + 2) = v121;
  v91[24] = v114;
  *(v91 + 4) = v109;
  v91[40] = v115;
  v92 = v101;
  *(v91 + 6) = v108;
  *(v91 + 7) = v92;
  sub_10000F8D0(v84, v85 + v88[28], &qword_100122510);
  v93 = v85 + v88[32];
  *v93 = 0;
  v93[8] = v120;
  *(v93 + 2) = v130;
  v93[24] = v122;
  *(v93 + 4) = v128;
  v93[40] = v123;
  v94 = v124;
  v95 = v125;
  *(v93 + 6) = v127;
  *(v93 + 7) = v95;
  sub_10000F938(v94, &qword_100122510);
  sub_10000F938(v129, &qword_100122500);
  sub_10000F938(v126, &qword_100122510);
  sub_10000F938(v84, &qword_100122510);
  sub_10000F938(v82, &qword_100122500);
  return sub_10000F938(v81, &qword_100122510);
}

uint64_t sub_10000A724@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v167 = a2;
  v3 = sub_100006334(&qword_100122648);
  __chkstk_darwin(v3 - 8);
  v168 = (&v144 - v4);
  v157 = sub_100006334(&qword_100122650);
  v5 = __chkstk_darwin(v157);
  v166 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v175 = &v144 - v7;
  v171 = sub_100006334(&qword_100122658);
  __chkstk_darwin(v171);
  v169 = (&v144 - v8);
  v172 = sub_100006334(&qword_100122568);
  v149 = *(v172 - 8);
  v9 = __chkstk_darwin(v172);
  v148 = &v144 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v144 - v11;
  v13 = sub_100006334(&qword_100122660);
  v14 = __chkstk_darwin(v13 - 8);
  v164 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v165 = &v144 - v17;
  v18 = __chkstk_darwin(v16);
  v173 = &v144 - v19;
  __chkstk_darwin(v18);
  v174 = &v144 - v20;
  v21 = type metadata accessor for SportsWidgetContentView();
  v22 = a1 + *(v21 + 24);
  v23 = *(v22 + 32);
  sub_1000D2B5C();
  v159 = v23;
  sub_1000D1C8C();
  v162 = v192;
  v163 = v190;
  v160 = v195;
  v161 = v194;
  v217 = 1;
  v216 = v191;
  v215 = v193;
  v24 = sub_100006F2C();
  v152 = v21;
  v25 = *(v21 + 28);
  v158 = a1;
  v26 = (a1 + v25);
  v170 = v22;
  if (v24)
  {
    v156 = v12;
    v28 = v26[6];
    v27 = v26[7];
    v30 = v26[8];
    v29 = v26[9];
    v31 = v26[11];
    v155 = v26[10];
    v32 = objc_opt_self();

    v33 = [v32 labelColor];
    v34 = sub_1000D27DC();
    *&v202 = 0x4049000000000000;
    *(&v202 + 1) = v34;
    *&v203 = v28;
    *(&v203 + 1) = v27;
    *&v204 = v30;
    *(&v204 + 1) = v29;
    *&v205 = v155;
    *(&v205 + 1) = v31;
    v35 = sub_10000F670();
    v36 = v156;
    sub_1000D262C();
    v179 = v202;
    v180 = v203;
    v181 = v204;
    v182 = v205;
    sub_10000F6C4(&v179);
    v37 = v149;
    v38 = v169;
    v39 = v172;
    (*(v149 + 16))(v169, v36, v172);
    swift_storeEnumTagMultiPayload();
    sub_100006334(&qword_1001225C0);
    *&v178[0] = &type metadata for SportsWidgetLogoView;
    *(&v178[0] + 1) = v35;
    swift_getOpaqueTypeConformance2();
    sub_10000F720();
    sub_1000D229C();
    (*(v37 + 8))(v36, v39);
  }

  else
  {
    v40 = v26[4];
    v41 = v26[5];
    v156 = *(v22 + 128);
    *&v202 = v40;
    *(&v202 + 1) = v41;
    sub_10000F320();

    v42 = sub_1000D260C();
    v44 = v43;
    v46 = v45;
    v47 = sub_1000D254C();
    v49 = v48;
    v51 = v50;
    sub_10000F374(v42, v44, v46 & 1);

    v52 = sub_1000D257C();
    v54 = v53;
    v56 = v55;
    sub_10000F374(v47, v49, v51 & 1);

    v57 = sub_1000D252C();
    v59 = v58;
    LOBYTE(v49) = v60;
    v62 = v61;
    sub_10000F374(v52, v54, v56 & 1);

    v63 = *(v22 + 144);
    KeyPath = swift_getKeyPath();
    v65 = *(v22 + 152);
    v66 = swift_getKeyPath();
    LOBYTE(v49) = v49 & 1;
    LOBYTE(v202) = v49;
    LOBYTE(v179) = 0;
    v67 = *(v22 + 160);
    v68 = swift_getKeyPath();
    v38 = v169;
    *v169 = v57;
    v38[1] = v59;
    *(v38 + 16) = v49;
    v38[3] = v62;
    v38[4] = KeyPath;
    v38[5] = v63;
    *(v38 + 48) = 0;
    v38[7] = v66;
    *(v38 + 64) = v65;
    v38[9] = v68;
    v38[10] = v67;
    swift_storeEnumTagMultiPayload();
    sub_100006334(&qword_1001225C0);
    v69 = sub_10000F670();
    *&v202 = &type metadata for SportsWidgetLogoView;
    *(&v202 + 1) = v69;
    swift_getOpaqueTypeConformance2();
    sub_10000F720();
    sub_1000D229C();
  }

  v70 = v170;
  sub_1000D2B5C();
  sub_1000D1C8C();
  v155 = v198;
  v156 = v196;
  v153 = v201;
  v154 = v200;
  v189 = 1;
  v188 = v197;
  v187 = v199;
  v71 = sub_1000D210C();
  v72 = v168;
  *v168 = v71;
  v72[1] = 0;
  *(v72 + 16) = 1;
  v73 = sub_100006334(&qword_100122668);
  v74 = v158;
  sub_10000BE18(v158, v72 + *(v73 + 44));
  type metadata accessor for SportsWidgetContentViewLayout();
  sub_1000D2B5C();
  sub_1000D1E2C();
  v75 = v72;
  v76 = v175;
  sub_10000F998(v75, v175, &qword_100122648);
  v77 = (v76 + *(v157 + 36));
  v78 = v207;
  v77[4] = v206;
  v77[5] = v78;
  v77[6] = v208;
  v79 = v203;
  *v77 = v202;
  v77[1] = v79;
  v80 = v205;
  v77[2] = v204;
  v77[3] = v80;
  sub_1000D2B5C();
  sub_1000D1C8C();
  v168 = v209;
  v157 = v211;
  v150 = v214;
  v151 = v213;
  v186 = 1;
  v185 = v210;
  v184 = v212;
  v81 = sub_100006F2C();
  v82 = (v74 + *(v152 + 28));
  if (v81)
  {
    v84 = v82[21];
    v83 = v82[22];
    v86 = v82[23];
    v85 = v82[24];
    v87 = v82[26];
    v170 = v82[25];
    v88 = objc_opt_self();

    v89 = [v88 labelColor];
    v90 = sub_1000D27DC();
    *&v179 = 0x4049000000000000;
    *(&v179 + 1) = v90;
    *&v180 = v84;
    *(&v180 + 1) = v83;
    *&v181 = v86;
    *(&v181 + 1) = v85;
    *&v182 = v170;
    *(&v182 + 1) = v87;
    v91 = sub_10000F670();
    v92 = v148;
    sub_1000D262C();
    v178[0] = v179;
    v178[1] = v180;
    v178[2] = v181;
    v178[3] = v182;
    sub_10000F6C4(v178);
    v93 = v149;
    v94 = v172;
    (*(v149 + 16))(v38, v92, v172);
    swift_storeEnumTagMultiPayload();
    sub_100006334(&qword_1001225C0);
    v176 = &type metadata for SportsWidgetLogoView;
    v177 = v91;
    swift_getOpaqueTypeConformance2();
    sub_10000F720();
    v95 = v173;
    sub_1000D229C();
    (*(v93 + 8))(v92, v94);
  }

  else
  {
    v96 = v82[19];
    v97 = v82[20];
    v158 = *(v70 + 128);
    *&v179 = v96;
    *(&v179 + 1) = v97;
    sub_10000F320();

    v98 = sub_1000D260C();
    v100 = v99;
    v102 = v101;
    v103 = sub_1000D254C();
    v105 = v104;
    v107 = v106;
    sub_10000F374(v98, v100, v102 & 1);

    v108 = sub_1000D257C();
    v110 = v109;
    v112 = v111;
    sub_10000F374(v103, v105, v107 & 1);

    v158 = sub_1000D252C();
    v114 = v113;
    LOBYTE(v105) = v115;
    v117 = v116;
    sub_10000F374(v108, v110, v112 & 1);

    v118 = v170;
    v119 = *(v170 + 144);
    v120 = swift_getKeyPath();
    v121 = *(v118 + 152);
    v122 = swift_getKeyPath();
    LOBYTE(v105) = v105 & 1;
    LOBYTE(v179) = v105;
    LOBYTE(v178[0]) = 0;
    v123 = *(v118 + 160);
    v124 = swift_getKeyPath();
    *v38 = v158;
    v38[1] = v114;
    *(v38 + 16) = v105;
    v38[3] = v117;
    v38[4] = v120;
    v38[5] = v119;
    *(v38 + 48) = 0;
    v38[7] = v122;
    *(v38 + 64) = v121;
    v38[9] = v124;
    v38[10] = v123;
    swift_storeEnumTagMultiPayload();
    sub_100006334(&qword_1001225C0);
    v125 = sub_10000F670();
    *&v179 = &type metadata for SportsWidgetLogoView;
    *(&v179 + 1) = v125;
    swift_getOpaqueTypeConformance2();
    sub_10000F720();
    v95 = v173;
    sub_1000D229C();
  }

  sub_1000D2B5C();
  sub_1000D1C8C();
  v171 = v180;
  v172 = v179;
  v169 = *(&v181 + 1);
  v170 = v181;
  LOBYTE(v178[0]) = 1;
  LOBYTE(v176) = BYTE8(v179);
  v183 = BYTE8(v180);
  v126 = v217;
  v127 = v216;
  v128 = v215;
  v129 = v165;
  sub_10000F8D0(v174, v165, &qword_100122660);
  v144 = v189;
  v145 = v188;
  v146 = v187;
  v130 = v166;
  sub_10000F8D0(v175, v166, &qword_100122650);
  v147 = v186;
  LODWORD(v148) = v185;
  LODWORD(v149) = v184;
  v131 = v164;
  sub_10000F8D0(v95, v164, &qword_100122660);
  LODWORD(v152) = LOBYTE(v178[0]);
  LODWORD(v158) = v176;
  LODWORD(v159) = v183;
  v132 = v167;
  *v167 = 0;
  *(v132 + 8) = v126;
  v133 = v162;
  v132[2] = v163;
  *(v132 + 24) = v127;
  v132[4] = v133;
  *(v132 + 40) = v128;
  v134 = v160;
  v132[6] = v161;
  v132[7] = v134;
  v135 = sub_100006334(&qword_100122670);
  sub_10000F8D0(v129, v132 + v135[12], &qword_100122660);
  v136 = v132 + v135[16];
  *v136 = 0;
  v136[8] = v144;
  *(v136 + 2) = v156;
  v136[24] = v145;
  *(v136 + 4) = v155;
  v136[40] = v146;
  v137 = v153;
  *(v136 + 6) = v154;
  *(v136 + 7) = v137;
  sub_10000F8D0(v130, v132 + v135[20], &qword_100122650);
  v138 = v132 + v135[24];
  *v138 = 0;
  v138[8] = v147;
  *(v138 + 2) = v168;
  v138[24] = v148;
  *(v138 + 4) = v157;
  v138[40] = v149;
  v139 = v150;
  *(v138 + 6) = v151;
  *(v138 + 7) = v139;
  sub_10000F8D0(v131, v132 + v135[28], &qword_100122660);
  v140 = v132 + v135[32];
  *v140 = 0;
  v140[8] = v152;
  v141 = v173;
  *(v140 + 2) = v172;
  v140[24] = v158;
  *(v140 + 4) = v171;
  v140[40] = v159;
  v142 = v169;
  *(v140 + 6) = v170;
  *(v140 + 7) = v142;
  sub_10000F938(v141, &qword_100122660);
  sub_10000F938(v175, &qword_100122650);
  sub_10000F938(v174, &qword_100122660);
  sub_10000F938(v131, &qword_100122660);
  sub_10000F938(v130, &qword_100122650);
  return sub_10000F938(v129, &qword_100122660);
}

uint64_t sub_10000B67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v45 = sub_100006334(&qword_100122430);
  __chkstk_darwin(v45);
  v4 = &v40 - v3;
  v46 = type metadata accessor for SportsWidgetClockView();
  __chkstk_darwin(v46);
  v44 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100006334(&qword_100122530);
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v9 = sub_100006334(&qword_100122538);
  __chkstk_darwin(v9);
  v11 = &v40 - v10;
  v12 = sub_100006334(&qword_100122540);
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = a1;
  v16 = a1 + *(type metadata accessor for SportsWidgetContentView() + 28);
  v17 = type metadata accessor for SportsWidgetContentViewModel(0);
  if (*(v16 + v17[14]) == 1)
  {
    sub_10002F270(v50);
    *&v49[7] = v50[0];
    *&v49[23] = v50[1];
    *&v49[39] = v50[2];
    *&v49[87] = v50[5];
    *&v49[71] = v50[4];
    *&v49[55] = v50[3];
    *v11 = 1;
    v18 = *&v49[48];
    *(v11 + 33) = *&v49[32];
    v19 = *v49;
    *(v11 + 17) = *&v49[16];
    *(v11 + 1) = v19;
    v20 = *&v49[64];
    v21 = *&v49[80];
    *(v11 + 12) = *&v49[95];
    *(v11 + 81) = v21;
    *(v11 + 65) = v20;
    *(v11 + 49) = v18;
    swift_storeEnumTagMultiPayload();
    sub_10000F5C0(v50, &v48);
    sub_10000F204();
    sub_10000FE34(&qword_100122488, type metadata accessor for SportsWidgetClockView);
    sub_1000D229C();
    sub_10000F8D0(v14, v8, &qword_100122540);
    swift_storeEnumTagMultiPayload();
    sub_10000F504();
    sub_10000FC38(&qword_100122490, &qword_100122430);
    v22 = v47;
    sub_1000D229C();
    sub_10000F61C(v50);
    sub_10000F938(v14, &qword_100122540);
LABEL_5:
    v31 = sub_100006334(&qword_100122548);
    return (*(*(v31 - 8) + 56))(v22, 0, 1, v31);
  }

  v41 = v14;
  v42 = v6;
  v43 = v12;
  if (*(v16 + v17[9]) == 1)
  {
    v23 = v46;
    v24 = v44;
    sub_10000F258(v16 + v17[6], v44 + *(v46 + 20), type metadata accessor for SportsWidgetClock);
    v25 = sub_1000D24AC();
    v26 = [objc_opt_self() labelColor];
    v27 = sub_1000D27DC();
    v28 = sub_1000D24AC();
    *v24 = swift_getKeyPath();
    sub_100006334(&qword_100122410);
    swift_storeEnumTagMultiPayload();
    v29 = v24 + *(v23 + 24);
    *v29 = 1;
    *(v29 + 1) = v25;
    *(v29 + 2) = v27;
    *(v29 + 3) = v28;
    sub_10000F258(v24, v11, type metadata accessor for SportsWidgetClockView);
    swift_storeEnumTagMultiPayload();
    sub_10000F204();
    sub_10000FE34(&qword_100122488, type metadata accessor for SportsWidgetClockView);
    v30 = v41;
    sub_1000D229C();
    sub_10000F8D0(v30, v8, &qword_100122540);
    swift_storeEnumTagMultiPayload();
    sub_10000F504();
    sub_10000FC38(&qword_100122490, &qword_100122430);
    v22 = v47;
    sub_1000D229C();
    sub_10000F938(v30, &qword_100122540);
    sub_10000F2C0(v24, type metadata accessor for SportsWidgetClockView);
    goto LABEL_5;
  }

  if (*(v16 + v17[10]) == 1)
  {
    *v4 = sub_1000D21BC();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v33 = sub_100006334(&qword_100122480);
    sub_10000C624(v15, &v4[*(v33 + 44)]);
    sub_10000F8D0(v4, v8, &qword_100122430);
    swift_storeEnumTagMultiPayload();
    sub_10000F504();
    sub_10000FC38(&qword_100122490, &qword_100122430);
    v34 = v47;
    sub_1000D229C();
    sub_10000F938(v4, &qword_100122430);
    v35 = sub_100006334(&qword_100122548);
    return (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  }

  else
  {
    v36 = sub_100006334(&qword_100122548);
    v37 = *(*(v36 - 8) + 56);
    v38 = v36;
    v39 = v47;

    return v37(v39, 1, 1, v38);
  }
}

uint64_t sub_10000BE18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v78 = sub_100006334(&qword_1001224F8);
  v3 = __chkstk_darwin(v78);
  v82 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v65 - v5;
  v7 = sub_100006334(&qword_100122678);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v65 - v11;
  v85 = sub_100006334(&qword_100122680);
  v13 = __chkstk_darwin(v85);
  v81 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v86 = &v65 - v16;
  v17 = __chkstk_darwin(v15);
  v79 = &v65 - v18;
  v19 = __chkstk_darwin(v17);
  v80 = &v65 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v65 - v22;
  __chkstk_darwin(v21);
  v84 = &v65 - v24;
  v25 = type metadata accessor for SportsWidgetContentView();
  v26 = a1 + *(v25 + 28);
  v27 = *(v26 + 48);
  v121[2] = *(v26 + 32);
  v121[3] = v27;
  v122 = *(v26 + 112);
  v28 = *(v26 + 96);
  v121[5] = *(v26 + 80);
  v121[6] = v28;
  v121[4] = *(v26 + 64);
  v29 = *(v26 + 16);
  v121[0] = *v26;
  v121[1] = v29;
  v30 = (a1 + *(v25 + 24));
  v31 = v30[12];
  v72 = v30[13];
  v32 = v72;
  v73 = v31;
  *v12 = v31;
  *(v12 + 1) = v32;
  v12[16] = 0;
  v70 = sub_100006334(&qword_100122688);
  sub_10000DEC0(a1, v121, &v12[*(v70 + 44)]);
  v33 = v30[9];
  sub_1000D2B5C();
  v71 = v33;
  sub_1000D1E2C();
  sub_10000F998(v12, v23, &qword_100122678);
  v34 = &v23[*(v85 + 36)];
  v35 = v98;
  *(v34 + 4) = v97;
  *(v34 + 5) = v35;
  *(v34 + 6) = v99;
  v36 = v94;
  *v34 = v93;
  *(v34 + 1) = v36;
  v37 = v96;
  *(v34 + 2) = v95;
  *(v34 + 3) = v37;
  v38 = v23;
  v39 = v84;
  sub_10000F998(v38, v84, &qword_100122680);
  v40 = type metadata accessor for SportsWidgetContentViewLayout();
  sub_1000D2B5C();
  sub_1000D1C8C();
  v76 = v102;
  v77 = v100;
  v74 = v105;
  v75 = v104;
  v89 = 1;
  v88 = v101;
  v87 = v103;
  *v6 = sub_1000D21BC();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v41 = sub_100006334(&qword_100122528);
  sub_10000B67C(a1, &v6[*(v41 + 44)]);
  *&v6[*(v78 + 36)] = *(v30 + *(v40 + 144));
  sub_1000D2B5C();
  sub_1000D1C8C();
  v78 = v106;
  v68 = v110;
  v69 = v108;
  v67 = v111;
  v92 = 1;
  v91 = v107;
  v90 = v109;
  v42 = *(v26 + 200);
  v119[4] = *(v26 + 184);
  v119[5] = v42;
  v119[6] = *(v26 + 216);
  v120 = *(v26 + 232);
  v43 = *(v26 + 136);
  v119[0] = *(v26 + 120);
  v119[1] = v43;
  v44 = *(v26 + 168);
  v119[2] = *(v26 + 152);
  v119[3] = v44;
  v45 = v72;
  *v10 = v73;
  *(v10 + 1) = v45;
  v10[16] = 0;
  sub_10000DEC0(a1, v119, &v10[*(v70 + 44)]);
  sub_1000D2B5C();
  v46 = v6;
  v66 = v6;
  sub_1000D1E2C();
  v47 = v79;
  sub_10000F998(v10, v79, &qword_100122678);
  v48 = (v47 + *(v85 + 36));
  v49 = v117;
  v48[4] = v116;
  v48[5] = v49;
  v48[6] = v118;
  v50 = v113;
  *v48 = v112;
  v48[1] = v50;
  v51 = v115;
  v48[2] = v114;
  v48[3] = v51;
  v52 = v80;
  sub_10000F998(v47, v80, &qword_100122680);
  v53 = v86;
  sub_10000F8D0(v39, v86, &qword_100122680);
  LOBYTE(v10) = v89;
  LOBYTE(v30) = v88;
  LODWORD(v72) = v87;
  v54 = v82;
  sub_10000F8D0(v46, v82, &qword_1001224F8);
  LODWORD(v73) = v92;
  LODWORD(v79) = v91;
  LODWORD(v85) = v90;
  v55 = v81;
  sub_10000F8D0(v52, v81, &qword_100122680);
  v56 = v53;
  v57 = v83;
  sub_10000F8D0(v56, v83, &qword_100122680);
  v58 = sub_100006334(&qword_100122690);
  v59 = v57 + v58[12];
  *v59 = 0;
  *(v59 + 8) = v10;
  v60 = v76;
  *(v59 + 16) = v77;
  *(v59 + 24) = v30;
  *(v59 + 32) = v60;
  *(v59 + 40) = v72;
  v61 = v74;
  *(v59 + 48) = v75;
  *(v59 + 56) = v61;
  sub_10000F8D0(v54, v57 + v58[16], &qword_1001224F8);
  v62 = v57 + v58[20];
  *v62 = 0;
  *(v62 + 8) = v73;
  *(v62 + 16) = v78;
  *(v62 + 24) = v79;
  *(v62 + 32) = v69;
  *(v62 + 40) = v85;
  v63 = v67;
  *(v62 + 48) = v68;
  *(v62 + 56) = v63;
  sub_10000F8D0(v55, v57 + v58[24], &qword_100122680);
  sub_10000F938(v52, &qword_100122680);
  sub_10000F938(v66, &qword_1001224F8);
  sub_10000F938(v84, &qword_100122680);
  sub_10000F938(v55, &qword_100122680);
  sub_10000F938(v54, &qword_1001224F8);
  return sub_10000F938(v86, &qword_100122680);
}

uint64_t sub_10000C624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  v3 = sub_100006334(&qword_100122498);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v77 - v5;
  v7 = sub_100006334(&qword_1001224A0);
  v8 = __chkstk_darwin(v7 - 8);
  v82 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v81 = &v77 - v11;
  v12 = __chkstk_darwin(v10);
  v80 = &v77 - v13;
  __chkstk_darwin(v12);
  v15 = &v77 - v14;
  v16 = type metadata accessor for SportsWidgetContentView();
  v17 = a1 + *(v16 + 28);
  v18 = (v17 + *(type metadata accessor for SportsWidgetContentViewModel(0) + 28));
  v19 = v18[1];
  v87 = v3;
  v86 = v15;
  v85 = v4;
  v84 = v6;
  v79 = a1;
  v78 = v16;
  if (v19)
  {
    *&v93 = *v18;
    *(&v93 + 1) = v19;
    sub_10000F320();

    v20 = sub_1000D260C();
    v77 = v18;
    v22 = v21;
    v24 = v23;
    v25 = a1 + *(v16 + 24);
    v26 = type metadata accessor for SportsWidgetContentViewLayout();
    v27 = sub_1000D254C();
    v29 = v28;
    v31 = v30;
    sub_10000F374(v20, v22, v24 & 1);

    v32 = sub_1000D257C();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    sub_10000F374(v27, v29, v31 & 1);
    v15 = v86;

    v39 = *(v25 + *(v26 + 156));
    KeyPath = swift_getKeyPath();
    LOBYTE(v26) = *(v25 + *(v26 + 160));
    v41 = swift_getKeyPath();
    LOBYTE(v93) = v36 & 1;
    *&v88 = v32;
    *(&v88 + 1) = v34;
    LOBYTE(v89) = v36 & 1;
    *(&v89 + 1) = v38;
    *&v90 = KeyPath;
    v18 = v77;
    *(&v90 + 1) = v39;
    v42 = v84;
    LOBYTE(v91) = 0;
    *(&v91 + 1) = v41;
    v92 = v26;
    sub_100006334(&qword_1001224B8);
    sub_10000F394();
    v43 = v85;
    sub_1000D262C();
    v95 = v90;
    v96 = v91;
    v97 = v92;
    v93 = v88;
    v94 = v89;
    v3 = v87;
    sub_10000F938(&v93, &qword_1001224B8);
    (*(v43 + 32))(v15, v42, v3);
    v44 = *(v43 + 56);
    v44(v15, 0, 1, v3);
  }

  else
  {
    v44 = *(v4 + 56);
    v44(v15, 1, 1, v3);
  }

  v45 = v18[3];
  if (v45)
  {
    *&v93 = v18[2];
    *(&v93 + 1) = v45;
    sub_10000F320();

    v46 = sub_1000D260C();
    v48 = v47;
    v50 = v49;
    v51 = v79 + *(v78 + 24);
    v52 = type metadata accessor for SportsWidgetContentViewLayout();
    v53 = sub_1000D254C();
    v55 = v54;
    v57 = v56;
    sub_10000F374(v46, v48, v50 & 1);

    v58 = sub_1000D257C();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    sub_10000F374(v53, v55, v57 & 1);

    v65 = *(v51 + *(v52 + 156));
    v66 = swift_getKeyPath();
    LOBYTE(v52) = *(v51 + *(v52 + 160));
    v67 = swift_getKeyPath();
    LOBYTE(v93) = v62 & 1;
    *&v88 = v58;
    *(&v88 + 1) = v60;
    LOBYTE(v89) = v62 & 1;
    *(&v89 + 1) = v64;
    *&v90 = v66;
    *(&v90 + 1) = v65;
    v15 = v86;
    LOBYTE(v91) = 0;
    *(&v91 + 1) = v67;
    v92 = v52;
    sub_100006334(&qword_1001224B8);
    sub_10000F394();
    v68 = v84;
    sub_1000D262C();
    v95 = v90;
    v96 = v91;
    v97 = v92;
    v93 = v88;
    v94 = v89;
    sub_10000F938(&v93, &qword_1001224B8);
    v69 = v85;
    v70 = v80;
    v71 = v87;
    (*(v85 + 32))(v80, v68, v87);
    (*(v69 + 56))(v70, 0, 1, v71);
  }

  else
  {
    v70 = v80;
    v44(v80, 1, 1, v3);
  }

  v72 = v81;
  sub_10000F8D0(v15, v81, &qword_1001224A0);
  v73 = v82;
  sub_10000F8D0(v70, v82, &qword_1001224A0);
  v74 = v83;
  sub_10000F8D0(v72, v83, &qword_1001224A0);
  v75 = sub_100006334(&qword_1001224A8);
  sub_10000F8D0(v73, v74 + *(v75 + 48), &qword_1001224A0);
  sub_10000F938(v70, &qword_1001224A0);
  sub_10000F938(v15, &qword_1001224A0);
  sub_10000F938(v73, &qword_1001224A0);
  return sub_10000F938(v72, &qword_1001224A0);
}

uint64_t sub_10000CD84@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a3;
  v5 = sub_100006334(&qword_100122558);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v66 = &v51[-v9];
  v10 = sub_100006334(&qword_100122560);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v63 = &v51[-v12];
  v62 = sub_100006334(&qword_100122568);
  v13 = *(v62 - 8);
  v14 = __chkstk_darwin(v62);
  v16 = &v51[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v18 = &v51[-v17];
  v19 = sub_100006334(&qword_100122570);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = &v51[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v67 = &v51[-v23];
  if (sub_100006F2C())
  {
    v60 = a2;
    v24 = a2[7];
    v57 = a2[6];
    v56 = a2[8];
    v64 = a1;
    v25 = a2[9];
    v55 = a2[10];
    v59 = v11;
    v26 = a2[11];
    v27 = objc_opt_self();
    v61 = v22;
    v28 = v27;

    v58 = v10;

    v29 = [v28 labelColor];
    v30 = sub_1000D27DC();
    *&v72 = 0x4049000000000000;
    *(&v72 + 1) = v30;
    *&v73 = v57;
    *(&v73 + 1) = v24;
    *&v74 = v56;
    *(&v74 + 1) = v25;
    *&v75 = v55;
    *(&v75 + 1) = v26;
    sub_10000F670();
    sub_1000D262C();
    v68[0] = v72;
    v68[1] = v73;
    v68[2] = v74;
    v68[3] = v75;
    sub_10000F6C4(v68);
    type metadata accessor for SportsWidgetContentView();
    sub_1000D2B5C();
    sub_1000D1C8C();
    v57 = v76;
    v56 = v78;
    v55 = v80;
    v54 = v81;
    v71 = 1;
    v70 = v77;
    v69 = v79;
    v31 = v13;
    v32 = *(v13 + 16);
    v33 = v16;
    v34 = v16;
    v35 = v62;
    v32(v34, v18, v62);
    v36 = v8;
    v37 = v71;
    v53 = v18;
    v38 = v70;
    v52 = v69;
    v39 = v63;
    v32(v63, v33, v35);
    v22 = v61;
    v40 = &v39[*(sub_100006334(&qword_100122590) + 48)];
    *v40 = 0;
    v40[8] = v37;
    v8 = v36;
    *(v40 + 2) = v57;
    v40[24] = v38;
    a2 = v60;
    *(v40 + 4) = v56;
    v40[40] = v52;
    v41 = v54;
    *(v40 + 6) = v55;
    *(v40 + 7) = v41;
    v42 = *(v31 + 8);
    v42(v53, v35);
    v42(v33, v35);
    a1 = v64;
    v43 = v39;
    v44 = v67;
    sub_10000F998(v43, v67, &qword_100122560);
    (*(v59 + 56))(v44, 0, 1, v58);
  }

  else
  {
    v44 = v67;
    (*(v11 + 56))(v67, 1, 1, v10);
  }

  v45 = type metadata accessor for SportsWidgetContentView();
  v46 = v66;
  *v66 = *(a1 + *(v45 + 24) + 96);
  *(v46 + 16) = 0;
  v47 = sub_100006334(&qword_100122578);
  sub_10000D474(a1, a2, (v46 + *(v47 + 44)));
  sub_10000F8D0(v44, v22, &qword_100122570);
  sub_10000F8D0(v46, v8, &qword_100122558);
  v48 = v65;
  sub_10000F8D0(v22, v65, &qword_100122570);
  v49 = sub_100006334(&qword_100122580);
  sub_10000F8D0(v8, v48 + *(v49 + 48), &qword_100122558);
  sub_10000F938(v46, &qword_100122558);
  sub_10000F938(v44, &qword_100122570);
  sub_10000F938(v8, &qword_100122558);
  return sub_10000F938(v22, &qword_100122570);
}

uint64_t sub_10000D474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v103 = a3;
  v99 = sub_100006334(&qword_100122598);
  v97 = *(v99 - 8);
  __chkstk_darwin(v99);
  v90 = (&v86 - v5);
  v6 = sub_100006334(&qword_1001225A0);
  v7 = __chkstk_darwin(v6 - 8);
  v102 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v101 = &v86 - v9;
  v10 = sub_100006334(&qword_1001225A8);
  v93 = *(v10 - 8);
  v94 = v10;
  __chkstk_darwin(v10);
  v89 = &v86 - v11;
  v12 = sub_100006334(&qword_1001225B0);
  v13 = __chkstk_darwin(v12 - 8);
  v100 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v107 = &v86 - v15;
  v98 = sub_100006334(&qword_1001225B8);
  v96 = *(v98 - 8);
  v16 = __chkstk_darwin(v98);
  v105 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v106 = &v86 - v18;
  v19 = type metadata accessor for SportsWidgetContentView();
  v20 = *(v19 + 28);
  v21 = a1 + *(v19 + 24);
  v92 = *(v21 + 120);
  v22 = a1 + v20;
  v23 = type metadata accessor for SportsWidgetContentViewModel(0);
  v24 = 0;
  v87 = v23;
  v88 = v22;
  LODWORD(v104) = *(v22 + *(v23 + 44));
  if ((v104 & 1) == 0)
  {
    v24 = *(v21 + 136);
  }

  v91 = v24;
  v25 = *(a2 + 40);
  *&v117 = *(a2 + 32);
  *(&v117 + 1) = v25;
  sub_10000F320();
  v95 = a2;

  v26 = sub_1000D260C();
  v28 = v27;
  v30 = v29;
  v31 = sub_1000D254C();
  v33 = v32;
  v34 = v21;
  v36 = v35;
  sub_10000F374(v26, v28, v30 & 1);

  v37 = sub_1000D257C();
  v39 = v38;
  v41 = v40;
  sub_10000F374(v31, v33, v36 & 1);

  v42 = sub_1000D252C();
  v44 = v43;
  LOBYTE(v31) = v45;
  v47 = v46;
  sub_10000F374(v37, v39, v41 & 1);

  v48 = *(v34 + 144);
  KeyPath = swift_getKeyPath();
  LOBYTE(v28) = *(v34 + 152);
  v50 = swift_getKeyPath();
  LOBYTE(v31) = v31 & 1;
  LOBYTE(v117) = v31;
  LOBYTE(v116[0]) = 0;
  v92 = v34;
  v51 = *(v34 + 160);
  v52 = swift_getKeyPath();
  *&v125 = v42;
  *(&v125 + 1) = v44;
  LOBYTE(v126) = v31;
  *(&v126 + 1) = v47;
  *&v127 = KeyPath;
  *(&v127 + 1) = v48;
  LOBYTE(v128) = 0;
  *(&v128 + 1) = v50;
  LOBYTE(v129) = v28;
  v53 = v95;
  *(&v129 + 1) = v52;
  v130 = v51;
  sub_100006334(&qword_1001225C0);
  sub_10000F720();
  sub_1000D262C();
  v123[2] = v127;
  v123[3] = v128;
  v123[4] = v129;
  v124 = v130;
  v123[0] = v125;
  v123[1] = v126;
  sub_10000F938(v123, &qword_1001225C0);
  if (v104)
  {
    if (*(v88 + *(v87 + 56)) == 1)
    {
      sub_10002F270(&v110);
      *&v108[87] = v115[0];
      *&v108[71] = v114;
      *&v108[55] = v113;
      *&v108[39] = v112;
      *&v108[23] = v111;
      *&v108[7] = v110;
      *(&v116[3] + 1) = *&v108[48];
      *(&v116[4] + 1) = *&v108[64];
      *(&v116[5] + 1) = *&v108[80];
      *(v116 + 1) = *v108;
      *(&v116[1] + 1) = *&v108[16];
      v109 = 0;
      LOBYTE(v116[0]) = 0;
      *&v116[6] = *(&v115[0] + 1);
      *(&v116[2] + 1) = *&v108[32];
      BYTE8(v116[6]) = 0;
    }

    else
    {
      v56 = *(v53 + 16);
      v55 = *(v53 + 24);

      v57 = sub_1000D23BC();
      v58 = [objc_opt_self() labelColor];
      v59 = sub_1000D27DC();
      LOBYTE(v110) = 1;
      *&v116[0] = v56;
      *(&v116[0] + 1) = v55;
      *&v116[1] = v57;
      *(&v116[1] + 1) = v59;
      *&v116[2] = 1;
      BYTE8(v116[2]) = 1;
      v116[3] = xmmword_1000DED50;
      BYTE8(v116[6]) = 1;
    }

    sub_10000F204();
    sub_10000F7F0();
    sub_1000D229C();
    v116[4] = v121;
    v116[5] = v122[0];
    *(&v116[5] + 9) = *(v122 + 9);
    v116[0] = v117;
    v116[1] = v118;
    v116[2] = v119;
    v116[3] = v120;
    sub_100006334(&qword_1001225F8);
    sub_10000F844();
    v60 = v89;
    sub_1000D262C();
    v114 = v116[4];
    v115[0] = v116[5];
    *(v115 + 9) = *(&v116[5] + 9);
    v110 = v116[0];
    v111 = v116[1];
    v112 = v116[2];
    v113 = v116[3];
    sub_10000F938(&v110, &qword_1001225F8);
    v62 = v93;
    v61 = v94;
    v63 = v107;
    (*(v93 + 32))(v107, v60, v94);
    (*(v62 + 56))(v63, 0, 1, v61);
    if (*(v53 + 112))
    {
      goto LABEL_10;
    }
  }

  else
  {
    (*(v93 + 56))(v107, 1, 1, v94);
    if (*(v53 + 112))
    {
LABEL_10:
      v64 = v92;

      v104 = sub_1000D28DC();
      v65 = *(v64 + 208);
      v95 = swift_getKeyPath();
      v66 = *(v64 + 200);
      v94 = swift_getKeyPath();
      v67 = *(type metadata accessor for SportsWidgetContentViewLayout() + 116);
      v68 = swift_getKeyPath();
      v69 = v99;
      v70 = v90;
      v71 = (v90 + *(v99 + 36));
      v72 = *(sub_100006334(&qword_1001225E8) + 28);
      v73 = sub_1000D28FC();
      (*(*(v73 - 8) + 16))(v71 + v72, v64 + v67, v73);
      *v71 = v68;
      v74 = v94;
      v75 = v95;
      *v70 = v104;
      v70[1] = v75;
      v70[2] = v65;
      v70[3] = v74;
      v70[4] = v66;
      v54 = v101;
      sub_10000F998(v70, v101, &qword_100122598);
      (*(v97 + 56))(v54, 0, 1, v69);

      goto LABEL_11;
    }
  }

  v54 = v101;
  (*(v97 + 56))(v101, 1, 1, v99);
LABEL_11:
  v76 = v96;
  v77 = *(v96 + 16);
  v78 = v105;
  v79 = v98;
  v77(v105, v106, v98);
  v80 = v100;
  sub_10000F8D0(v107, v100, &qword_1001225B0);
  v81 = v102;
  sub_10000F8D0(v54, v102, &qword_1001225A0);
  v82 = v103;
  v77(v103, v78, v79);
  v83 = sub_100006334(&qword_1001225E0);
  sub_10000F8D0(v80, &v82[*(v83 + 48)], &qword_1001225B0);
  sub_10000F8D0(v81, &v82[*(v83 + 64)], &qword_1001225A0);
  sub_10000F938(v54, &qword_1001225A0);
  sub_10000F938(v107, &qword_1001225B0);
  v84 = *(v76 + 8);
  v84(v106, v79);
  sub_10000F938(v81, &qword_1001225A0);
  sub_10000F938(v80, &qword_1001225B0);
  return (v84)(v105, v79);
}

uint64_t sub_10000DEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v83 = a3;
  v4 = sub_100006334(&qword_100122698);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v82 = (v72 - v6);
  v7 = sub_100006334(&qword_1001226A0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v72 - v11;
  v13 = sub_100006334(&qword_1001225B8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v81 = v72 - v15;
  v16 = sub_100006334(&qword_1001226A8);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v72 - v20;
  v22 = sub_100006F2C();
  v84 = v21;
  if (v22)
  {
    v73 = v14;
    v74 = v13;
    v75 = v19;
    v77 = v5;
    v78 = v4;
    v79 = v12;
    v80 = v10;
    v23 = type metadata accessor for SportsWidgetContentView();
    v24 = *(v23 + 28);
    v25 = a1 + *(v23 + 24);
    v72[1] = *(v25 + 120);
    v76 = a1;
    v26 = a1 + v24;
    v27 = type metadata accessor for SportsWidgetContentViewModel(0);
    v28 = 0;
    if ((*(v26 + *(v27 + 44)) & 1) == 0)
    {
      v28 = *(v25 + 136);
    }

    v72[2] = v28;
    v29 = *(v85 + 40);
    *&v88 = *(v85 + 32);
    *(&v88 + 1) = v29;
    sub_10000F320();

    v30 = sub_1000D260C();
    v32 = v31;
    v34 = v33;
    v35 = sub_1000D254C();
    v37 = v36;
    v39 = v38;
    sub_10000F374(v30, v32, v34 & 1);

    v40 = sub_1000D257C();
    v42 = v41;
    v44 = v43;
    sub_10000F374(v35, v37, v39 & 1);

    v45 = sub_1000D252C();
    v47 = v46;
    v49 = v48;
    v51 = v50;
    sub_10000F374(v40, v42, v44 & 1);

    v52 = *(v25 + 144);
    KeyPath = swift_getKeyPath();
    v54 = *(v25 + 152);
    v55 = swift_getKeyPath();
    v49 &= 1u;
    LOBYTE(v88) = v49;
    LOBYTE(v86[0]) = 0;
    v56 = *(v25 + 160);
    v57 = swift_getKeyPath();
    *&v88 = v45;
    *(&v88 + 1) = v47;
    LOBYTE(v89) = v49;
    *(&v89 + 1) = v51;
    *&v90 = KeyPath;
    *(&v90 + 1) = v52;
    LOBYTE(v91) = 0;
    *(&v91 + 1) = v55;
    LOBYTE(v92) = v54;
    *(&v92 + 1) = v57;
    v93 = v56;
    sub_100006334(&qword_1001225C0);
    sub_10000F720();
    v58 = v81;
    sub_1000D262C();
    v86[2] = v90;
    v86[3] = v91;
    v86[4] = v92;
    v87 = v93;
    v86[0] = v88;
    v86[1] = v89;
    sub_10000F938(v86, &qword_1001225C0);
    v59 = v73;
    v60 = v84;
    v61 = v74;
    (*(v73 + 32))(v84, v58, v74);
    (*(v59 + 56))(v60, 0, 1, v61);
    v62 = v83;
    v10 = v80;
    v12 = v79;
    v4 = v78;
    v5 = v77;
    a1 = v76;
    v19 = v75;
  }

  else
  {
    (*(v14 + 56))(v21, 1, 1, v13);
    v62 = v83;
  }

  v63 = type metadata accessor for SportsWidgetContentView();
  v64 = a1 + *(v63 + 28);
  if (*(v64 + *(type metadata accessor for SportsWidgetContentViewModel(0) + 44)) == 1)
  {
    v65 = *(a1 + *(v63 + 24) + 168);
    v66 = v82;
    *v82 = v65;
    v67 = sub_100006334(&qword_1001226B8);
    sub_10000E618(a1, v85, (v66 + *(v67 + 44)));
    sub_10000F998(v66, v12, &qword_100122698);
    v68 = 0;
  }

  else
  {
    v68 = 1;
  }

  (*(v5 + 56))(v12, v68, 1, v4);
  v69 = v84;
  sub_10000F8D0(v84, v19, &qword_1001226A8);
  sub_10000F8D0(v12, v10, &qword_1001226A0);
  sub_10000F8D0(v19, v62, &qword_1001226A8);
  v70 = sub_100006334(&qword_1001226B0);
  sub_10000F8D0(v10, v62 + *(v70 + 48), &qword_1001226A0);
  sub_10000F938(v12, &qword_1001226A0);
  sub_10000F938(v69, &qword_1001226A8);
  sub_10000F938(v10, &qword_1001226A0);
  return sub_10000F938(v19, &qword_1001226A8);
}

uint64_t sub_10000E618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v71 = a3;
  v65 = sub_100006334(&qword_1001226C0);
  __chkstk_darwin(v65);
  v64 = (&v56 - v5);
  v63 = sub_100006334(&qword_1001226C8);
  v6 = __chkstk_darwin(v63);
  v70 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v62 = &v56 - v9;
  __chkstk_darwin(v8);
  v67 = &v56 - v10;
  v11 = sub_100006334(&qword_1001225A8);
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = __chkstk_darwin(v11);
  v66 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v56 - v14;
  v16 = type metadata accessor for SportsWidgetContentView();
  v17 = a1 + *(v16 + 28);
  if (*(v17 + *(type metadata accessor for SportsWidgetContentViewModel(0) + 56)) == 1)
  {
    sub_10002F270(&v74);
    *&v72[87] = v79[0];
    *&v72[71] = v78;
    *&v72[55] = v77;
    *&v72[39] = v76;
    *&v72[23] = v75;
    *&v72[7] = v74;
    *(&v80[3] + 1) = *&v72[48];
    *(&v80[4] + 1) = *&v72[64];
    *(&v80[5] + 1) = *&v72[80];
    *(v80 + 1) = *v72;
    *(&v80[1] + 1) = *&v72[16];
    v73 = 0;
    LOBYTE(v80[0]) = 0;
    *&v80[6] = *(&v79[0] + 1);
    *(&v80[2] + 1) = *&v72[32];
    BYTE8(v80[6]) = 0;
  }

  else
  {
    v18 = a1;
    v20 = *(a2 + 16);
    v19 = *(a2 + 24);

    v21 = sub_1000D23BC();
    v22 = [objc_opt_self() labelColor];
    v23 = sub_1000D27DC();
    LOBYTE(v74) = 1;
    *&v80[0] = v20;
    *(&v80[0] + 1) = v19;
    a1 = v18;
    *&v80[1] = v21;
    *(&v80[1] + 1) = v23;
    *&v80[2] = 1;
    BYTE8(v80[2]) = 1;
    v80[3] = xmmword_1000DED50;
    BYTE8(v80[6]) = 1;
  }

  sub_10000F204();
  sub_10000F7F0();
  sub_1000D229C();
  v80[4] = v80[11];
  v80[5] = v81[0];
  *(&v80[5] + 9) = *(v81 + 9);
  v80[0] = v80[7];
  v80[1] = v80[8];
  v80[2] = v80[9];
  v80[3] = v80[10];
  v61 = a2;
  sub_100006334(&qword_1001225F8);
  sub_10000F844();
  sub_1000D262C();
  v78 = v80[4];
  v79[0] = v80[5];
  *(v79 + 9) = *(&v80[5] + 9);
  v74 = v80[0];
  v75 = v80[1];
  v76 = v80[2];
  v77 = v80[3];
  sub_10000F938(&v74, &qword_1001225F8);
  v24 = a1 + *(v16 + 24);

  v59 = sub_1000D28DC();
  v25 = *(v24 + 208);
  KeyPath = swift_getKeyPath();
  v26 = *(v24 + 200);
  v57 = swift_getKeyPath();
  v27 = type metadata accessor for SportsWidgetContentViewLayout();
  v60 = v15;
  v28 = *(v27 + 116);
  v29 = swift_getKeyPath();
  v30 = sub_100006334(&qword_100122598);
  v31 = v64;
  v32 = (v64 + *(v30 + 36));
  v33 = *(sub_100006334(&qword_1001225E8) + 28);
  v34 = sub_1000D28FC();
  (*(*(v34 - 8) + 16))(v32 + v33, v24 + v28, v34);
  *v32 = v29;
  v35 = KeyPath;
  *v31 = v59;
  v31[1] = v35;
  v36 = v57;
  v31[2] = v25;
  v31[3] = v36;
  v31[4] = v26;
  v37 = *(v24 + *(v27 + 120));
  v38 = objc_opt_self();

  v39 = [v38 preferredFontForTextStyle:UIFontTextStyleCaption2];
  [v39 pointSize];
  v41 = v40;

  v42 = (v31 + *(v65 + 36));
  *v42 = v37;
  v42[1] = v41 + -3.0;
  v43 = v62;
  if (*(v61 + 112))
  {
    v44 = 1.0;
  }

  else
  {
    v44 = 0.0;
  }

  sub_10000F998(v31, v62, &qword_1001226C0);
  *(v43 + *(v63 + 36)) = v44;
  v45 = v67;
  sub_10000F998(v43, v67, &qword_1001226C8);
  v47 = v68;
  v46 = v69;
  v48 = *(v68 + 16);
  v49 = v66;
  v50 = v60;
  v48(v66, v60, v69);
  v51 = v70;
  sub_10000F8D0(v45, v70, &qword_1001226C8);
  v52 = v71;
  v48(v71, v49, v46);
  v53 = sub_100006334(&qword_1001226D0);
  sub_10000F8D0(v51, &v52[*(v53 + 48)], &qword_1001226C8);
  sub_10000F938(v45, &qword_1001226C8);
  v54 = *(v47 + 8);
  v54(v50, v46);
  sub_10000F938(v51, &qword_1001226C8);
  return (v54)(v49, v46);
}

unint64_t sub_10000ECE8()
{
  result = qword_1001223B0;
  if (!qword_1001223B0)
  {
    sub_10000637C(&qword_100122370);
    sub_10000ED74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001223B0);
  }

  return result;
}

unint64_t sub_10000ED74()
{
  result = qword_1001223B8;
  if (!qword_1001223B8)
  {
    sub_10000637C(&qword_100122368);
    sub_10000FC38(&qword_1001223C0, &qword_100122360);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001223B8);
  }

  return result;
}

uint64_t sub_10000EE2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_1000D22FC();
  v36 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100006334(&qword_1001226E8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - v11;
  v13 = sub_100006334(&qword_1001226F0);
  __chkstk_darwin(v13);
  v17 = &v30 - v16;
  if (a2)
  {
    v34 = v15;
    v35 = v14;

    sub_1000D22DC();
    v32 = v10;
    v33 = a3;
    v18 = sub_100006334(&qword_1001226F8);
    v31 = v9;
    v19 = v18;
    v20 = sub_10000FC38(&qword_100122700, &qword_1001226F8);
    sub_1000D276C();
    (*(v36 + 8))(v8, v6);
    v37 = a1;
    v38 = a2;
    sub_10000F320();
    v21 = sub_1000D260C();
    v23 = v22;
    v25 = v24;
    v37 = v19;
    v38 = v20;
    swift_getOpaqueTypeConformance2();
    v26 = v31;
    sub_1000D26EC();
    sub_10000F374(v21, v23, v25 & 1);

    (*(v32 + 8))(v12, v26);
    v27 = v33;
    sub_10000F998(v17, v33, &qword_1001226F0);
    return (*(v34 + 56))(v27, 0, 1, v35);
  }

  else
  {
    v29 = *(v15 + 56);

    return v29(a3, 1, 1);
  }
}

unint64_t sub_10000F204()
{
  result = qword_100122418;
  if (!qword_100122418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122418);
  }

  return result;
}

uint64_t sub_10000F258(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000F2C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10000F320()
{
  result = qword_1001224B0;
  if (!qword_1001224B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001224B0);
  }

  return result;
}

uint64_t sub_10000F374(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10000F394()
{
  result = qword_1001224C0;
  if (!qword_1001224C0)
  {
    sub_10000637C(&qword_1001224B8);
    sub_10000F44C();
    sub_10000FC38(&qword_1001224E8, &qword_1001224F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001224C0);
  }

  return result;
}

unint64_t sub_10000F44C()
{
  result = qword_1001224C8;
  if (!qword_1001224C8)
  {
    sub_10000637C(&qword_1001224D0);
    sub_10000FC38(&qword_1001224D8, &qword_1001224E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001224C8);
  }

  return result;
}

unint64_t sub_10000F504()
{
  result = qword_100122550;
  if (!qword_100122550)
  {
    sub_10000637C(&qword_100122540);
    sub_10000F204();
    sub_10000FE34(&qword_100122488, type metadata accessor for SportsWidgetClockView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122550);
  }

  return result;
}

unint64_t sub_10000F670()
{
  result = qword_100122588;
  if (!qword_100122588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122588);
  }

  return result;
}

unint64_t sub_10000F720()
{
  result = qword_1001225C8;
  if (!qword_1001225C8)
  {
    sub_10000637C(&qword_1001225C0);
    sub_10000F394();
    sub_10000FC38(&qword_1001225D0, &qword_1001225D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001225C8);
  }

  return result;
}

unint64_t sub_10000F7F0()
{
  result = qword_1001225F0;
  if (!qword_1001225F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001225F0);
  }

  return result;
}

unint64_t sub_10000F844()
{
  result = qword_100122600;
  if (!qword_100122600)
  {
    sub_10000637C(&qword_1001225F8);
    sub_10000F204();
    sub_10000F7F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122600);
  }

  return result;
}

uint64_t sub_10000F8D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100006334(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000F938(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100006334(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000F998(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100006334(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000FA00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10000FA5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_10000FAC0()
{
  result = qword_1001226D8;
  if (!qword_1001226D8)
  {
    sub_10000637C(&qword_1001226E0);
    sub_10000637C(&qword_100122388);
    sub_10000637C(&qword_100122380);
    sub_10000FC38(&qword_1001223A0, &qword_100122388);
    sub_10000FC38(&qword_1001223A8, &qword_100122380);
    swift_getOpaqueTypeConformance2();
    sub_10000ECE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001226D8);
  }

  return result;
}

uint64_t sub_10000FC38(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000637C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000FC84()
{
  result = qword_100122708;
  if (!qword_100122708)
  {
    sub_10000637C(&qword_100122710);
    sub_10000FD08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122708);
  }

  return result;
}

unint64_t sub_10000FD08()
{
  result = qword_100122718;
  if (!qword_100122718)
  {
    sub_10000637C(&qword_1001226F0);
    sub_10000637C(&qword_1001226F8);
    sub_10000FC38(&qword_100122700, &qword_1001226F8);
    swift_getOpaqueTypeConformance2();
    sub_10000FE34(&qword_100122720, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122718);
  }

  return result;
}

uint64_t sub_10000FE34(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10000FE80()
{
  result = qword_100122748;
  if (!qword_100122748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122748);
  }

  return result;
}

uint64_t sub_10000FF18()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013BF80);
  sub_100006610(v10, qword_10013BF80);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_100010208()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013BF98);
  sub_100006610(v0, qword_10013BF98);
  return sub_1000D188C();
}

uint64_t sub_10001026C()
{
  v0 = sub_100006334(&qword_100122908);
  sub_1000065AC(v0, qword_10013BFB0);
  v1 = sub_100006610(v0, qword_10013BFB0);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10001032C()
{
  result = swift_getKeyPath();
  qword_10013BFC8 = result;
  return result;
}

uint64_t sub_10001035C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_100010380, 0, 0);
}

uint64_t sub_100010380()
{
  sub_1000D154C();
  v0[5] = v0[2];
  v1 = v0[3];
  v2 = v0[4];
  v0[17] = v1;
  v0[18] = v2;
  v0[6] = v1;
  v0[7] = v2;
  sub_1000D154C();
  if (qword_100121F60 != -1)
  {
    swift_once();
  }

  v3 = qword_10013BFC8;
  v0[19] = qword_10013BFC8;

  v4 = swift_task_alloc();
  v0[20] = v4;
  v5 = sub_10000FC38(&qword_1001228D0, &qword_1001228D8);
  v0[21] = v5;
  *v4 = v0;
  v4[1] = sub_1000104E0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 28, v3, &type metadata for TVSettingsAudioLanguage, v5);
}

uint64_t sub_1000104E0()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_100010650;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100010650()
{
  sub_1000D154C();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v0[23] = v2;
  v0[24] = v3;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v3;
  v4 = qword_10013BFC8;
  v0[25] = qword_10013BFC8;

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_100010734;
  v6 = v0[21];

  return AppEntity._value<A, B>(for:)(v0 + 225, v4, v6);
}

uint64_t sub_100010734()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100010944;
  }

  else
  {
    v2 = sub_1000108A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000108A4()
{
  *(v0 + 226) = *(v0 + 225);
  sub_100013778();
  sub_1000D151C();
  v1 = *(v0 + 8);

  return v1();
}

__n128 sub_10001095C@<Q0>(uint64_t a1@<X8>)
{
  sub_1000D154C();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1000109A0()
{

  sub_1000D155C();
}

uint64_t (*sub_100010A08(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t sub_100010A80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000D154C();
  *a1 = v3;
  return result;
}

uint64_t (*sub_100010AF4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

void sub_100010B68(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_100010BB4()
{
  if (qword_100121F60 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100010C14()
{
  result = qword_100122760;
  if (!qword_100122760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122760);
  }

  return result;
}

unint64_t sub_100010C6C()
{
  result = qword_100122768;
  if (!qword_100122768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122768);
  }

  return result;
}

uint64_t sub_100010D90@<X0>(uint64_t a1@<X8>)
{
  if (qword_100121F58 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908);
  v3 = sub_100006610(v2, qword_10013BFB0);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_100010E14(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100013B8C;

  return sub_10001035C(a1, v5, v4);
}

uint64_t sub_100010EC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100013030();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100010F08()
{
  result = qword_100122770;
  if (!qword_100122770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122770);
  }

  return result;
}

unint64_t sub_100010F60()
{
  result = qword_100122778;
  if (!qword_100122778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122778);
  }

  return result;
}

uint64_t sub_100010FD4()
{
  **(v0 + 16) = sub_1000A3324();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100011080()
{
  sub_1000A3A00(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001111C()
{
  v1 = *(v0 + 16);
  *v1 = sub_100013434();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_10001118C()
{
  result = qword_100122780;
  if (!qword_100122780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122780);
  }

  return result;
}

uint64_t sub_1000111E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100012598();
  *v4 = v2;
  v4[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

uint64_t sub_100011290(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_1000113A8()
{
  result = qword_100122788;
  if (!qword_100122788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122788);
  }

  return result;
}

unint64_t sub_100011400()
{
  result = qword_100122790;
  if (!qword_100122790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122790);
  }

  return result;
}

unint64_t sub_100011458()
{
  result = qword_100122798;
  if (!qword_100122798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122798);
  }

  return result;
}

uint64_t sub_1000114AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100012598();
  *v5 = v2;
  v5[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100011560(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_100012598();
  *v4 = v2;
  v4[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

uint64_t sub_100011610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1000116D0;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000116D0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

unint64_t sub_1000117D4()
{
  result = qword_1001227A0;
  if (!qword_1001227A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001227A0);
  }

  return result;
}

unint64_t sub_10001182C()
{
  result = qword_1001227A8;
  if (!qword_1001227A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001227A8);
  }

  return result;
}

unint64_t sub_100011884()
{
  result = qword_1001227B0;
  if (!qword_1001227B0)
  {
    sub_10000637C(&qword_1001227B8);
    sub_10001182C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001227B0);
  }

  return result;
}

uint64_t sub_100011908(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001118C();
  *v5 = v2;
  v5[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1000119BC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100011AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000119BC;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

__n128 sub_100011B7C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100011B90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100011BD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100011C28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100011C70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100011D1C(uint64_t a1)
{
  v2 = sub_1000123E8();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_100011458();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_100011DC4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_100011DD0()
{
  sub_100012314();
  v1 = sub_1000D169C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100011E74@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_100006610(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100011F1C(uint64_t a1)
{
  v2 = sub_100011458();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100011F68(uint64_t a1)
{
  v2 = sub_100010F60();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100011FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100013B8C;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100012078(uint64_t a1)
{
  v2 = sub_10001212C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000120C8()
{
  result = qword_1001227D0;
  if (!qword_1001227D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001227D0);
  }

  return result;
}

unint64_t sub_10001212C()
{
  result = qword_1001227D8;
  if (!qword_1001227D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001227D8);
  }

  return result;
}

unint64_t sub_100012180()
{
  result = qword_1001227E0;
  if (!qword_1001227E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001227E0);
  }

  return result;
}

unint64_t sub_1000121D8()
{
  result = qword_1001227E8;
  if (!qword_1001227E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001227E8);
  }

  return result;
}

unint64_t sub_100012234()
{
  result = qword_1001227F0;
  if (!qword_1001227F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001227F0);
  }

  return result;
}

unint64_t sub_100012288(void *a1)
{
  a1[1] = sub_1000122C0();
  a1[2] = sub_100012314();
  result = sub_100010F60();
  a1[3] = result;
  return result;
}

unint64_t sub_1000122C0()
{
  result = qword_100122840;
  if (!qword_100122840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122840);
  }

  return result;
}

unint64_t sub_100012314()
{
  result = qword_100122848;
  if (!qword_100122848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122848);
  }

  return result;
}

unint64_t sub_10001236C()
{
  result = qword_100122850;
  if (!qword_100122850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122850);
  }

  return result;
}

unint64_t sub_1000123C0(uint64_t a1)
{
  result = sub_1000123E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000123E8()
{
  result = qword_100122888;
  if (!qword_100122888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122888);
  }

  return result;
}

unint64_t sub_100012484()
{
  result = qword_1001228A0;
  if (!qword_1001228A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001228A0);
  }

  return result;
}

unint64_t sub_1000124DC()
{
  result = qword_1001228A8;
  if (!qword_1001228A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001228A8);
  }

  return result;
}

unint64_t sub_100012534()
{
  result = qword_1001228B0;
  if (!qword_1001228B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001228B0);
  }

  return result;
}

unint64_t sub_100012598()
{
  result = qword_1001228B8;
  if (!qword_1001228B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001228B8);
  }

  return result;
}

uint64_t sub_1000125EC@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_1000D32BC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100006334(&qword_100122960);
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  __chkstk_darwin(v2);
  v34 = v33 - v4;
  v5 = sub_100006334(&qword_100122968);
  v6 = *(v5 - 8);
  v40 = v5;
  v41 = v6;
  __chkstk_darwin(v5);
  v35 = v33 - v7;
  v8 = sub_100006334(&qword_100122970);
  v9 = *(v8 - 8);
  v42 = v8;
  v43 = v9;
  __chkstk_darwin(v8);
  v36 = v33 - v10;
  v11 = sub_100006334(&qword_100122978);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  __chkstk_darwin(v11);
  v37 = v33 - v13;
  strcpy(v47, "com.apple.tv.");
  HIWORD(v47[1]) = -4864;
  v14 = sub_1000138F0();
  v15 = *(v14 + 40);
  v54._countAndFlagsBits = (v15)(&type metadata for TVSettingsAudioLanguageWidget, v14);
  sub_1000D366C(v54);

  v33[3] = v47[0];
  v33[2] = v47[1];
  v33[1] = *aAudioLanguage_0;
  swift_getKeyPath();

  sub_1000D32AC();
  sub_100006334(&qword_100122988);
  sub_100013724();
  sub_100013944();
  sub_100010F60();
  sub_100013998();
  v16 = v34;
  sub_1000D32CC();
  v47[0] = v15();
  v47[1] = v17;
  v52 = 0x746567646957;
  v53 = 0xE600000000000000;
  v50 = 0x656C67676F54;
  v51 = 0xE600000000000000;
  v32 = sub_10000F320();
  v18 = sub_1000D387C();
  v20 = v19;

  v47[0] = v18;
  v47[1] = v20;
  v21 = sub_10000FC38(&qword_1001229A0, &qword_100122960);
  v22 = v35;
  v23 = v38;
  sub_1000D223C();

  (*(v39 + 8))(v16, v23);
  v52 = qword_100122738;
  v53 = off_100122740;
  v47[0] = v23;
  v47[1] = &type metadata for String;
  v48 = v21;
  v49 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v36;
  v26 = v40;
  sub_1000D21FC();
  (*(v41 + 8))(v22, v26);
  v47[0] = v26;
  v47[1] = &type metadata for String;
  v48 = OpaqueTypeConformance2;
  v49 = v32;
  v27 = swift_getOpaqueTypeConformance2();
  v28 = v37;
  v29 = v42;
  sub_1000D224C();
  (*(v43 + 8))(v25, v29);
  v47[0] = v29;
  v47[1] = v27;
  swift_getOpaqueTypeConformance2();
  v30 = v44;
  sub_1000D227C();
  return (*(v45 + 8))(v28, v30);
}

uint64_t sub_100012C58@<X0>(uint64_t a1@<X8>)
{
  sub_10000F320();

  result = sub_1000D260C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100012CCC@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000D164C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000D18BC();
  v9 = __chkstk_darwin(v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v33 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v33 - v17;
  v19 = *a1;
  if (qword_100122098 != -1)
  {
    v32 = v16;
    result = swift_once();
    v16 = v32;
  }

  v20 = qword_10013C2C0;
  v21 = *(qword_10013C2C0 + 16);
  if (!v21)
  {
    v25 = 0;
    v27 = 0;
LABEL_8:
    v31 = 0;
    goto LABEL_9;
  }

  v34 = v16;

  v22 = sub_100023370(v19);
  if ((v23 & 1) == 0)
  {

    v25 = 0;
    v27 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  (*(v5 + 16))(v7, *(v20 + 56) + *(v5 + 72) * v22, v4);

  sub_1000D160C();
  (*(v5 + 8))(v7, v4);
  v24 = v34;
  (*(v34 + 32))(v18, v14, v8);
  (*(v24 + 16))(v11, v18, v8);
  v25 = sub_1000D25FC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  result = (*(v24 + 8))(v18, v8);
  v21 = v29 & 1;
LABEL_9:
  *a2 = v25;
  a2[1] = v27;
  a2[2] = v21;
  a2[3] = v31;
  return result;
}

uint64_t sub_100012FA8(char *a1)
{
  sub_10005F6D4(*a1);
  sub_10000F320();
  sub_1000D260C();
  return sub_1000D334C();
}

uint64_t sub_100013030()
{
  v27 = sub_1000D168C();
  v0 = *(v27 - 8);
  __chkstk_darwin(v27);
  v26 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100006334(&qword_1001228E8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v8 - 8);
  v10 = &v19 - v9;
  v11 = sub_1000D18BC();
  v25 = v11;
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v22 = sub_100006334(&qword_1001228F0);
  sub_1000D188C();
  v13 = *(v12 + 56);
  v23 = v12 + 56;
  v24 = v13;
  v13(v10, 1, 1, v11);
  v14 = sub_1000D150C();
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v15 = *(*(v14 - 8) + 56);
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v21 = enum case for InputConnectionBehavior.default(_:);
  v16 = *(v0 + 104);
  v19 = v0 + 104;
  v20 = v16;
  v17 = v26;
  v16(v26);
  sub_100011458();
  v22 = sub_1000D157C();
  sub_100006334(&qword_1001228F8);
  sub_1000D188C();
  v24(v10, 1, 1, v25);
  LOBYTE(v28) = -114;
  v15(v7, 1, 1, v14);
  v15(v5, 1, 1, v14);
  v20(v17, v21, v27);
  sub_100013724();
  sub_1000D156C();
  return v22;
}

uint64_t sub_100013434()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v9[1] = &type metadata for TVSettingsSelectedAudioLanguageEntity;
  sub_100006334(&qword_1001228C8);
  v7 = sub_1000D361C();
  sub_100006334(&qword_100122758);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_1001228D0, &qword_1001228D8);
  sub_100013724();
  sub_1000D178C();
  return v7;
}

unint64_t sub_100013724()
{
  result = qword_1001228E0;
  if (!qword_1001228E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001228E0);
  }

  return result;
}

unint64_t sub_100013778()
{
  result = qword_100122900;
  if (!qword_100122900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122900);
  }

  return result;
}

uint64_t sub_1000137D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100006334(&qword_100122908);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100013874(uint64_t a1)
{
  result = sub_10001389C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001389C()
{
  result = qword_100122958;
  if (!qword_100122958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122958);
  }

  return result;
}

unint64_t sub_1000138F0()
{
  result = qword_100122980;
  if (!qword_100122980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122980);
  }

  return result;
}

unint64_t sub_100013944()
{
  result = qword_100122990;
  if (!qword_100122990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122990);
  }

  return result;
}

unint64_t sub_100013998()
{
  result = qword_100122998;
  if (!qword_100122998)
  {
    sub_10000637C(&qword_100122988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122998);
  }

  return result;
}

uint64_t sub_100013A14()
{
  sub_10000637C(&qword_100122978);
  sub_10000637C(&qword_100122970);
  sub_10000637C(&qword_100122968);
  sub_10000637C(&qword_100122960);
  sub_10000FC38(&qword_1001229A0, &qword_100122960);
  sub_10000F320();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

double sub_100013BB0@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  v9 = [v8 labelColor];
  v10 = sub_1000D27DC();
  v11 = [v8 labelColor];
  v12 = sub_1000D27DC();
  *a4 = a1;
  *(a4 + 8) = v10;
  *(a4 + 16) = 1;
  *(a4 + 24) = a2;
  *(a4 + 32) = 1;
  *(a4 + 40) = v12;
  *(a4 + 48) = 1;
  *(a4 + 56) = a3;
  *(a4 + 64) = 1;
  result = 0.75;
  *(a4 + 72) = xmmword_1000DFB30;
  *(a4 + 88) = 0;
  return result;
}

__n128 sub_100013C68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100013C84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100013CCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100013D34(uint64_t a1)
{
  v2 = sub_100006334(&qword_1001229A8);
  __chkstk_darwin(v2 - 8);
  v4 = v24 - v3;
  v5 = sub_100006334(&qword_100122380);
  __chkstk_darwin(v5 - 8);
  v7 = v24 - v6;
  v8 = sub_1000D1DBC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v28 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v24 - v13;
  __chkstk_darwin(v12);
  v16 = v24 - v15;
  v17 = *(v9 + 16);
  v17(v24 - v15, a1, v8);
  v17(v14, v16, v8);
  v18 = *(v9 + 104);
  v18(v7, enum case for DynamicTypeSize.xxxLarge(_:), v8);
  v27 = sub_10001410C(&qword_1001223D0);
  result = sub_1000D357C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v25 = v18;
  v26 = v4;
  v24[1] = sub_10001410C(&qword_100122460);
  v20 = sub_1000D355C();
  sub_10000F938(v7, &qword_100122380);
  v21 = *(v9 + 8);
  v21(v14, v8);
  if (v20)
  {
    return (v21)(v16, v8);
  }

  result = (*(v9 + 88))(v16, v8);
  if (result != enum case for DynamicTypeSize.accessibility1(_:) && result != enum case for DynamicTypeSize.accessibility2(_:))
  {
    v22 = v28;
    (v17)(v28, v16, v8, 10.0);
    v23 = v26;
    v25(v26, enum case for DynamicTypeSize.accessibility3(_:), v8);
    result = sub_1000D357C();
    if (result)
    {
      sub_1000D355C();
      sub_10000F938(v23, &qword_1001229A8);
      v21(v22, v8);
      return (v21)(v16, v8);
    }

LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_10001410C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000D1DBC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100014150(uint64_t a1)
{
  v2 = sub_100006334(&qword_1001229A8);
  __chkstk_darwin(v2 - 8);
  v4 = v24 - v3;
  v5 = sub_100006334(&qword_100122380);
  __chkstk_darwin(v5 - 8);
  v7 = v24 - v6;
  v8 = sub_1000D1DBC();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v28 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v24 - v13;
  __chkstk_darwin(v12);
  v16 = v24 - v15;
  v17 = *(v9 + 16);
  v17(v24 - v15, a1, v8);
  v17(v14, v16, v8);
  v18 = *(v9 + 104);
  v18(v7, enum case for DynamicTypeSize.xxxLarge(_:), v8);
  v27 = sub_10001410C(&qword_1001223D0);
  result = sub_1000D357C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v25 = v18;
  v26 = v4;
  v24[1] = sub_10001410C(&qword_100122460);
  v20 = sub_1000D355C();
  sub_10000F938(v7, &qword_100122380);
  v21 = *(v9 + 8);
  v21(v14, v8);
  if (v20)
  {
    return (v21)(v16, v8);
  }

  result = (*(v9 + 88))(v16, v8);
  if (result != enum case for DynamicTypeSize.accessibility1(_:) && result != enum case for DynamicTypeSize.accessibility2(_:))
  {
    v22 = v28;
    (v17)(v28, v16, v8, 16.0);
    v23 = v26;
    v25(v26, enum case for DynamicTypeSize.accessibility3(_:), v8);
    result = sub_1000D357C();
    if (result)
    {
      sub_1000D355C();
      sub_10000F938(v23, &qword_1001229A8);
      v21(v22, v8);
      return (v21)(v16, v8);
    }

LABEL_10:
    __break(1u);
  }

  return result;
}

unint64_t sub_10001452C()
{
  result = qword_1001229B8;
  if (!qword_1001229B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001229B8);
  }

  return result;
}

uint64_t sub_1000145C4()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013BFD0);
  sub_100006610(v10, qword_10013BFD0);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_1000148B4()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013BFE8);
  sub_100006610(v0, qword_10013BFE8);
  return sub_1000D188C();
}

uint64_t sub_100014918()
{
  v0 = sub_100006334(&qword_100122908);
  sub_1000065AC(v0, qword_10013C000);
  v1 = sub_100006610(v0, qword_10013C000);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1000149D8()
{
  result = swift_getKeyPath();
  qword_10013C018 = result;
  return result;
}

uint64_t sub_100014A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_100014A24, 0, 0);
}

uint64_t sub_100014A24()
{
  sub_1000D154C();
  v1 = *(v0 + 24);
  *(v0 + 40) = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2;
  sub_1000D154C();
  *(v0 + 225) = *(v0 + 224);
  if (qword_100121F80 != -1)
  {
    swift_once();
  }

  v3 = qword_10013C018;
  *(v0 + 152) = qword_10013C018;

  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  v5 = sub_10000FC38(&qword_100122B40, &qword_100122B48);
  *(v0 + 168) = v5;
  *v4 = v0;
  v4[1] = sub_100014B90;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 225, v3, &type metadata for Bool, v5);
}

uint64_t sub_100014B90()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_10001092C;
  }

  else
  {
    v2 = sub_100014D00;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100014D00()
{
  sub_1000D154C();
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[10];
  v0[23] = v2;
  v0[24] = v3;
  v0[11] = v1;
  v0[12] = v2;
  v0[13] = v3;
  v4 = qword_10013C018;
  v0[25] = qword_10013C018;

  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_100014DE4;
  v6 = v0[21];

  return AppEntity._value<A, B>(for:)(v0 + 226, v4, v6);
}

uint64_t sub_100014DE4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_100010944;
  }

  else
  {
    v2 = sub_100014F54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100014F54()
{
  *(v0 + 227) = *(v0 + 226);
  sub_10001726C();
  sub_1000D151C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t (*sub_100014FDC(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100010A7C;
}

uint64_t (*sub_100015050(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D153C();
  return sub_100013B94;
}

uint64_t sub_1000150C4()
{
  if (qword_100121F80 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100015124()
{
  result = qword_1001229D0;
  if (!qword_1001229D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001229D0);
  }

  return result;
}

unint64_t sub_10001517C()
{
  result = qword_1001229D8;
  if (!qword_1001229D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001229D8);
  }

  return result;
}

uint64_t sub_10001528C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100121F78 != -1)
  {
    swift_once();
  }

  v2 = sub_100006334(&qword_100122908);
  v3 = sub_100006610(v2, qword_10013C000);

  return sub_1000137D8(v3, a1);
}

uint64_t sub_100015310(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100013B8C;

  return sub_100014A00(a1, v5, v4);
}

uint64_t sub_1000153BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100016B20();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_100015404()
{
  result = qword_1001229E0;
  if (!qword_1001229E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001229E0);
  }

  return result;
}

unint64_t sub_10001545C()
{
  result = qword_1001229E8;
  if (!qword_1001229E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001229E8);
  }

  return result;
}

uint64_t sub_1000154D0()
{
  if (qword_100122140 != -1)
  {
    swift_once();
  }

  v1 = sub_100016258();
  v2 = (*(v1 + 48))(&type metadata for TVSettingsPlaybackUseCellularEntity, v1);
  v4 = v3;
  if (qword_100122148 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = off_1001260A0;
  if (*(off_1001260A0 + 2) && (v6 = sub_1000232F8(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(v5[7] + v6);
  }

  else
  {
    v8 = 0;
  }

  swift_endAccess();

  **(v0 + 40) = sub_1000B8110(v8) & 1;
  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100015680()
{
  sub_10006EF28(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10001571C()
{
  v1 = *(v0 + 16);
  *v1 = sub_100016F88();
  v1[1] = v2;
  v1[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_10001578C()
{
  result = qword_1001229F0;
  if (!qword_1001229F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001229F0);
  }

  return result;
}

uint64_t sub_1000157E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000163FC();
  *v4 = v2;
  v4[1] = sub_100011290;

  return _UniqueEntityQuery.allEntities()(a2, v5);
}

unint64_t sub_100015894()
{
  result = qword_1001229F8;
  if (!qword_1001229F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001229F8);
  }

  return result;
}

unint64_t sub_1000158EC()
{
  result = qword_100122A00;
  if (!qword_100122A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122A00);
  }

  return result;
}

unint64_t sub_100015944()
{
  result = qword_100122A08;
  if (!qword_100122A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122A08);
  }

  return result;
}

uint64_t sub_100015998(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1000163FC();
  *v5 = v2;
  v5[1] = sub_100013BAC;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v6);
}

uint64_t sub_100015A4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_1000163FC();
  *v4 = v2;
  v4[1] = sub_100013B90;

  return _UniqueEntityQuery.suggestedEntities()(a2, v5);
}

unint64_t sub_100015B00()
{
  result = qword_100122A10;
  if (!qword_100122A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122A10);
  }

  return result;
}

unint64_t sub_100015B58()
{
  result = qword_100122A18;
  if (!qword_100122A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122A18);
  }

  return result;
}

unint64_t sub_100015BB0()
{
  result = qword_100122A20;
  if (!qword_100122A20)
  {
    sub_10000637C(&qword_100122A28);
    sub_100015B58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122A20);
  }

  return result;
}

uint64_t sub_100015C34(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001578C();
  *v5 = v2;
  v5[1] = sub_1000119BC;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_100015D5C(uint64_t a1)
{
  v2 = sub_100016258();
  v3 = (*(v2 + 48))(a1, v2);
  v5 = sub_1000540F4(v3, v4);

  if (v5 == 19)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = sub_1000A173C(v6);
  v9 = v8;
  v10 = sub_100015944();

  return _EntityURLRepresentation.init(_:)(v7, v9, a1, v10);
}

uint64_t sub_100015E04()
{
  sub_1000161D0();
  v1 = sub_1000D169C();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_100015EA8(uint64_t a1)
{
  v2 = sub_100015944();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100015EF4(uint64_t a1)
{
  v2 = sub_10001545C();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100015F40(uint64_t a1)
{
  v2 = sub_100015FE8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100015F90()
{
  result = qword_100122A40;
  if (!qword_100122A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122A40);
  }

  return result;
}

unint64_t sub_100015FE8()
{
  result = qword_100122A48;
  if (!qword_100122A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122A48);
  }

  return result;
}

unint64_t sub_10001603C()
{
  result = qword_100122A50;
  if (!qword_100122A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122A50);
  }

  return result;
}

unint64_t sub_100016094()
{
  result = qword_100122A58;
  if (!qword_100122A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122A58);
  }

  return result;
}

unint64_t sub_1000160F0()
{
  result = qword_100122A60;
  if (!qword_100122A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122A60);
  }

  return result;
}

unint64_t sub_100016144(void *a1)
{
  a1[1] = sub_10001617C();
  a1[2] = sub_1000161D0();
  result = sub_10001545C();
  a1[3] = result;
  return result;
}

unint64_t sub_10001617C()
{
  result = qword_100122AB0;
  if (!qword_100122AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122AB0);
  }

  return result;
}

unint64_t sub_1000161D0()
{
  result = qword_100122AB8;
  if (!qword_100122AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122AB8);
  }

  return result;
}

unint64_t sub_100016230(uint64_t a1)
{
  result = sub_100016258();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100016258()
{
  result = qword_100122B00;
  if (!qword_100122B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B00);
  }

  return result;
}

unint64_t sub_1000162F4()
{
  result = qword_100122B18;
  if (!qword_100122B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B18);
  }

  return result;
}

unint64_t sub_10001634C()
{
  result = qword_100122B20;
  if (!qword_100122B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B20);
  }

  return result;
}

unint64_t sub_1000163A4()
{
  result = qword_100122B28;
  if (!qword_100122B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B28);
  }

  return result;
}

unint64_t sub_1000163FC()
{
  result = qword_100122B30;
  if (!qword_100122B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B30);
  }

  return result;
}

uint64_t sub_100016450@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v1 = sub_100006334(&qword_100122BC8);
  v2 = *(v1 - 8);
  v36 = v1;
  v37 = v2;
  __chkstk_darwin(v1);
  v32 = &v32 - v3;
  v4 = sub_100006334(&qword_100122BD0);
  v5 = *(v4 - 8);
  v38 = v4;
  v39 = v5;
  __chkstk_darwin(v4);
  v33 = &v32 - v6;
  v7 = sub_100006334(&qword_100122BD8);
  v8 = *(v7 - 8);
  v40 = v7;
  v41 = v8;
  __chkstk_darwin(v7);
  v34 = &v32 - v9;
  v10 = sub_100006334(&qword_100122BE0);
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  __chkstk_darwin(v10);
  v35 = &v32 - v12;
  strcpy(v45, "com.apple.tv.");
  HIWORD(v45[1]) = -4864;
  v13 = sub_10001739C();
  v14 = *(v13 + 40);
  v52._countAndFlagsBits = (v14)(&type metadata for TVSettingsPlaybackUseCellularWidget, v13);
  sub_1000D366C(v52);

  swift_getKeyPath();
  sub_100006334(&qword_100122BE8);
  sub_10001545C();
  sub_10000FC38(&qword_100122BF0, &qword_100122BE8);
  v15 = v32;
  sub_1000D32DC();
  v45[0] = v14();
  v45[1] = v16;
  v50 = 0x746567646957;
  v51 = 0xE600000000000000;
  v48 = 0x656C67676F54;
  v49 = 0xE600000000000000;
  v31 = sub_10000F320();
  v17 = sub_1000D387C();
  v19 = v18;

  v45[0] = v17;
  v45[1] = v19;
  v20 = sub_10000FC38(&qword_100122BF8, &qword_100122BC8);
  v21 = v33;
  v22 = v36;
  sub_1000D223C();

  (*(v37 + 8))(v15, v22);
  v50 = 0xD000000000000033;
  v51 = 0x80000001000D6D80;
  v45[0] = v22;
  v45[1] = &type metadata for String;
  v46 = v20;
  v47 = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v34;
  v25 = v38;
  sub_1000D21FC();
  (*(v39 + 8))(v21, v25);
  v45[0] = v25;
  v45[1] = &type metadata for String;
  v46 = OpaqueTypeConformance2;
  v47 = v31;
  v26 = swift_getOpaqueTypeConformance2();
  v27 = v35;
  v28 = v40;
  sub_1000D224C();
  (*(v41 + 8))(v24, v28);
  v45[0] = v28;
  v45[1] = v26;
  swift_getOpaqueTypeConformance2();
  v29 = v42;
  sub_1000D227C();
  return (*(v43 + 8))(v27, v29);
}

uint64_t sub_100016AA8@<X0>(uint64_t a1@<X8>)
{
  sub_10000F320();
  result = sub_1000D260C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_100016B20()
{
  v0 = sub_100006334(&qword_100122B50);
  __chkstk_darwin(v0 - 8);
  v28 = v22 - v1;
  v29 = sub_1000D168C();
  v2 = *(v29 - 8);
  __chkstk_darwin(v29);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100006334(&qword_1001228E8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  v11 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v11 - 8);
  v13 = v22 - v12;
  v14 = sub_1000D18BC();
  v27 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v22[0] = sub_100006334(&qword_100122B58);
  sub_1000D188C();
  v16 = *(v15 + 56);
  v25 = v15 + 56;
  v26 = v16;
  v16(v13, 1, 1, v14);
  v17 = sub_1000D150C();
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v24 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v22[1] = v2 + 104;
  v23 = v19;
  v19(v4);
  sub_100015944();
  v22[0] = sub_1000D157C();
  sub_100006334(&qword_100122B60);
  sub_1000D188C();
  v26(v13, 1, 1, v27);
  LOBYTE(v30) = 2;
  v20 = sub_1000D36FC();
  (*(*(v20 - 8) + 56))(v28, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v23(v4, v24, v29);
  sub_1000D158C();
  return v22[0];
}

uint64_t sub_100016F88()
{
  v0 = sub_1000D189C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D1A2C();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000D35EC();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D18BC();
  __chkstk_darwin(v6 - 8);
  v9[1] = &type metadata for TVSettingsPlaybackUseCellularEntity;
  sub_100006334(&qword_100122B38);
  v7 = sub_1000D361C();
  sub_100006334(&qword_1001229C8);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_1000D18CC();
  sub_10000FC38(&qword_100122B40, &qword_100122B48);
  sub_1000D179C();
  return v7;
}

unint64_t sub_10001726C()
{
  result = qword_100122B68;
  if (!qword_100122B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122B68);
  }

  return result;
}

unint64_t sub_1000172F8(uint64_t a1)
{
  result = sub_100017320();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100017320()
{
  result = qword_100122BB8;
  if (!qword_100122BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122BB8);
  }

  return result;
}

unint64_t sub_100017374(uint64_t a1)
{
  result = sub_10001739C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10001739C()
{
  result = qword_100122BC0;
  if (!qword_100122BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122BC0);
  }

  return result;
}

uint64_t sub_1000173F0()
{
  sub_10000637C(&qword_100122BE0);
  sub_10000637C(&qword_100122BD8);
  sub_10000637C(&qword_100122BD0);
  sub_10000637C(&qword_100122BC8);
  sub_10000FC38(&qword_100122BF8, &qword_100122BC8);
  sub_10000F320();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100017578(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E69747563657865;
  v4 = 0xE900000000000067;
  if (v2 != 1)
  {
    v3 = 0x64656873696E6966;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C616974696E69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x6E69747563657865;
  v8 = 0xE900000000000067;
  if (*a2 != 1)
  {
    v7 = 0x64656873696E6966;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C616974696E69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1000D39CC();
  }

  return v11 & 1;
}

Swift::Int sub_100017684()
{
  sub_1000D3A4C();
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_10001772C()
{
  sub_1000D364C();
}

Swift::Int sub_1000177C0()
{
  sub_1000D3A4C();
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_100017864@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100018658(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100017894(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000067;
  v5 = 0x6E69747563657865;
  if (v2 != 1)
  {
    v5 = 0x64656873696E6966;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C616974696E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100017960()
{
  v0 = sub_100018798(&off_100118D40);
  result = swift_arrayDestroy();
  off_100122C00 = v0;
  return result;
}

uint64_t sub_1000179AC(char a1)
{
  if (qword_100121F88 != -1)
  {
LABEL_25:
    swift_once();
  }

  v3 = off_100122C00 + 56;
  v4 = 1 << *(off_100122C00 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(off_100122C00 + 7);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  if (v6)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *&v3[8 * v9];
    ++v8;
    if (v6)
    {
      v8 = v9;
      do
      {
LABEL_10:
        v6 &= v6 - 1;

        v10 = sub_1000D35FC();
        [v1 willChangeValueForKey:v10];
      }

      while (v6);
      continue;
    }
  }

  v11 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation_lock;
  swift_beginAccess();
  os_unfair_lock_lock(&v1[v11]);
  v1[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__state] = a1;
  os_unfair_lock_unlock(&v1[v11]);
  swift_endAccess();
  a1 = off_100122C00;
  v12 = off_100122C00 + 56;
  v13 = 1 << *(off_100122C00 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(off_100122C00 + 7);
  v16 = (v13 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v17 = 0;
  if (v15)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_24;
    }

    if (v18 >= v16)
    {
      break;
    }

    v15 = *&v12[8 * v18];
    ++v17;
    if (v15)
    {
      v17 = v18;
      do
      {
LABEL_20:
        v15 &= v15 - 1;

        v19 = sub_1000D35FC();
        [v1 didChangeValueForKey:v19];
      }

      while (v15);
      continue;
    }
  }
}

uint64_t sub_100017C78()
{
  v1 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation_lock;
  swift_beginAccess();
  os_unfair_lock_lock((v0 + v1));
  v2 = *(v0 + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__state);
  os_unfair_lock_unlock((v0 + v1));
  swift_endAccess();
  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1000D39CC();
  }

  return v3 & 1;
}

uint64_t sub_100017D94()
{
  if ([v0 isCancelled])
  {
    v1 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation_lock;
    swift_beginAccess();
    os_unfair_lock_lock(&v0[v1]);
    v2 = v0[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__state];
    os_unfair_lock_unlock(&v0[v1]);
    swift_endAccess();
    if (v2 == 1)
    {
    }

    else
    {
      v3 = sub_1000D39CC();

      if ((v3 & 1) == 0)
      {
        v6 = 1;
        return v6 & 1;
      }
    }
  }

  v4 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation_lock;
  swift_beginAccess();
  os_unfair_lock_lock(&v0[v4]);
  v5 = v0[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__state];
  os_unfair_lock_unlock(&v0[v4]);
  swift_endAccess();
  if (v5 > 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1000D39CC();
  }

  return v6 & 1;
}

uint64_t sub_100017F48()
{
  v1 = v0;
  result = sub_100002C80();
  if (result)
  {
    v3 = result;
    sub_100006334(&qword_100122C50);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1000E0440;
    if (*(v0 + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8))
    {
      v5 = *(v0 + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier);
      v6 = *(v0 + OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8);
    }

    else
    {
      sub_1000186A4();
      v7 = sub_1000D381C();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1000E0440;
      *(v8 + 56) = type metadata accessor for TVWidgetAsyncOperation();
      *(v8 + 64) = sub_1000186F0();
      *(v8 + 32) = v0;
      v9 = v0;
      v10 = sub_1000D382C();

      v5 = sub_1000D360C();
      v6 = v11;
    }

    *(v4 + 56) = &type metadata for String;
    *(v4 + 64) = sub_100018744();
    *(v4 + 32) = v5;
    *(v4 + 40) = v6;

    sub_1000D37AC();
    sub_1000D1B2C();

    result = [v1 isCancelled];
    if ((result & 1) == 0)
    {
      sub_1000179AC(1);
      v12 = *((swift_isaMask & *v1) + 0xE0);

      return v12();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000181E8()
{
  v1 = OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation_lock;
  swift_beginAccess();
  os_unfair_lock_lock(&v0[v1]);
  v2 = v0[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__state];
  os_unfair_lock_unlock(&v0[v1]);
  swift_endAccess();
  if (v2 == 1)
  {
  }

  else
  {
    v3 = sub_1000D39CC();

    if ((v3 & 1) == 0)
    {
      return result;
    }
  }

  result = sub_100002C80();
  if (result)
  {
    v5 = result;
    sub_100006334(&qword_100122C50);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1000E0440;
    if (*&v0[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8])
    {
      v7 = *&v0[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier];
      v8 = *&v0[OBJC_IVAR____TtC17TVWidgetExtension22TVWidgetAsyncOperation__logIdentifier + 8];
    }

    else
    {
      sub_1000186A4();
      v9 = v0;
      v10 = sub_1000D381C();
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1000E0440;
      *(v11 + 56) = type metadata accessor for TVWidgetAsyncOperation();
      *(v11 + 64) = sub_1000186F0();
      *(v11 + 32) = v9;
      v12 = v9;
      v13 = sub_1000D382C();

      v7 = sub_1000D360C();
      v8 = v14;
    }

    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_100018744();
    *(v6 + 32) = v7;
    *(v6 + 40) = v8;

    sub_1000D37AC();
    sub_1000D1B2C();

    return sub_1000179AC(2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100018444()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVWidgetAsyncOperation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for CompetitorShootoutsViewModel.ShootoutState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CompetitorShootoutsViewModel.ShootoutState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100018604()
{
  result = qword_100122C48;
  if (!qword_100122C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122C48);
  }

  return result;
}

uint64_t sub_100018658(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100118CD8;
  v6._object = a2;
  v4 = sub_1000D39AC(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000186A4()
{
  result = qword_100122C58;
  if (!qword_100122C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100122C58);
  }

  return result;
}

unint64_t sub_1000186F0()
{
  result = qword_100122C60;
  if (!qword_100122C60)
  {
    type metadata accessor for TVWidgetAsyncOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122C60);
  }

  return result;
}

unint64_t sub_100018744()
{
  result = qword_100122C68;
  if (!qword_100122C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122C68);
  }

  return result;
}

Swift::Int sub_100018798(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100006334(&qword_100122C70);
    v3 = sub_1000D38BC();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1000D3A4C();

      sub_1000D364C();
      result = sub_1000D3A6C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1000D39CC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100018900@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000D24AC();
  v2 = objc_opt_self();
  v3 = [v2 labelColor];
  *(a1 + 8) = sub_1000D27DC();
  *(a1 + 16) = 1;
  *(a1 + 24) = 1;
  *(a1 + 32) = xmmword_1000E0550;
  *(a1 + 48) = sub_1000D2B4C();
  *(a1 + 56) = v4;
  *(a1 + 64) = sub_1000D21BC();
  *(a1 + 72) = 0;
  v5 = [v2 labelColor];
  *(a1 + 80) = sub_1000D27DC();
  *(a1 + 88) = sub_1000D248C();
  *(a1 + 96) = sub_1000D240C();
  sub_1000D244C();
  *(a1 + 104) = v6;
  *(a1 + 112) = 1;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0x3FE0000000000000;
  *(a1 + 136) = 0xD000000000000015;
  *(a1 + 144) = 0x80000001000D6F00;
  *(a1 + 152) = sub_1000D249C();
  v7 = [v2 labelColor];
  *(a1 + 160) = sub_1000D27DC();
  v8 = type metadata accessor for SportsWidgetDynamicIslandExpandedViewLayout();
  v9 = *(v8 + 92);
  v10 = enum case for Image.Scale.small(_:);
  v11 = sub_1000D28FC();
  result = (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  *(a1 + *(v8 + 96)) = 0;
  return result;
}

double sub_100018A64@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000D23DC();
  v3 = objc_opt_self();
  v4 = [v3 labelColor];
  v5 = sub_1000D27DC();
  v6 = [v3 labelColor];
  v7 = sub_1000D27DC();
  v8 = [v3 labelColor];
  v9 = sub_1000D27DC();
  v10 = sub_1000D23DC();
  *a1 = 0x401C000000000000;
  *(a1 + 8) = v2;
  *(a1 + 16) = v5;
  *(a1 + 24) = 1;
  *(a1 + 32) = 1;
  result = 0.3;
  *(a1 + 40) = xmmword_1000DED50;
  *(a1 + 56) = 0x4036000000000000;
  *(a1 + 64) = v7;
  *(a1 + 72) = v9;
  *(a1 + 80) = v10;
  *(a1 + 88) = 1;
  *(a1 + 96) = 1;
  *(a1 + 104) = 0x3FE0000000000000;
  return result;
}

uint64_t type metadata accessor for SportsWidgetDynamicIslandExpandedViewLayout()
{
  result = qword_100122CD0;
  if (!qword_100122CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100018BA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000D28FC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 92);

    return v9(v10, a2, v8);
  }
}

void *sub_100018C60(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000D28FC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 92);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100018D04()
{
  result = sub_1000D28FC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_100018DF8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_100018E1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100018E64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100018ED0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100018EF4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100018F3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100019100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SportsWidgetClock(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100006334(&qword_100122DB8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 52);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100019264(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for SportsWidgetClock(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100006334(&qword_100122DB8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 52);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000193B4()
{
  type metadata accessor for SportsWidgetClock(319);
  if (v0 <= 0x3F)
  {
    sub_100019A48(319, &qword_100122E28, &type metadata accessor for URL);
    if (v1 <= 0x3F)
    {
      sub_1000194A8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000194A8()
{
  if (!qword_100122E30)
  {
    v0 = sub_1000D385C();
    if (!v1)
    {
      atomic_store(v0, &qword_100122E30);
    }
  }
}

__n128 sub_1000194F8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100019524(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001956C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100019600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100006334(&qword_100122E88);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100006334(&qword_100122E90);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100019750(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_100006334(&qword_100122E88);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100006334(&qword_100122E90);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1000198AC()
{
  sub_1000194A8();
  if (v0 <= 0x3F)
  {
    sub_10001998C();
    if (v1 <= 0x3F)
    {
      sub_100019A48(319, &qword_100122F10, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10001998C()
{
  if (!qword_100122F00)
  {
    sub_1000D19FC();
    sub_1000199F0();
    v0 = sub_1000D356C();
    if (!v1)
    {
      atomic_store(v0, &qword_100122F00);
    }
  }
}

unint64_t sub_1000199F0()
{
  result = qword_100122F08;
  if (!qword_100122F08)
  {
    sub_1000D19FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100122F08);
  }

  return result;
}

void sub_100019A48(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000D385C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_100019A9C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100019AB8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100019B00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100019B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SportsWidgetGenericClockViewModel(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_100019C50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SportsWidgetGenericClockViewModel(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_100019D28()
{
  type metadata accessor for SportsWidgetGenericClockViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_100019DAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100019DAC()
{
  if (!qword_100122FC0)
  {
    sub_10000637C(&unk_100122FC8);
    v0 = sub_1000D385C();
    if (!v1)
    {
      atomic_store(v0, &qword_100122FC0);
    }
  }
}

uint64_t sub_100019E30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100019E8C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100019EF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100019F38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100019FE8()
{
  result = type metadata accessor for SportsWidgetGenericClockViewModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SportsWidgetSoccerClockViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_10001A064(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10001A078(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001A0C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001A11C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1936943469;
  if (v2 != 1)
  {
    v3 = 1818324839;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x7974706D65;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 1936943469;
  if (*a2 != 1)
  {
    v6 = 1818324839;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7974706D65;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1000D39CC();
  }

  return v9 & 1;
}

Swift::Int sub_10001A1FC()
{
  sub_1000D3A4C();
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_10001A28C()
{
  sub_1000D364C();
}

Swift::Int sub_10001A308()
{
  sub_1000D3A4C();
  sub_1000D364C();

  return sub_1000D3A6C();
}

uint64_t sub_10001A394@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001A468(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10001A3C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 1936943469;
  if (v2 != 1)
  {
    v4 = 1818324839;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7974706D65;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_10001A414()
{
  result = qword_1001230A0;
  if (!qword_1001230A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001230A0);
  }

  return result;
}

uint64_t sub_10001A468(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100118D90;
  v6._object = a2;
  v4 = sub_1000D39AC(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10001A504()
{
  result = type metadata accessor for SportsWidgetClock(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001A5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100006334(&qword_100122DB8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001A690(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100006334(&qword_100122DB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10001A760()
{
  sub_100019A48(319, &qword_100122E28, &type metadata accessor for URL);
  if (v0 <= 0x3F)
  {
    sub_1000194A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10001A838(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 288))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001A880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 288) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001A920(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001A96C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001A9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SportsWidgetClock(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001AA8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SportsWidgetClock(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_10001AB50(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001AB88()
{
  type metadata accessor for SportsWidgetClock(319);
  if (v0 <= 0x3F)
  {
    sub_1000194A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

NSString *sub_10001AC58()
{
  v1 = v0;
  v2 = sub_1000D1DBC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for DynamicTypeSize.xSmall(_:))
  {
    v7 = &UIContentSizeCategoryExtraSmall;
  }

  else if (v6 == enum case for DynamicTypeSize.small(_:))
  {
    v7 = &UIContentSizeCategorySmall;
  }

  else if (v6 == enum case for DynamicTypeSize.medium(_:))
  {
    v7 = &UIContentSizeCategoryMedium;
  }

  else if (v6 == enum case for DynamicTypeSize.large(_:))
  {
    v7 = &UIContentSizeCategoryLarge;
  }

  else if (v6 == enum case for DynamicTypeSize.xLarge(_:))
  {
    v7 = &UIContentSizeCategoryExtraLarge;
  }

  else if (v6 == enum case for DynamicTypeSize.xxLarge(_:))
  {
    v7 = &UIContentSizeCategoryExtraExtraLarge;
  }

  else if (v6 == enum case for DynamicTypeSize.xxxLarge(_:))
  {
    v7 = &UIContentSizeCategoryExtraExtraExtraLarge;
  }

  else if (v6 == enum case for DynamicTypeSize.accessibility1(_:))
  {
    v7 = &UIContentSizeCategoryAccessibilityMedium;
  }

  else if (v6 == enum case for DynamicTypeSize.accessibility2(_:))
  {
    v7 = &UIContentSizeCategoryAccessibilityLarge;
  }

  else if (v6 == enum case for DynamicTypeSize.accessibility3(_:))
  {
    v7 = &UIContentSizeCategoryAccessibilityExtraLarge;
  }

  else if (v6 == enum case for DynamicTypeSize.accessibility4(_:))
  {
    v7 = &UIContentSizeCategoryAccessibilityExtraExtraLarge;
  }

  else
  {
    if (v6 != enum case for DynamicTypeSize.accessibility5(_:))
    {
      v10 = *(v3 + 8);
      v11 = UIContentSizeCategoryLarge;
      v10(v5, v2);
      return v11;
    }

    v7 = &UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  }

  v8 = *v7;

  return v8;
}

uint64_t Color.init(hex:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D27FC();
  v19[0] = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000D17FC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v21 = a2;
  sub_1000D17EC();
  sub_10000F320();
  v11 = sub_1000D386C();
  v13 = v12;
  (*(v8 + 8))(v10, v7);

  v20 = v11;
  v21 = v13;
  v19[3] = 35;
  v19[4] = 0xE100000000000000;
  v19[1] = 0;
  v19[2] = 0xE000000000000000;
  sub_1000D387C();

  v20 = 0;
  v14 = sub_1000D365C();
  v15 = objc_allocWithZone(NSScanner);
  v16 = sub_1000D35FC();

  v17 = [v15 initWithString:v16];

  LODWORD(v16) = [v17 scanHexLongLong:&v20];
  if (!v16 || v14 != 8 && v14 != 6)
  {
    return 0;
  }

  (*(v19[0] + 104))(v6, enum case for Color.RGBColorSpace.sRGB(_:), v4);
  return sub_1000D288C();
}

unint64_t sub_10001B298()
{
  result = qword_1001232B8;
  if (!qword_1001232B8)
  {
    sub_10000637C(&qword_1001232C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001232B8);
  }

  return result;
}

double sub_10001B2FC@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_1000D251C();
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetMidX(v14);
  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  CGRectGetMidY(v15);
  v16.origin.x = a2;
  v16.origin.y = a3;
  v16.size.width = a4;
  v16.size.height = a5;
  CGRectGetMaxX(v16);
  sub_1000D24FC();
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  CGRectGetMaxY(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  CGRectGetMinX(v18);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  CGRectGetMinY(v19);
  sub_1000D250C();
  sub_1000D250C();
  sub_1000D250C();
  sub_1000D250C();
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v12;
  *(a1 + 32) = v13;
  return result;
}

void (*sub_10001B46C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000D1B7C();
  return sub_10001B4F4;
}

void sub_10001B4F4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_10001B540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001B75C();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10001B5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001B75C();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10001B608(uint64_t a1)
{
  v2 = sub_10001B75C();

  return Shape.body.getter(a1, v2);
}

unint64_t sub_10001B658()
{
  result = qword_1001232C8;
  if (!qword_1001232C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001232C8);
  }

  return result;
}

unint64_t sub_10001B6B0()
{
  result = qword_1001232D0;
  if (!qword_1001232D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001232D0);
  }

  return result;
}

unint64_t sub_10001B708()
{
  result = qword_1001232D8;
  if (!qword_1001232D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001232D8);
  }

  return result;
}

unint64_t sub_10001B75C()
{
  result = qword_1001232E0;
  if (!qword_1001232E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001232E0);
  }

  return result;
}

__n128 sub_10001B7B0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001B7C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001B80C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001B85C(uint64_t a1, uint64_t a2)
{
  v14[1] = a2;
  v15 = sub_1000D329C();
  v14[0] = *(v15 - 8);
  __chkstk_darwin(v15);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000D323C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000D248C();
  v8 = *(v5 + 104);
  v8(v7, enum case for WidgetFamily.systemLarge(_:), v4);
  sub_10001BB48();
  sub_1000D369C();
  sub_1000D369C();
  v9 = *(v5 + 8);
  v9(v7, v4);
  if (v18 == v17)
  {
    v10 = sub_1000D23DC();
  }

  else
  {
    v8(v7, enum case for WidgetFamily.systemExtraLarge(_:), v4);
    sub_1000D369C();
    sub_1000D369C();
    v9(v7, v4);
    if (v18 != v17)
    {
      v8(v7, enum case for WidgetFamily.systemSmall(_:), v4);
      sub_1000D369C();
      sub_1000D369C();
      v9(v7, v4);
      if (v18 != v17)
      {
        return v16;
      }

      sub_1000D325C();
      v13 = sub_1000D326C();
      (*(v14[0] + 8))(v3, v15);
      if ((v13 & 1) == 0)
      {
        return v16;
      }
    }

    v10 = sub_1000D23CC();
  }

  v11 = v10;

  return v11;
}

unint64_t sub_10001BB48()
{
  result = qword_1001232E8;
  if (!qword_1001232E8)
  {
    sub_1000D323C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001232E8);
  }

  return result;
}

uint64_t sub_10001BBB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001BBF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10001BC60()
{
  v0 = sub_1000D323C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v1 + 104);
  v4(v3, enum case for WidgetFamily.systemSmall(_:), v0);
  sub_10001BB48();
  sub_1000D369C();
  sub_1000D369C();
  v5 = *(v1 + 8);
  v5(v3, v0);
  result = 20.0;
  if (v8 != v7)
  {
    (v4)(v3, enum case for WidgetFamily.systemMedium(_:), v0, 20.0);
    sub_1000D369C();
    sub_1000D369C();
    v5(v3, v0);
    result = 0.0;
    if (v8 == v7)
    {
      return 16.0;
    }
  }

  return result;
}

double sub_10001BE10()
{
  v0 = sub_1000D323C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v1 + 104);
  v4(v3, enum case for WidgetFamily.systemLarge(_:), v0);
  sub_10001BB48();
  sub_1000D369C();
  sub_1000D369C();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v8 == v7)
  {
    return 18.0;
  }

  v4(v3, enum case for WidgetFamily.systemExtraLarge(_:), v0);
  sub_1000D369C();
  sub_1000D369C();
  v5(v3, v0);
  result = 0.0;
  if (v8 == v7)
  {
    return 18.0;
  }

  return result;
}

double sub_10001BFBC()
{
  v0 = sub_1000D323C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v1 + 104);
  v4(v3, enum case for WidgetFamily.systemSmall(_:), v0);
  sub_10001BB48();
  sub_1000D369C();
  sub_1000D369C();
  v5 = *(v1 + 8);
  v5(v3, v0);
  if (v8 == v7)
  {
    return 40.0;
  }

  v4(v3, enum case for WidgetFamily.systemMedium(_:), v0);
  sub_1000D369C();
  sub_1000D369C();
  v5(v3, v0);
  result = 1.79769313e308;
  if (v8 == v7)
  {
    return 30.0;
  }

  return result;
}

double sub_10001C178@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1000D27FC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = enum case for Color.RGBColorSpace.sRGB(_:);
  v7 = *(v3 + 104);
  v7(v5, enum case for Color.RGBColorSpace.sRGB(_:), v2);
  sub_1000D288C();
  v8 = sub_1000D285C();

  v7(v5, v6, v2);
  sub_1000D288C();
  v9 = sub_1000D285C();

  v10 = [objc_allocWithZone(UIColor) initWithRed:1.0 green:0.31372549 blue:0.4 alpha:1.0];
  *a1 = 0x3FFC71C71C71C71CLL;
  *(a1 + 8) = v8;
  *(a1 + 16) = xmmword_1000E0F90;
  *(a1 + 32) = v9;
  *(a1 + 40) = xmmword_1000E0FA0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = v10;
  *(a1 + 120) = xmmword_1000E0FB0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0x4018000000000000;
  result = 11.0;
  *(a1 + 160) = xmmword_1000E0FC0;
  return result;
}

__n128 sub_10001C370(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_10001C3A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001C3EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001C46C()
{
  result = qword_1001232F8;
  if (!qword_1001232F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001232F8);
  }

  return result;
}

uint64_t sub_10001C504()
{
  v0 = sub_100006334(&qword_1001228C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000D189C();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000D1A2C();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000D35EC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000D18BC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000D174C();
  sub_1000065AC(v10, qword_10013C020);
  sub_100006610(v10, qword_10013C020);
  sub_1000D358C();
  sub_1000D1A1C();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000D18CC();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000D173C();
}

uint64_t sub_10001C7EC()
{
  v0 = sub_1000D18BC();
  sub_1000065AC(v0, qword_10013C038);
  sub_100006610(v0, qword_10013C038);
  return sub_1000D188C();
}

uint64_t sub_10001C850()
{
  v0 = sub_100006334(&qword_100122908);
  sub_1000065AC(v0, qword_10013C050);
  v1 = sub_100006610(v0, qword_10013C050);
  sub_1000D159C();
  v2 = sub_1000D15AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10001C910()
{
  result = swift_getKeyPath();
  qword_10013C068 = result;
  return result;
}

uint64_t sub_10001C938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return _swift_task_switch(sub_10001C95C, 0, 0);
}