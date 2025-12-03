@interface MTURLResolver
+ (BOOL)_handleBrowseURL:(id)l;
+ (BOOL)_handleLegacyCoreSpotlightURL:(id)l;
+ (BOOL)_handleNowPlayingURL:(id)l;
+ (BOOL)_isLegacyCoreSpotlightURL:(id)l;
+ (id)episodeUrlForPodcastStoreId:(int64_t)id episodeStoreId:(int64_t)storeId;
+ (id)podcastUrlForStoreId:(int64_t)id;
+ (id)searchUrlForSearchText:(id)text;
+ (void)handlePodcastsUrlScheme:(id)scheme;
+ (void)handleiTMSUrlScheme:(id)scheme;
+ (void)showSearchControllerWithSearchText:(id)text;
@end

@implementation MTURLResolver

+ (void)handleiTMSUrlScheme:(id)scheme
{
  schemeCopy = scheme;
  pf_cleanUrlToStoreId = [schemeCopy pf_cleanUrlToStoreId];
  pf_cleanUrlToStoreTrackId = [schemeCopy pf_cleanUrlToStoreTrackId];
  pf_cleanUrlToEpisodeGuid = [schemeCopy pf_cleanUrlToEpisodeGuid];
  v8 = +[MTDB sharedInstance];
  mainQueueContext = [v8 mainQueueContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100161C54;
  v13[3] = &unk_1004DE010;
  v14 = mainQueueContext;
  v15 = pf_cleanUrlToEpisodeGuid;
  v18 = pf_cleanUrlToStoreTrackId;
  selfCopy = self;
  v16 = schemeCopy;
  v17 = pf_cleanUrlToStoreId;
  v10 = schemeCopy;
  v11 = pf_cleanUrlToEpisodeGuid;
  v12 = mainQueueContext;
  [v12 performBlock:v13];
}

+ (void)handlePodcastsUrlScheme:(id)scheme
{
  schemeCopy = scheme;
  if (([self _handleLegacyCoreSpotlightURL:schemeCopy] & 1) == 0 && (objc_msgSend(self, "_handleNowPlayingURL:", schemeCopy) & 1) == 0 && (objc_msgSend(self, "_handleBrowseURL:", schemeCopy) & 1) == 0)
  {
    host = [schemeCopy host];
    pf_queryAsDictionary = [schemeCopy pf_queryAsDictionary];
    uuid2 = [pf_queryAsDictionary objectForKeyedSubscript:@"podcastUuid"];
    v31 = pf_queryAsDictionary;
    v8 = [pf_queryAsDictionary objectForKeyedSubscript:@"episodeUuid"];
    v33[0] = @"play";
    v33[1] = @"show";
    v9 = [NSArray arrayWithObjects:v33 count:2];
    v32 = host;
    if (([v9 containsObject:host] & 1) == 0)
    {
      v10 = +[IMLogger sharedLogger];
      [v10 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Utility/MTURLResolver.m" lineNumber:107 format:{@"unsupported url: %@", schemeCopy}];
    }

    v11 = +[MTDB sharedInstance];
    mainQueueContext = [v11 mainQueueContext];

    v13 = [mainQueueContext episodeForUuid:v8];
    podcast = [v13 podcast];
    if (podcast)
    {
      v15 = podcast;
      v16 = mainQueueContext;
      v17 = v9;
      uuid = [podcast uuid];
      v19 = uuid2;
      v20 = [uuid2 isEqualToString:uuid];

      if (v20)
      {
        uuid2 = v19;
      }

      else
      {
        uuid2 = [v15 uuid];
      }

      v9 = v17;
      mainQueueContext = v16;
    }

    else
    {
      v15 = [mainQueueContext podcastForUuid:uuid2];
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
    if (v13 && v24 || ![uuid2 length])
    {
      v25 = uuid2;
    }

    else
    {
      v25 = uuid2;
      v26 = [MTRecencyUtil upNextForPodcastUuid:uuid2 ctx:mainQueueContext];
      episodeUuid = [v26 episodeUuid];

      v8 = episodeUuid;
    }

    if (v15)
    {
      v28 = [v32 isEqualToString:@"play"];
      appController = [self appController];
      [appController presentPodcast:v15 episodeUuid:v8 episodeNotAvailable:v30 podcastTab:0 startPlayback:v28 animated:0];
    }
  }
}

+ (void)showSearchControllerWithSearchText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    appController2 = [MTURLResolver searchUrlForSearchText:textCopy];
    appController = [self appController];
    [appController openStoreURL:appController2];
  }

  else
  {
    appController2 = [self appController];
    [appController2 selectSearchTabAndFocusSearchField];
  }
}

+ (id)searchUrlForSearchText:(id)text
{
  textCopy = text;
  if ([textCopy length])
  {
    v4 = +[NSCharacterSet URLQueryAllowedCharacterSet];
    v5 = [textCopy stringByAddingPercentEncodingWithAllowedCharacters:v4];

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

+ (id)podcastUrlForStoreId:(int64_t)id
{
  if ([MTStoreIdentifier isNotEmpty:?])
  {
    v4 = [MTPodcast storeCleanURLForAdamID:id];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)episodeUrlForPodcastStoreId:(int64_t)id episodeStoreId:(int64_t)storeId
{
  storeId = [NSString stringWithFormat:@"%llu", storeId];
  v7 = [self podcastUrlForStoreId:id];
  v8 = [v7 pf_URLByAppendingQueryParameterKey:@"i" value:storeId];

  return v8;
}

+ (BOOL)_handleNowPlayingURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v6 = [host caseInsensitiveCompare:@"nowplaying"];
  v7 = v6 == 0;
  if (!v6)
  {
    host2 = [lCopy host];

    if (!host2)
    {
      v7 = 0;
      goto LABEL_3;
    }

    appController = [self appController];
    [appController presentNowPlayingAnimated:0];

    pf_queryAsDictionary = [lCopy pf_queryAsDictionary];
    v12 = [pf_queryAsDictionary objectForKeyedSubscript:@"start"];
    bOOLValue = [v12 BOOLValue];

    v14 = +[MTPlayerController defaultInstance];
    host = v14;
    if (bOOLValue)
    {
      currentItem = [v14 currentItem];
      if (currentItem)
      {
        v16 = currentItem;
        isPlayingLocally = [host isPlayingLocally];

        if ((isPlayingLocally & 1) == 0)
        {
          [host playWithReason:11];
        }
      }
    }
  }

LABEL_3:
  return v7;
}

+ (BOOL)_handleBrowseURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v6 = [host caseInsensitiveCompare:@"browse"];
  v7 = v6 == 0;
  if (!v6)
  {
    host2 = [lCopy host];

    if (!host2)
    {
      v7 = 0;
      goto LABEL_5;
    }

    host = [self appController];
    [host selectFeaturedTab];
  }

LABEL_5:
  return v7;
}

+ (BOOL)_isLegacyCoreSpotlightURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  v5 = [scheme isEqualToString:@"podcasts"];

  if (v5 && ([lCopy host], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasSuffix:", @"play"), v6, v7))
  {
    absoluteString = [lCopy absoluteString];
    v9 = [absoluteString containsString:@"pid="];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)_handleLegacyCoreSpotlightURL:(id)l
{
  lCopy = l;
  host = [lCopy host];
  v5 = [host hasSuffix:@"play"];

  if (v5)
  {
    query = [lCopy query];
    v6 = [query componentsSeparatedByString:@"&"];
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
      mainOrPrivateContext = [v8 mainOrPrivateContext];
      v10 = [v7 numberFromString:v25[5]];
      v11 = [MTEpisode predicateForPersistentId:v10];
      v12 = kEpisodeUuid;
      v30[0] = kEpisodeUuid;
      v30[1] = kEpisodePodcastUuid;
      v13 = [NSArray arrayWithObjects:v30 count:2];
      v14 = [mainOrPrivateContext objectDictionariesInEntity:kMTEpisodeEntityName predicate:v11 sortDescriptors:0 propertiesToFetch:v13 includeObjectId:0];

      v15 = [v14 count];
      v16 = v15 != 0;
      if (v15)
      {
        lastObject = [v14 lastObject];
        v18 = [lastObject objectForKeyedSubscript:v12];
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