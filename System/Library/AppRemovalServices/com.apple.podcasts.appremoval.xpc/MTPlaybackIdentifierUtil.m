@interface MTPlaybackIdentifierUtil
+ (id)__queryStringToQueryDictionary:(id)a3;
+ (id)__stringByRemovingPercentEscapes:(id)a3;
+ (id)__stringWithPercentEscape:(id)a3;
- (BOOL)isLocalSetPlaybackQueueURLString:(id)a3;
- (BOOL)isSubscribeCommandURLString:(id)a3;
- (BOOL)isUniversalPlaybackIdentifierURLString:(id)a3;
- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForIdentifiers:(id)a3;
- (_MRSystemAppPlaybackQueue)playbackQueueWithDsid:(id)a3 forIdentifiers:(id)a4;
- (id)_playbackRequestIdentifierWithHost:(id)a3 queryComponents:(id)a4;
- (id)_playbackRequestIdentifierWithHost:(id)a3 queryKey:(id)a4 value:(id)a5;
- (id)_universalPlaybackQueueIdentifierForPodcastUuid:(id)a3 podcastFeedUrl:(id)a4 podcastStoreId:(int64_t)a5 episodeUuid:(id)a6 episodeGuid:(id)a7 episodeStoreId:(int64_t)a8 context:(int64_t)a9 contextSortType:(int64_t)a10 sampPlaybackOrder:(id)a11;
- (id)localPlaybackQueueIdentifierForPodcastUuid:(id)a3 episodeUuid:(id)a4 sampPlaybackOrder:(id)a5;
- (id)playbackQueueIdentifierForPlayMyPodcastsWithPlaybackOrder:(id)a3;
- (id)playbackQueueIdentifierForPodcastAdamId:(id)a3 sampPlaybackOrder:(id)a4;
- (id)playbackQueueIdentifierForSubscribeToPodcastFeedUrl:(id)a3;
- (id)playbackRequestURLWithDSID:(id)a3 baseRequestURLString:(id)a4;
- (id)playbackRequestURLWithPlayReason:(unint64_t)a3 baseRequestURLString:(id)a4;
- (id)universalPlaybackQueueIdentifierForStationUuid:(id)a3 episodeUuid:(id)a4 episodeGuid:(id)a5 episodeStoreId:(int64_t)a6 podcastFeedUrl:(id)a7;
- (int64_t)_episodeContextFromString:(id)a3;
- (int64_t)_episodeContextSortFromString:(id)a3;
- (int64_t)_episodeOrderFromString:(id)a3;
- (unint64_t)_playQueueTypeForRequestURL:(id)a3;
- (unint64_t)_playReasonFromString:(id)a3;
@end

@implementation MTPlaybackIdentifierUtil

- (id)playbackRequestURLWithPlayReason:(unint64_t)a3 baseRequestURLString:(id)a4
{
  v4 = [NSURL URLWithString:a4];
  v5 = objc_opt_class();
  v6 = [v4 query];
  v7 = [v5 __queryStringToQueryDictionary:v6];

  v8 = NSPersistentStringForMTPlayReason();
  [v7 setObject:v8 forKey:@"playReason"];

  v9 = objc_alloc_init(NSURLComponents);
  v10 = [v4 scheme];
  [v9 setScheme:v10];

  v11 = [v4 host];
  [v9 setHost:v11];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100004144;
  v16[3] = &unk_10000C688;
  v17 = v7;
  v12 = v7;
  v13 = [v12 mt_compactMap:v16];
  [v9 setQueryItems:v13];

  v14 = [v9 string];

  return v14;
}

- (id)playbackRequestURLWithDSID:(id)a3 baseRequestURLString:(id)a4
{
  v5 = a3;
  v6 = [NSURL URLWithString:a4];
  v7 = objc_opt_class();
  v8 = [v6 query];
  v9 = [v7 __queryStringToQueryDictionary:v8];

  v10 = [v5 stringValue];

  if (v10)
  {
    v11 = [v5 stringValue];
    [v9 setObject:v11 forKey:@"enqueuerDSID"];
  }

  v12 = objc_alloc_init(NSURLComponents);
  v13 = [v6 scheme];
  [v12 setScheme:v13];

  v14 = [v6 host];
  [v12 setHost:v14];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100004398;
  v19[3] = &unk_10000C688;
  v20 = v9;
  v15 = v9;
  v16 = [v15 mt_compactMap:v19];
  [v12 setQueryItems:v16];

  v17 = [v12 string];

  return v17;
}

- (BOOL)isLocalSetPlaybackQueueURLString:(id)a3
{
  v3 = [NSURL URLWithString:a3];
  v4 = [v3 host];
  if ([v4 length])
  {
    if (qword_100012518 != -1)
    {
      sub_100006554();
    }

    v5 = [qword_100012510 containsObject:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSubscribeCommandURLString:(id)a3
{
  v3 = [NSURL URLWithString:a3];
  v4 = [v3 host];
  v5 = [v4 isEqualToString:@"subscribe"];

  return v5;
}

- (BOOL)isUniversalPlaybackIdentifierURLString:(id)a3
{
  v3 = [NSURL URLWithString:a3];
  v4 = [v3 host];
  v5 = [v4 isEqualToString:@"playItem"];

  return v5;
}

- (id)playbackQueueIdentifierForPlayMyPodcastsWithPlaybackOrder:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = SAMPEpisodePlaybackOrderAPPLICATION_DEFAULTValue;
  }

  v5 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playPodcasts" queryKey:@"playbackOrder" value:v4];

  return v5;
}

- (id)localPlaybackQueueIdentifierForPodcastUuid:(id)a3 episodeUuid:(id)a4 sampPlaybackOrder:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 length] || objc_msgSend(v9, "length"))
  {
    v11 = [(MTPlaybackIdentifierUtil *)self universalPlaybackQueueIdentifierForPodcastUuid:v8 podcastFeedUrl:0 podcastStoreId:0 episodeUuid:v9 episodeGuid:0 episodeStoreId:0 sampPlaybackOrder:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_universalPlaybackQueueIdentifierForPodcastUuid:(id)a3 podcastFeedUrl:(id)a4 podcastStoreId:(int64_t)a5 episodeUuid:(id)a6 episodeGuid:(id)a7 episodeStoreId:(int64_t)a8 context:(int64_t)a9 contextSortType:(int64_t)a10 sampPlaybackOrder:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a6;
  v19 = a7;
  v20 = a11;
  if (![v20 length])
  {
    v21 = SAMPEpisodePlaybackOrderAPPLICATION_DEFAULTValue;

    v20 = v21;
  }

  v22 = [v18 length];
  v23 = [v16 length];
  v24 = +[NSMutableDictionary dictionary];
  [v24 setObject:v20 forKey:@"playbackOrder"];
  if (v23)
  {
    [v24 setObject:v16 forKey:@"uuid"];
  }

  if (v22)
  {
    [v24 setObject:v18 forKey:@"episodeUuid"];
  }

  if ([v17 length])
  {
    v25 = [objc_opt_class() __stringWithPercentEscape:v17];
    [v24 setObject:v25 forKey:@"podcastFeedUrl"];
  }

  if ([v19 length])
  {
    [v24 setObject:v19 forKey:@"episodeGuid"];
  }

  v26 = kMTSerpentAdamIdOffset;
  if (a5 && kMTSerpentAdamIdOffset != a5)
  {
    v27 = [NSString stringWithFormat:@"%llu", a5];
    [v24 setObject:v27 forKey:@"storeCollectionId"];
  }

  if (a8 && v26 != a8)
  {
    v28 = [NSString stringWithFormat:@"%llu", a8];
    [v24 setObject:v28 forKey:@"storeTrackId"];
  }

  v29 = NSPersistentStringForMTEpisodeContext();
  [v24 setObject:v29 forKey:@"context"];

  v30 = NSPersistentStringForMTEpisodeContextSortType();
  [v24 setObject:v30 forKey:@"contextSortType"];

  v31 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playPodcast" queryComponents:v24];

  return v31;
}

- (id)playbackQueueIdentifierForPodcastAdamId:(id)a3 sampPlaybackOrder:(id)a4
{
  v6 = a4;
  if (!v6)
  {
    v6 = SAMPEpisodePlaybackOrderAPPLICATION_DEFAULTValue;
  }

  v11[0] = @"storeCollectionId";
  v11[1] = @"playbackOrder";
  v12[0] = a3;
  v12[1] = v6;
  v7 = a3;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playPodcast" queryComponents:v8];

  return v9;
}

- (id)playbackQueueIdentifierForSubscribeToPodcastFeedUrl:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() __stringWithPercentEscape:v4];

  v6 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"subscribe" queryKey:@"podcastFeedUrl" value:v5];

  return v6;
}

- (id)universalPlaybackQueueIdentifierForStationUuid:(id)a3 episodeUuid:(id)a4 episodeGuid:(id)a5 episodeStoreId:(int64_t)a6 podcastFeedUrl:(id)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a7;
  v14 = a3;
  v15 = [NSMutableDictionary dictionaryWithCapacity:5];
  [v15 setObject:v14 forKey:@"uuid"];

  if ([v11 length])
  {
    [v15 setObject:v11 forKey:@"episodeUuid"];
  }

  if ([v12 length])
  {
    [v15 setObject:v12 forKey:@"episodeGuid"];
  }

  if ([v13 length])
  {
    v16 = [objc_opt_class() __stringWithPercentEscape:v13];
    [v15 setObject:v16 forKey:@"podcastFeedUrl"];
  }

  v17 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playStation" queryComponents:v15];

  return v17;
}

- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForIdentifiers:(id)a3
{
  v4 = a3;
  v5 = +[MTAccountController sharedInstance];
  v6 = [v5 activeDsid];
  v7 = [(MTPlaybackIdentifierUtil *)self playbackQueueWithDsid:v6 forIdentifiers:v4];

  return v7;
}

- (_MRSystemAppPlaybackQueue)playbackQueueWithDsid:(id)a3 forIdentifiers:(id)a4
{
  v5 = a4;
  v6 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();

  if (a3)
  {
    v9 = a3;
    keys = @"enqueuerDSID";
    v7 = CFDictionaryCreate(0, &keys, &v9, 1, 0, &kCFTypeDictionaryValueCallBacks);
    MRSystemAppPlaybackQueueSetUserInfo();
    CFRelease(v7);
  }

  return v6;
}

- (unint64_t)_playQueueTypeForRequestURL:(id)a3
{
  v3 = qword_100012520;
  v4 = a3;
  if (v3 != -1)
  {
    sub_100006568();
  }

  v5 = qword_100012528;
  v6 = [v4 host];

  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = v7;
  v9 = &off_10000CC18;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [v10 unsignedIntegerValue];
  return v11;
}

- (id)_playbackRequestIdentifierWithHost:(id)a3 queryKey:(id)a4 value:(id)a5
{
  v14 = a4;
  v15 = a5;
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

  v12 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:v10 queryComponents:v11];

  return v12;
}

- (id)_playbackRequestIdentifierWithHost:(id)a3 queryComponents:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSURLComponents);
  [v7 setScheme:@"podcasts"];
  v20 = v5;
  [v7 setHost:v5];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [NSURLQueryItem alloc];
        v16 = [v9 objectForKeyedSubscript:v14];
        v17 = [v15 initWithName:v14 value:v16];

        [v8 addObject:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  [v7 setQueryItems:v8];
  v18 = [v7 string];

  return v18;
}

- (int64_t)_episodeOrderFromString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:SAMPEpisodePlaybackOrderNEWEST_FIRSTValue])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:SAMPEpisodePlaybackOrderOLDEST_FIRSTValue])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_playReasonFromString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = MTPlayReasonFromPersistentString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_episodeContextFromString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = MTEpisodeContextFromPersistentString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_episodeContextSortFromString:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v4 = MTEpisodeContextSortTypeFromPersistentString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)__stringWithPercentEscape:(id)a3
{
  v3 = CFURLCreateStringByAddingPercentEscapes(0, a3, 0, @"\uFFFC!$&'()+,/:;=?@", 0x8000100u);

  return v3;
}

+ (id)__stringByRemovingPercentEscapes:(id)a3
{
  v3 = CFURLCreateStringByReplacingPercentEscapes(kCFAllocatorDefault, a3, &stru_10000CAB0);

  return v3;
}

+ (id)__queryStringToQueryDictionary:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"&"];
  v4 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) componentsSeparatedByString:@"="];
        v10 = [v9 objectAtIndex:0];
        v11 = +[NSNull null];
        if ([v9 count] >= 2)
        {
          v12 = [v9 objectAtIndex:1];

          v11 = v12;
        }

        [v4 setObject:v11 forKey:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  return v4;
}

@end