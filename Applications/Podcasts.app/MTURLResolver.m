@interface MTURLResolver
+ (BOOL)_handleBrowseURL:(id)a3;
+ (BOOL)_handleLegacyCoreSpotlightURL:(id)a3;
+ (BOOL)_handleNowPlayingURL:(id)a3;
+ (BOOL)_isLegacyCoreSpotlightURL:(id)a3;
+ (id)episodeUrlForPodcastStoreId:(int64_t)a3 episodeStoreId:(int64_t)a4;
+ (id)podcastUrlForStoreId:(int64_t)a3;
+ (id)searchUrlForSearchText:(id)a3;
+ (void)handlePodcastsUrlScheme:(id)a3;
+ (void)handleiTMSUrlScheme:(id)a3;
+ (void)showSearchControllerWithSearchText:(id)a3;
@end

@implementation MTURLResolver

+ (void)handleiTMSUrlScheme:(id)a3
{
  v4 = a3;
  v5 = [v4 pf_cleanUrlToStoreId];
  v6 = [v4 pf_cleanUrlToStoreTrackId];
  v7 = [v4 pf_cleanUrlToEpisodeGuid];
  v8 = +[MTDB sharedInstance];
  v9 = [v8 mainQueueContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100161C54;
  v13[3] = &unk_1004DE010;
  v14 = v9;
  v15 = v7;
  v18 = v6;
  v19 = a1;
  v16 = v4;
  v17 = v5;
  v10 = v4;
  v11 = v7;
  v12 = v9;
  [v12 performBlock:v13];
}

+ (void)handlePodcastsUrlScheme:(id)a3
{
  v4 = a3;
  if (([a1 _handleLegacyCoreSpotlightURL:v4] & 1) == 0 && (objc_msgSend(a1, "_handleNowPlayingURL:", v4) & 1) == 0 && (objc_msgSend(a1, "_handleBrowseURL:", v4) & 1) == 0)
  {
    v5 = [v4 host];
    v6 = [v4 pf_queryAsDictionary];
    v7 = [v6 objectForKeyedSubscript:@"podcastUuid"];
    v31 = v6;
    v8 = [v6 objectForKeyedSubscript:@"episodeUuid"];
    v33[0] = @"play";
    v33[1] = @"show";
    v9 = [NSArray arrayWithObjects:v33 count:2];
    v32 = v5;
    if (([v9 containsObject:v5] & 1) == 0)
    {
      v10 = +[IMLogger sharedLogger];
      [v10 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Utility/MTURLResolver.m" lineNumber:107 format:{@"unsupported url: %@", v4}];
    }

    v11 = +[MTDB sharedInstance];
    v12 = [v11 mainQueueContext];

    v13 = [v12 episodeForUuid:v8];
    v14 = [v13 podcast];
    if (v14)
    {
      v15 = v14;
      v16 = v12;
      v17 = v9;
      v18 = [v14 uuid];
      v19 = v7;
      v20 = [v7 isEqualToString:v18];

      if (v20)
      {
        v7 = v19;
      }

      else
      {
        v7 = [v15 uuid];
      }

      v9 = v17;
      v12 = v16;
    }

    else
    {
      v15 = [v12 podcastForUuid:v7];
    }

    v21 = [v8 length];
    if (v13)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21 == 0;
    }

    v23 = !v22;
    v30 = v23;
    v24 = [v8 length];
    if (v13 && v24 || ![v7 length])
    {
      v25 = v7;
    }

    else
    {
      v25 = v7;
      v26 = [MTRecencyUtil upNextForPodcastUuid:v7 ctx:v12];
      v27 = [v26 episodeUuid];

      v8 = v27;
    }

    if (v15)
    {
      v28 = [v32 isEqualToString:@"play"];
      v29 = [a1 appController];
      [v29 presentPodcast:v15 episodeUuid:v8 episodeNotAvailable:v30 podcastTab:0 startPlayback:v28 animated:0];
    }
  }
}

+ (void)showSearchControllerWithSearchText:(id)a3
{
  v6 = a3;
  if ([v6 length])
  {
    v4 = [MTURLResolver searchUrlForSearchText:v6];
    v5 = [a1 appController];
    [v5 openStoreURL:v4];
  }

  else
  {
    v4 = [a1 appController];
    [v4 selectSearchTabAndFocusSearchField];
  }
}

+ (id)searchUrlForSearchText:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = +[NSCharacterSet URLQueryAllowedCharacterSet];
    v5 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v4];

    v6 = [NSString stringWithFormat:@"&term=%@", v5];
    v7 = [@"itms-podcasts://?action=search&activate=true" stringByAppendingString:v6];
  }

  else
  {
    v7 = @"itms-podcasts://?action=search&activate=true";
  }

  v8 = [NSURL URLWithString:v7];

  return v8;
}

+ (id)podcastUrlForStoreId:(int64_t)a3
{
  if ([MTStoreIdentifier isNotEmpty:?])
  {
    v4 = [MTPodcast storeCleanURLForAdamID:a3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)episodeUrlForPodcastStoreId:(int64_t)a3 episodeStoreId:(int64_t)a4
{
  v6 = [NSString stringWithFormat:@"%llu", a4];
  v7 = [a1 podcastUrlForStoreId:a3];
  v8 = [v7 pf_URLByAppendingQueryParameterKey:@"i" value:v6];

  return v8;
}

+ (BOOL)_handleNowPlayingURL:(id)a3
{
  v4 = a3;
  v5 = [v4 host];
  v6 = [v5 caseInsensitiveCompare:@"nowplaying"];
  v7 = v6 == 0;
  if (!v6)
  {
    v9 = [v4 host];

    if (!v9)
    {
      v7 = 0;
      goto LABEL_3;
    }

    v10 = [a1 appController];
    [v10 presentNowPlayingAnimated:0];

    v11 = [v4 pf_queryAsDictionary];
    v12 = [v11 objectForKeyedSubscript:@"start"];
    v13 = [v12 BOOLValue];

    v14 = +[MTPlayerController defaultInstance];
    v5 = v14;
    if (v13)
    {
      v15 = [v14 currentItem];
      if (v15)
      {
        v16 = v15;
        v17 = [v5 isPlayingLocally];

        if ((v17 & 1) == 0)
        {
          [v5 playWithReason:11];
        }
      }
    }
  }

LABEL_3:
  return v7;
}

+ (BOOL)_handleBrowseURL:(id)a3
{
  v4 = a3;
  v5 = [v4 host];
  v6 = [v5 caseInsensitiveCompare:@"browse"];
  v7 = v6 == 0;
  if (!v6)
  {
    v8 = [v4 host];

    if (!v8)
    {
      v7 = 0;
      goto LABEL_5;
    }

    v5 = [a1 appController];
    [v5 selectFeaturedTab];
  }

LABEL_5:
  return v7;
}

+ (BOOL)_isLegacyCoreSpotlightURL:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  v5 = [v4 isEqualToString:@"podcasts"];

  if (v5 && ([v3 host], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasSuffix:", @"play"), v6, v7))
  {
    v8 = [v3 absoluteString];
    v9 = [v8 containsString:@"pid="];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)_handleLegacyCoreSpotlightURL:(id)a3
{
  v3 = a3;
  v4 = [v3 host];
  v5 = [v4 hasSuffix:@"play"];

  if (v5)
  {
    v22 = [v3 query];
    v6 = [v22 componentsSeparatedByString:@"&"];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_100008C0C;
    v28 = sub_10003B5DC;
    v29 = 0;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100162968;
    v23[3] = &unk_1004DE038;
    v23[4] = &v24;
    [v6 enumerateObjectsUsingBlock:v23];
    if (v25[5])
    {
      v7 = objc_alloc_init(NSNumberFormatter);
      [v7 setNumberStyle:1];
      v8 = +[MTDB sharedInstance];
      v9 = [v8 mainOrPrivateContext];
      v10 = [v7 numberFromString:v25[5]];
      v11 = [MTEpisode predicateForPersistentId:v10];
      v12 = kEpisodeUuid;
      v30[0] = kEpisodeUuid;
      v30[1] = kEpisodePodcastUuid;
      v13 = [NSArray arrayWithObjects:v30 count:2];
      v14 = [v9 objectDictionariesInEntity:kMTEpisodeEntityName predicate:v11 sortDescriptors:0 propertiesToFetch:v13 includeObjectId:0];

      v15 = [v14 count];
      v16 = v15 != 0;
      if (v15)
      {
        v17 = [v14 lastObject];
        v18 = [v17 objectForKeyedSubscript:v12];
        v19 = [MTPlaybackQueueFactory playEpisodeUuid:v18];
        v20 = +[MTPlayerController defaultInstance];
        [v20 playManifest:v19 reason:3];
      }
    }

    else
    {
      v16 = 0;
    }

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end