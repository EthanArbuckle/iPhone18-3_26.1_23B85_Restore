@interface MTPlaybackIdentifierUtil
+ (id)__queryStringToQueryDictionary:(id)dictionary;
+ (id)__stringByRemovingPercentEscapes:(id)escapes;
+ (id)__stringWithPercentEscape:(id)escape;
- (BOOL)isLocalSetPlaybackQueueURLString:(id)string;
- (BOOL)isSubscribeCommandURLString:(id)string;
- (BOOL)isUniversalPlaybackIdentifierURLString:(id)string;
- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForIdentifiers:(id)identifiers;
- (_MRSystemAppPlaybackQueue)playbackQueueWithDsid:(id)dsid forIdentifiers:(id)identifiers;
- (id)_playbackRequestIdentifierWithHost:(id)host queryComponents:(id)components;
- (id)_playbackRequestIdentifierWithHost:(id)host queryKey:(id)key value:(id)value;
- (id)_universalPlaybackQueueIdentifierForPodcastUuid:(id)uuid podcastFeedUrl:(id)url podcastStoreId:(int64_t)id episodeUuid:(id)episodeUuid episodeGuid:(id)guid episodeStoreId:(int64_t)storeId context:(int64_t)context contextSortType:(int64_t)self0 sampPlaybackOrder:(id)self1;
- (id)localPlaybackQueueIdentifierForPodcastUuid:(id)uuid episodeUuid:(id)episodeUuid sampPlaybackOrder:(id)order;
- (id)playbackQueueIdentifierForPlayMyPodcastsWithPlaybackOrder:(id)order;
- (id)playbackQueueIdentifierForPodcastAdamId:(id)id sampPlaybackOrder:(id)order;
- (id)playbackQueueIdentifierForSubscribeToPodcastFeedUrl:(id)url;
- (id)playbackRequestURLWithDSID:(id)d baseRequestURLString:(id)string;
- (id)playbackRequestURLWithPlayReason:(unint64_t)reason baseRequestURLString:(id)string;
- (id)universalPlaybackQueueIdentifierForStationUuid:(id)uuid episodeUuid:(id)episodeUuid episodeGuid:(id)guid episodeStoreId:(int64_t)id podcastFeedUrl:(id)url;
- (int64_t)_episodeContextFromString:(id)string;
- (int64_t)_episodeContextSortFromString:(id)string;
- (int64_t)_episodeOrderFromString:(id)string;
- (unint64_t)_playQueueTypeForRequestURL:(id)l;
- (unint64_t)_playReasonFromString:(id)string;
@end

@implementation MTPlaybackIdentifierUtil

- (id)playbackRequestURLWithPlayReason:(unint64_t)reason baseRequestURLString:(id)string
{
  v4 = [NSURL URLWithString:string];
  v5 = objc_opt_class();
  query = [v4 query];
  v7 = [v5 __queryStringToQueryDictionary:query];

  v8 = NSPersistentStringForMTPlayReason();
  [v7 setObject:v8 forKey:@"playReason"];

  v9 = objc_alloc_init(NSURLComponents);
  scheme = [v4 scheme];
  [v9 setScheme:scheme];

  host = [v4 host];
  [v9 setHost:host];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100004144;
  v16[3] = &unk_10000C688;
  v17 = v7;
  v12 = v7;
  v13 = [v12 mt_compactMap:v16];
  [v9 setQueryItems:v13];

  string = [v9 string];

  return string;
}

- (id)playbackRequestURLWithDSID:(id)d baseRequestURLString:(id)string
{
  dCopy = d;
  v6 = [NSURL URLWithString:string];
  v7 = objc_opt_class();
  query = [v6 query];
  v9 = [v7 __queryStringToQueryDictionary:query];

  stringValue = [dCopy stringValue];

  if (stringValue)
  {
    stringValue2 = [dCopy stringValue];
    [v9 setObject:stringValue2 forKey:@"enqueuerDSID"];
  }

  v12 = objc_alloc_init(NSURLComponents);
  scheme = [v6 scheme];
  [v12 setScheme:scheme];

  host = [v6 host];
  [v12 setHost:host];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100004398;
  v19[3] = &unk_10000C688;
  v20 = v9;
  v15 = v9;
  v16 = [v15 mt_compactMap:v19];
  [v12 setQueryItems:v16];

  string = [v12 string];

  return string;
}

- (BOOL)isLocalSetPlaybackQueueURLString:(id)string
{
  v3 = [NSURL URLWithString:string];
  host = [v3 host];
  if ([host length])
  {
    if (qword_100012518 != -1)
    {
      sub_100006554();
    }

    v5 = [qword_100012510 containsObject:host];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSubscribeCommandURLString:(id)string
{
  v3 = [NSURL URLWithString:string];
  host = [v3 host];
  v5 = [host isEqualToString:@"subscribe"];

  return v5;
}

- (BOOL)isUniversalPlaybackIdentifierURLString:(id)string
{
  v3 = [NSURL URLWithString:string];
  host = [v3 host];
  v5 = [host isEqualToString:@"playItem"];

  return v5;
}

- (id)playbackQueueIdentifierForPlayMyPodcastsWithPlaybackOrder:(id)order
{
  orderCopy = order;
  if (!orderCopy)
  {
    orderCopy = SAMPEpisodePlaybackOrderAPPLICATION_DEFAULTValue;
  }

  v5 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playPodcasts" queryKey:@"playbackOrder" value:orderCopy];

  return v5;
}

- (id)localPlaybackQueueIdentifierForPodcastUuid:(id)uuid episodeUuid:(id)episodeUuid sampPlaybackOrder:(id)order
{
  uuidCopy = uuid;
  episodeUuidCopy = episodeUuid;
  orderCopy = order;
  if ([uuidCopy length] || objc_msgSend(episodeUuidCopy, "length"))
  {
    v11 = [(MTPlaybackIdentifierUtil *)self universalPlaybackQueueIdentifierForPodcastUuid:uuidCopy podcastFeedUrl:0 podcastStoreId:0 episodeUuid:episodeUuidCopy episodeGuid:0 episodeStoreId:0 sampPlaybackOrder:orderCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_universalPlaybackQueueIdentifierForPodcastUuid:(id)uuid podcastFeedUrl:(id)url podcastStoreId:(int64_t)id episodeUuid:(id)episodeUuid episodeGuid:(id)guid episodeStoreId:(int64_t)storeId context:(int64_t)context contextSortType:(int64_t)self0 sampPlaybackOrder:(id)self1
{
  uuidCopy = uuid;
  urlCopy = url;
  episodeUuidCopy = episodeUuid;
  guidCopy = guid;
  orderCopy = order;
  if (![orderCopy length])
  {
    v21 = SAMPEpisodePlaybackOrderAPPLICATION_DEFAULTValue;

    orderCopy = v21;
  }

  v22 = [episodeUuidCopy length];
  v23 = [uuidCopy length];
  v24 = +[NSMutableDictionary dictionary];
  [v24 setObject:orderCopy forKey:@"playbackOrder"];
  if (v23)
  {
    [v24 setObject:uuidCopy forKey:@"uuid"];
  }

  if (v22)
  {
    [v24 setObject:episodeUuidCopy forKey:@"episodeUuid"];
  }

  if ([urlCopy length])
  {
    v25 = [objc_opt_class() __stringWithPercentEscape:urlCopy];
    [v24 setObject:v25 forKey:@"podcastFeedUrl"];
  }

  if ([guidCopy length])
  {
    [v24 setObject:guidCopy forKey:@"episodeGuid"];
  }

  v26 = kMTSerpentAdamIdOffset;
  if (id && kMTSerpentAdamIdOffset != id)
  {
    v27 = [NSString stringWithFormat:@"%llu", id];
    [v24 setObject:v27 forKey:@"storeCollectionId"];
  }

  if (storeId && v26 != storeId)
  {
    storeId = [NSString stringWithFormat:@"%llu", storeId];
    [v24 setObject:storeId forKey:@"storeTrackId"];
  }

  v29 = NSPersistentStringForMTEpisodeContext();
  [v24 setObject:v29 forKey:@"context"];

  v30 = NSPersistentStringForMTEpisodeContextSortType();
  [v24 setObject:v30 forKey:@"contextSortType"];

  v31 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playPodcast" queryComponents:v24];

  return v31;
}

- (id)playbackQueueIdentifierForPodcastAdamId:(id)id sampPlaybackOrder:(id)order
{
  orderCopy = order;
  if (!orderCopy)
  {
    orderCopy = SAMPEpisodePlaybackOrderAPPLICATION_DEFAULTValue;
  }

  v11[0] = @"storeCollectionId";
  v11[1] = @"playbackOrder";
  v12[0] = id;
  v12[1] = orderCopy;
  idCopy = id;
  v8 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playPodcast" queryComponents:v8];

  return v9;
}

- (id)playbackQueueIdentifierForSubscribeToPodcastFeedUrl:(id)url
{
  urlCopy = url;
  v5 = [objc_opt_class() __stringWithPercentEscape:urlCopy];

  v6 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"subscribe" queryKey:@"podcastFeedUrl" value:v5];

  return v6;
}

- (id)universalPlaybackQueueIdentifierForStationUuid:(id)uuid episodeUuid:(id)episodeUuid episodeGuid:(id)guid episodeStoreId:(int64_t)id podcastFeedUrl:(id)url
{
  episodeUuidCopy = episodeUuid;
  guidCopy = guid;
  urlCopy = url;
  uuidCopy = uuid;
  v15 = [NSMutableDictionary dictionaryWithCapacity:5];
  [v15 setObject:uuidCopy forKey:@"uuid"];

  if ([episodeUuidCopy length])
  {
    [v15 setObject:episodeUuidCopy forKey:@"episodeUuid"];
  }

  if ([guidCopy length])
  {
    [v15 setObject:guidCopy forKey:@"episodeGuid"];
  }

  if ([urlCopy length])
  {
    v16 = [objc_opt_class() __stringWithPercentEscape:urlCopy];
    [v15 setObject:v16 forKey:@"podcastFeedUrl"];
  }

  v17 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playStation" queryComponents:v15];

  return v17;
}

- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = +[MTAccountController sharedInstance];
  activeDsid = [v5 activeDsid];
  v7 = [(MTPlaybackIdentifierUtil *)self playbackQueueWithDsid:activeDsid forIdentifiers:identifiersCopy];

  return v7;
}

- (_MRSystemAppPlaybackQueue)playbackQueueWithDsid:(id)dsid forIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v6 = MRSystemAppPlaybackQueueCreate();
  MRSystemAppPlaybackQueueSetGenericTrackIdentifiers();

  if (dsid)
  {
    dsidCopy = dsid;
    keys = @"enqueuerDSID";
    v7 = CFDictionaryCreate(0, &keys, &dsidCopy, 1, 0, &kCFTypeDictionaryValueCallBacks);
    MRSystemAppPlaybackQueueSetUserInfo();
    CFRelease(v7);
  }

  return v6;
}

- (unint64_t)_playQueueTypeForRequestURL:(id)l
{
  v3 = qword_100012520;
  lCopy = l;
  if (v3 != -1)
  {
    sub_100006568();
  }

  v5 = qword_100012528;
  host = [lCopy host];

  v7 = [v5 objectForKeyedSubscript:host];
  v8 = v7;
  v9 = &off_10000CC18;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  unsignedIntegerValue = [v10 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (id)_playbackRequestIdentifierWithHost:(id)host queryKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  valueCopy2 = value;
  keyCopy2 = key;
  hostCopy = host;
  v11 = [NSDictionary dictionaryWithObjects:&valueCopy forKeys:&keyCopy count:1];

  v12 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:hostCopy queryComponents:v11];

  return v12;
}

- (id)_playbackRequestIdentifierWithHost:(id)host queryComponents:(id)components
{
  hostCopy = host;
  componentsCopy = components;
  v7 = objc_alloc_init(NSURLComponents);
  [v7 setScheme:@"podcasts"];
  v20 = hostCopy;
  [v7 setHost:hostCopy];
  v8 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [componentsCopy count]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = componentsCopy;
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
  string = [v7 string];

  return string;
}

- (int64_t)_episodeOrderFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:SAMPEpisodePlaybackOrderNEWEST_FIRSTValue])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:SAMPEpisodePlaybackOrderOLDEST_FIRSTValue])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_playReasonFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = MTPlayReasonFromPersistentString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_episodeContextFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = MTEpisodeContextFromPersistentString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)_episodeContextSortFromString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = MTEpisodeContextSortTypeFromPersistentString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)__stringWithPercentEscape:(id)escape
{
  v3 = CFURLCreateStringByAddingPercentEscapes(0, escape, 0, @"\uFFFC!$&'()+,/:;=?@", 0x8000100u);

  return v3;
}

+ (id)__stringByRemovingPercentEscapes:(id)escapes
{
  v3 = CFURLCreateStringByReplacingPercentEscapes(kCFAllocatorDefault, escapes, &stru_10000CAB0);

  return v3;
}

+ (id)__queryStringToQueryDictionary:(id)dictionary
{
  v3 = [dictionary componentsSeparatedByString:@"&"];
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