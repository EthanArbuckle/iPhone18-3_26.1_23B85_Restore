@interface MTPlaybackIdentifierUtil
+ (id)__queryStringToQueryDictionary:(id)dictionary;
+ (id)__stringByRemovingPercentEscapes:(id)escapes;
+ (id)__stringWithPercentEscape:(id)escape;
- (BOOL)isLocalSetPlaybackQueueURLString:(id)string;
- (BOOL)isSubscribeCommandURLString:(id)string;
- (BOOL)isUniversalPlaybackIdentifierURLString:(id)string;
- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForIdentifiers:(id)identifiers;
- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForManifest:(id)manifest queueStatus:(unint64_t *)status;
- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForPlayerItems:(id)items;
- (_MRSystemAppPlaybackQueue)playbackQueueWithDsid:(id)dsid forIdentifiers:(id)identifiers;
- (id)_playbackRequestIdentifierWithHost:(id)host queryComponents:(id)components;
- (id)_playbackRequestIdentifierWithHost:(id)host queryKey:(id)key value:(id)value;
- (id)_universalPlaybackQueueIdentifierForPodcastUuid:(id)uuid podcastFeedUrl:(id)url podcastStoreId:(int64_t)id episodeUuid:(id)episodeUuid episodeGuid:(id)guid episodeStoreId:(int64_t)storeId context:(int64_t)context contextSortType:(int64_t)self0 sampPlaybackOrder:(id)self1;
- (id)episodeUuidForSetPlaybackQueueRequestIdentifier:(id)identifier;
- (id)localPlaybackQueueIdentifierForPodcastUuid:(id)uuid episodeUuid:(id)episodeUuid sampPlaybackOrder:(id)order;
- (id)playbackQueueIdentifierForPlayMyPodcastsWithPlaybackOrder:(id)order;
- (id)playbackQueueIdentifierForPodcastAdamId:(id)id sampPlaybackOrder:(id)order;
- (id)playbackQueueIdentifierForSubscribeToPodcastFeedUrl:(id)url;
- (id)playbackRequestURLWithDSID:(id)d baseRequestURLString:(id)string;
- (id)playbackRequestURLWithPlayReason:(unint64_t)reason baseRequestURLString:(id)string;
- (id)podcastUuidForSetPlaybackQueueRequestIdentifier:(id)identifier;
- (id)requestIdentifierForPlayerItem:(id)item;
- (id)requestIdentifiersForManifest:(id)manifest queueStatus:(unint64_t *)status;
- (id)universalPlaybackQueueIdentifierForStationUuid:(id)uuid episodeUuid:(id)episodeUuid episodeGuid:(id)guid episodeStoreId:(int64_t)id podcastFeedUrl:(id)url;
- (int64_t)_episodeContextFromString:(id)string;
- (int64_t)_episodeContextSortFromString:(id)string;
- (int64_t)_episodeOrderFromString:(id)string;
- (unint64_t)_playQueueTypeForRequestURL:(id)l;
- (unint64_t)_playReasonFromString:(id)string;
- (void)fetchPlayerItemsForPlaybackQueueRequestIdentifiers:(id)identifiers initiatedByAnotherUser:(BOOL)user completion:(id)completion;
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
  v16[2] = sub_10007F57C;
  v16[3] = &unk_1004D9928;
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
  v19[2] = sub_10007F7D0;
  v19[3] = &unk_1004D9928;
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
    if (qword_100583B00 != -1)
    {
      sub_1003B2B48();
    }

    v5 = [qword_100583AF8 containsObject:host];
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
  if (!v23)
  {
    if (!v22)
    {
      goto LABEL_11;
    }

    v25 = +[MTDB sharedInstance];
    mainOrPrivateContext = [v25 mainOrPrivateContext];

    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = sub_100008970;
    v45 = sub_10003B49C;
    v46 = 0;
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100080084;
    v37[3] = &unk_1004D87E8;
    v27 = mainOrPrivateContext;
    v38 = v27;
    v39 = episodeUuidCopy;
    v40 = &v41;
    [v27 performBlockAndWait:v37];
    if ([v42[5] length])
    {
      [v24 setObject:v42[5] forKey:@"uuid"];
    }

    _Block_object_dispose(&v41, 8);
    goto LABEL_10;
  }

  [v24 setObject:uuidCopy forKey:@"uuid"];
  if (v22)
  {
LABEL_10:
    [v24 setObject:episodeUuidCopy forKey:@"episodeUuid"];
  }

LABEL_11:
  if ([urlCopy length])
  {
    v28 = [objc_opt_class() __stringWithPercentEscape:urlCopy];
    [v24 setObject:v28 forKey:@"podcastFeedUrl"];
  }

  if ([guidCopy length])
  {
    [v24 setObject:guidCopy forKey:@"episodeGuid"];
  }

  v29 = kMTSerpentAdamIdOffset;
  if (id && kMTSerpentAdamIdOffset != id)
  {
    v30 = [NSString stringWithFormat:@"%llu", id];
    [v24 setObject:v30 forKey:@"storeCollectionId"];
  }

  if (storeId && v29 != storeId)
  {
    storeId = [NSString stringWithFormat:@"%llu", storeId];
    [v24 setObject:storeId forKey:@"storeTrackId"];
  }

  v32 = NSPersistentStringForMTEpisodeContext();
  [v24 setObject:v32 forKey:@"context"];

  v33 = NSPersistentStringForMTEpisodeContextSortType();
  [v24 setObject:v33 forKey:@"contextSortType"];

  v34 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playPodcast" queryComponents:v24];

  return v34;
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
  v16 = [NSMutableDictionary dictionaryWithCapacity:5];
  [v16 setObject:uuidCopy forKey:@"uuid"];

  if ([episodeUuidCopy length])
  {
    [v16 setObject:episodeUuidCopy forKey:@"episodeUuid"];
  }

  if ([guidCopy length])
  {
    [v16 setObject:guidCopy forKey:@"episodeGuid"];
  }

  if ([urlCopy length])
  {
    v17 = [objc_opt_class() __stringWithPercentEscape:urlCopy];
    [v16 setObject:v17 forKey:@"podcastFeedUrl"];
  }

  if (([MTStoreIdentifier isEmpty:id]& 1) == 0)
  {
    v18 = [NSString stringWithFormat:@"%llu", id];
    [v16 setObject:v18 forKey:@"storeTrackId"];
  }

  v19 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playStation" queryComponents:v16];

  return v19;
}

- (id)episodeUuidForSetPlaybackQueueRequestIdentifier:(id)identifier
{
  v3 = [NSURL URLWithString:identifier];
  pf_queryAsDictionary = [v3 pf_queryAsDictionary];
  v5 = [MTEpisodeLookupRequest alloc];
  v6 = [pf_queryAsDictionary objectForKeyedSubscript:@"storeTrackId"];
  [v5 setStoreTrackId:{objc_msgSend(v6, "longLongValue")}];

  v7 = [pf_queryAsDictionary objectForKeyedSubscript:@"episodeUuid"];
  [v5 setUuid:v7];

  v8 = [pf_queryAsDictionary objectForKeyedSubscript:@"episodeGuid"];
  [v5 setEpisodeGuid:v8];

  v9 = [pf_queryAsDictionary objectForKeyedSubscript:@"episodeTitle"];
  stringByRemovingPercentEscapes = [v9 stringByRemovingPercentEscapes];
  [v5 setEpisodeTitle:stringByRemovingPercentEscapes];

  v11 = [pf_queryAsDictionary objectForKeyedSubscript:@"podcastTitle"];
  stringByRemovingPercentEscapes2 = [v11 stringByRemovingPercentEscapes];
  [v5 setPodcastTitle:stringByRemovingPercentEscapes2];

  v13 = [pf_queryAsDictionary objectForKeyedSubscript:@"podcastFeedUrl"];
  stringByRemovingPercentEscapes3 = [v13 stringByRemovingPercentEscapes];
  v14StringByRemovingPercentEscapes = [stringByRemovingPercentEscapes3 stringByRemovingPercentEscapes];
  [v5 setPodcastFeedUrl:v14StringByRemovingPercentEscapes];

  v16 = [pf_queryAsDictionary objectForKeyedSubscript:@"streamUrl"];
  stringByRemovingPercentEscapes4 = [v16 stringByRemovingPercentEscapes];
  v17StringByRemovingPercentEscapes = [stringByRemovingPercentEscapes4 stringByRemovingPercentEscapes];
  [v5 setStreamUrl:v17StringByRemovingPercentEscapes];

  v19 = +[MTEpisodeLookupUtil sharedInstance];
  v20 = [v19 findEpisodeWithRequest:v5];

  uuid = [v20 uuid];

  return uuid;
}

- (id)podcastUuidForSetPlaybackQueueRequestIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [NSURL URLWithString:identifierCopy];
  pf_queryAsDictionary = [v4 pf_queryAsDictionary];
  v6 = [pf_queryAsDictionary objectForKeyedSubscript:@"podcastFeedUrl"];
  stringByRemovingPercentEscapes = [v6 stringByRemovingPercentEscapes];
  v7StringByRemovingPercentEscapes = [stringByRemovingPercentEscapes stringByRemovingPercentEscapes];

  v9 = [pf_queryAsDictionary objectForKeyedSubscript:@"storeCollectionId"];
  longLongValue = [v9 longLongValue];

  v11 = [NSNumber numberWithLongLong:longLongValue];
  v12 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v12 mainOrPrivateContext];

  v14 = [[MTStoreIdentifier alloc] initWithFeedUrl:v7StringByRemovingPercentEscapes storeIdentifier:v11];
  v15 = [NSFetchRequest alloc];
  v16 = [v15 initWithEntityName:kMTPodcastEntityName];
  v17 = [MTPodcast predicateForIdentifer:v14];
  [v16 setPredicate:v17];

  [v16 setFetchLimit:1];
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_100008970;
  v39 = sub_10003B49C;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100008970;
  v33 = sub_10003B49C;
  v34 = 0;
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100080A3C;
  v24[3] = &unk_1004D8810;
  v18 = mainOrPrivateContext;
  v25 = v18;
  v19 = v16;
  v26 = v19;
  v27 = &v35;
  v28 = &v29;
  [v18 performBlockAndWait:v24];
  if (v36[5])
  {
    v20 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = v36[5];
      *buf = 138412290;
      v42 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error fetching podcast for playback identifier: %@", buf, 0xCu);
    }

    v22 = 0;
  }

  else
  {
    v22 = v30[5];
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v22;
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

- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForManifest:(id)manifest queueStatus:(unint64_t *)status
{
  v5 = [(MTPlaybackIdentifierUtil *)self requestIdentifiersForManifest:manifest queueStatus:status];
  v6 = [(MTPlaybackIdentifierUtil *)self playbackQueueWithAccountInfoForIdentifiers:v5];

  return v6;
}

- (id)requestIdentifiersForManifest:(id)manifest queueStatus:(unint64_t *)status
{
  manifestCopy = manifest;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = manifestCopy;
    if (![v7 loadStatus])
    {
      v15 = AMSUserNotification_ptr;
      podcastAdamId = [v7 podcastAdamId];
      v17 = [MTStoreIdentifier isNotEmptyNumber:podcastAdamId];

      if (v17)
      {
        if ([v7 playbackOrder] == 1)
        {
          v18 = &SAMPEpisodePlaybackOrderNEWEST_FIRSTValue;
        }

        else
        {
          playbackOrder = [v7 playbackOrder];
          v18 = &SAMPEpisodePlaybackOrderAPPLICATION_DEFAULTValue;
          if (playbackOrder == 2)
          {
            v18 = &SAMPEpisodePlaybackOrderOLDEST_FIRSTValue;
          }
        }

        v34 = *v18;
        podcastAdamId2 = [v7 podcastAdamId];
        stringValue = [podcastAdamId2 stringValue];
        v37 = [(MTPlaybackIdentifierUtil *)self playbackQueueIdentifierForPodcastAdamId:stringValue sampPlaybackOrder:v34];
        v47 = v37;
        v41 = [NSArray arrayWithObjects:&v47 count:1];
      }

      else
      {
        episodeAdamIds = [v7 episodeAdamIds];
        v20 = [episodeAdamIds count];

        if (v20)
        {
          v41 = objc_alloc_init(NSMutableArray);
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v39 = v7;
          obj = [v7 episodeAdamIds];
          v21 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v43;
            do
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v43 != v23)
                {
                  objc_enumerationMutation(obj);
                }

                v25 = *(*(&v42 + 1) + 8 * i);
                if ([v15[309] isNotEmptyNumber:v25])
                {
                  v26 = [NSString stringWithFormat:@"podcasts://%@", @"playItem"];
                  v27 = [NSURL URLWithString:v26];
                  v28 = objc_opt_new();
                  v29 = [NSString stringWithFormat:@"%@", v25];
                  [v28 setObject:v29 forKey:@"storeTrackId"];

                  v30 = [v27 pf_URLByAppendingQueryParameters:v28];
                  [v30 absoluteString];
                  v32 = v31 = v15;

                  [v41 addObject:v32];
                  v15 = v31;
                }
              }

              v22 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
            }

            while (v22);
          }

          goto LABEL_40;
        }

        v41 = &__NSArray0__struct;
      }

      goto LABEL_40;
    }
  }

  v41 = objc_alloc_init(NSMutableArray);
  currentIndex = [manifestCopy currentIndex];
  if (currentIndex >= [manifestCopy count])
  {
    v10 = 0;
LABEL_15:
    if (status)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = [manifestCopy objectAtIndex:currentIndex];
    if (([v11 isStreamable] & 1) == 0)
    {
      break;
    }

LABEL_10:
    v14 = [(MTPlaybackIdentifierUtil *)self requestIdentifierForPlayerItem:v11];
    if ([v14 length])
    {
      [v41 addObject:v14];
    }

    if (++currentIndex >= [manifestCopy count])
    {
      goto LABEL_15;
    }
  }

  currentItem = [manifestCopy currentItem];
  v13 = [currentItem isEqual:v11];

  if (v13)
  {
    v10 = 1;
    goto LABEL_22;
  }

  if (++v9 <= 1)
  {
    v10 = 2;
    goto LABEL_10;
  }

  v10 = 3;
LABEL_22:

  if (status)
  {
LABEL_23:
    *status = v10;
  }

LABEL_40:

  return v41;
}

- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForPlayerItems:(id)items
{
  itemsCopy = items;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [itemsCopy count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = itemsCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(MTPlaybackIdentifierUtil *)self requestIdentifierForPlayerItem:*(*(&v14 + 1) + 8 * v10), v14];
        if ([v11 length])
        {
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(MTPlaybackIdentifierUtil *)self playbackQueueWithAccountInfoForIdentifiers:v5];
  return v12;
}

- (void)fetchPlayerItemsForPlaybackQueueRequestIdentifiers:(id)identifiers initiatedByAnotherUser:(BOOL)user completion:(id)completion
{
  userCopy = user;
  identifiersCopy = identifiers;
  completionCopy = completion;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v7 = +[NSMutableArray array];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v8 = identifiersCopy;
  v9 = [v8 countByEnumeratingWithState:&v64 objects:v81 count:16];
  if (v9)
  {
    v10 = *v65;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v65 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [NSURL URLWithString:*(*(&v64 + 1) + 8 * i)];
        v13 = +[NSString UUID];
        v14 = [v12 pf_URLByAppendingQueryParameterKey:@"deDupe" value:v13];
        absoluteString = [v14 absoluteString];

        [v7 addObject:absoluteString];
      }

      v9 = [v8 countByEnumeratingWithState:&v64 objects:v81 count:16];
    }

    while (v9);
  }

  v16 = v7;
  v17 = _MTLogCategoryMediaRemote();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Fetch player items for playback queue identifiers: %@", buf, 0xCu);
  }

  v44 = objc_alloc_init(NSMutableDictionary);
  v45 = objc_alloc_init(NSMutableDictionary);
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = v16;
  v18 = [obj countByEnumeratingWithState:&v60 objects:v80 count:16];
  if (v18)
  {
    v47 = *v61;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v61 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v60 + 1) + 8 * j);
        v21 = [(MTPlaybackIdentifierUtil *)self episodeUuidForSetPlaybackQueueRequestIdentifier:v20];
        v22 = [NSURL URLWithString:v20];
        pf_queryAsDictionary = [v22 pf_queryAsDictionary];
        v24 = [pf_queryAsDictionary objectForKeyedSubscript:@"storeTrackId"];
        longLongValue = [v24 longLongValue];

        v26 = [pf_queryAsDictionary objectForKeyedSubscript:@"contentItemId"];
        if (userCopy)
        {
          if ([MTStoreIdentifier isNotEmpty:longLongValue])
          {
            v27 = [NSString stringWithFormat:@"%lld", longLongValue];
            [v45 setObject:v20 forKey:v27];
          }
        }

        else
        {
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v77 = sub_100008970;
          v78 = sub_10003B49C;
          v79 = 0;
          if (+[MTPlayerController hasDefaultInstance](MTPlayerController, "hasDefaultInstance") && [v26 length])
          {
            v28 = +[MTPlayerController defaultInstance];
            compositeManifest = [v28 compositeManifest];
            v57[0] = _NSConcreteStackBlock;
            v57[1] = 3221225472;
            v57[2] = sub_100081AA0;
            v57[3] = &unk_1004D9970;
            v58 = v26;
            v59 = buf;
            [compositeManifest enumerateObjectsUsingBlock:v57];
          }

          if (!*(*&buf[8] + 40) && (+[PFClientUtil isRunningOnHomepod]& 1) == 0)
          {
            v30 = [MTBaseEpisodeListManifest mediaItemForEpisodeWithUUID:v21];
            v31 = *(*&buf[8] + 40);
            *(*&buf[8] + 40) = v30;
          }

          if (*(*&buf[8] + 40))
          {
            if ([v26 length])
            {
              v32 = [[NSUUID alloc] initWithUUIDString:v26];
              [*(*&buf[8] + 40) setInstanceIdentifier:v32];
            }

            [v44 setObject:*(*&buf[8] + 40) forKey:v20];
          }

          else
          {
            if ([MTStoreIdentifier isNotEmpty:longLongValue])
            {
              v33 = [NSString stringWithFormat:@"%lld", longLongValue];
              [v45 setObject:v20 forKey:v33];
            }

            else
            {
              firstObject = [obj firstObject];
              v35 = [firstObject isEqualToString:v20];

              if (v35)
              {
                *(v69 + 24) = 1;
              }

              v33 = _MTLogCategoryMediaRemote();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                *v72 = 134218242;
                v73 = longLongValue;
                v74 = 2112;
                v75 = v20;
                _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Requested to play an item with no database match and no storeId: %lld with identifier: %@.", v72, 0x16u);
              }
            }
          }

          _Block_object_dispose(buf, 8);
        }
      }

      v18 = [obj countByEnumeratingWithState:&v60 objects:v80 count:16];
    }

    while (v18);
  }

  v36 = objc_alloc_init(MTPlayerItem);
  if ([v45 count])
  {
    allKeys = [v45 allKeys];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100081B48;
    v50[3] = &unk_1004D9998;
    v51 = v45;
    v52 = v44;
    v55 = completionCopy;
    v53 = obj;
    v54 = v36;
    v56 = &v68;
    [MTNetworkMediaManifest fetchPlayerItemsFor:allKeys completion:v50];

    v38 = v51;
LABEL_44:

    goto LABEL_45;
  }

  if (completionCopy)
  {
    v39 = [v44 objectsForKeys:obj notFoundMarker:v36];
    v38 = [v39 mutableCopy];

    [v38 removeObject:v36];
    v40 = _MTLogCategoryMediaRemote();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [v38 count];
      v42 = [obj count];
      *buf = 134218240;
      *&buf[4] = v41;
      *&buf[12] = 2048;
      *&buf[14] = v42;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Fetched %lu player items for %lu identifiers", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, v38, *(v69 + 24), 0);
    goto LABEL_44;
  }

LABEL_45:

  _Block_object_dispose(&v68, 8);
}

- (id)requestIdentifierForPlayerItem:(id)item
{
  if (item)
  {
    itemCopy = item;
    v26 = [NSString stringWithFormat:@"podcasts://%@", @"playItem"];
    v25 = [NSURL URLWithString:?];
    v4 = objc_opt_new();
    contentItem = [itemCopy contentItem];
    identifier = [contentItem identifier];

    episodeStoreId = [itemCopy episodeStoreId];
    podcastStoreId = [itemCopy podcastStoreId];
    episodeUuid = [itemCopy episodeUuid];
    episodeGuid = [itemCopy episodeGuid];
    podcastFeedUrl = [itemCopy podcastFeedUrl];
    pf_stringWithPercentEscape = [podcastFeedUrl pf_stringWithPercentEscape];

    title = [itemCopy title];
    author = [itemCopy author];
    streamUrl = [itemCopy streamUrl];
    absoluteString = [streamUrl absoluteString];
    pf_stringWithPercentEscape2 = [absoluteString pf_stringWithPercentEscape];

    [itemCopy playhead];
    v16 = v15;

    if ([identifier length])
    {
      [v4 setObject:identifier forKey:@"contentItemId"];
    }

    if (episodeStoreId >= 1)
    {
      v17 = [NSString stringWithFormat:@"%lld", episodeStoreId];
      [v4 setObject:v17 forKey:@"storeTrackId"];
    }

    if (podcastStoreId >= 1)
    {
      v18 = [NSString stringWithFormat:@"%lld", podcastStoreId];
      [v4 setObject:v18 forKey:@"storeCollectionId"];
    }

    if ([episodeUuid length])
    {
      [v4 setObject:episodeUuid forKey:@"episodeUuid"];
    }

    if ([episodeGuid length])
    {
      [v4 setObject:episodeGuid forKey:@"episodeGuid"];
    }

    if ([pf_stringWithPercentEscape length])
    {
      [v4 setObject:pf_stringWithPercentEscape forKey:@"podcastFeedUrl"];
    }

    if ([title length])
    {
      [v4 setObject:title forKey:@"episodeTitle"];
    }

    if ([author length])
    {
      [v4 setObject:author forKey:@"podcastTitle"];
    }

    if ([pf_stringWithPercentEscape2 length])
    {
      [v4 setObject:pf_stringWithPercentEscape2 forKey:@"streamUrl"];
    }

    if (v16 > 0.0)
    {
      v19 = [NSString stringWithFormat:@"%f", *&v16];
      [v4 setObject:v19 forKey:@"playhead"];
    }

    v20 = [v25 pf_URLByAppendingQueryParameters:v4];

    absoluteString2 = [v20 absoluteString];
  }

  else
  {
    absoluteString2 = 0;
  }

  return absoluteString2;
}

- (unint64_t)_playQueueTypeForRequestURL:(id)l
{
  v3 = qword_100583B08;
  lCopy = l;
  if (v3 != -1)
  {
    sub_1003B2B5C();
  }

  v5 = qword_100583B10;
  host = [lCopy host];

  v7 = [v5 objectForKeyedSubscript:host];
  v8 = v7;
  v9 = &off_100500C88;
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
  v3 = CFURLCreateStringByReplacingPercentEscapes(kCFAllocatorDefault, escapes, &stru_1004F3018);

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