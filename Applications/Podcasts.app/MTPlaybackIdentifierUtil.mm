@interface MTPlaybackIdentifierUtil
+ (id)__queryStringToQueryDictionary:(id)a3;
+ (id)__stringByRemovingPercentEscapes:(id)a3;
+ (id)__stringWithPercentEscape:(id)a3;
- (BOOL)isLocalSetPlaybackQueueURLString:(id)a3;
- (BOOL)isSubscribeCommandURLString:(id)a3;
- (BOOL)isUniversalPlaybackIdentifierURLString:(id)a3;
- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForIdentifiers:(id)a3;
- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForManifest:(id)a3 queueStatus:(unint64_t *)a4;
- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForPlayerItems:(id)a3;
- (_MRSystemAppPlaybackQueue)playbackQueueWithDsid:(id)a3 forIdentifiers:(id)a4;
- (id)_playbackRequestIdentifierWithHost:(id)a3 queryComponents:(id)a4;
- (id)_playbackRequestIdentifierWithHost:(id)a3 queryKey:(id)a4 value:(id)a5;
- (id)_universalPlaybackQueueIdentifierForPodcastUuid:(id)a3 podcastFeedUrl:(id)a4 podcastStoreId:(int64_t)a5 episodeUuid:(id)a6 episodeGuid:(id)a7 episodeStoreId:(int64_t)a8 context:(int64_t)a9 contextSortType:(int64_t)a10 sampPlaybackOrder:(id)a11;
- (id)episodeUuidForSetPlaybackQueueRequestIdentifier:(id)a3;
- (id)localPlaybackQueueIdentifierForPodcastUuid:(id)a3 episodeUuid:(id)a4 sampPlaybackOrder:(id)a5;
- (id)playbackQueueIdentifierForPlayMyPodcastsWithPlaybackOrder:(id)a3;
- (id)playbackQueueIdentifierForPodcastAdamId:(id)a3 sampPlaybackOrder:(id)a4;
- (id)playbackQueueIdentifierForSubscribeToPodcastFeedUrl:(id)a3;
- (id)playbackRequestURLWithDSID:(id)a3 baseRequestURLString:(id)a4;
- (id)playbackRequestURLWithPlayReason:(unint64_t)a3 baseRequestURLString:(id)a4;
- (id)podcastUuidForSetPlaybackQueueRequestIdentifier:(id)a3;
- (id)requestIdentifierForPlayerItem:(id)a3;
- (id)requestIdentifiersForManifest:(id)a3 queueStatus:(unint64_t *)a4;
- (id)universalPlaybackQueueIdentifierForStationUuid:(id)a3 episodeUuid:(id)a4 episodeGuid:(id)a5 episodeStoreId:(int64_t)a6 podcastFeedUrl:(id)a7;
- (int64_t)_episodeContextFromString:(id)a3;
- (int64_t)_episodeContextSortFromString:(id)a3;
- (int64_t)_episodeOrderFromString:(id)a3;
- (unint64_t)_playQueueTypeForRequestURL:(id)a3;
- (unint64_t)_playReasonFromString:(id)a3;
- (void)fetchPlayerItemsForPlaybackQueueRequestIdentifiers:(id)a3 initiatedByAnotherUser:(BOOL)a4 completion:(id)a5;
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
  v16[2] = sub_10007F57C;
  v16[3] = &unk_1004D9928;
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
  v19[2] = sub_10007F7D0;
  v19[3] = &unk_1004D9928;
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
    if (qword_100583B00 != -1)
    {
      sub_1003B2B48();
    }

    v5 = [qword_100583AF8 containsObject:v4];
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
  if (!v23)
  {
    if (!v22)
    {
      goto LABEL_11;
    }

    v25 = +[MTDB sharedInstance];
    v26 = [v25 mainOrPrivateContext];

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
    v27 = v26;
    v38 = v27;
    v39 = v18;
    v40 = &v41;
    [v27 performBlockAndWait:v37];
    if ([v42[5] length])
    {
      [v24 setObject:v42[5] forKey:@"uuid"];
    }

    _Block_object_dispose(&v41, 8);
    goto LABEL_10;
  }

  [v24 setObject:v16 forKey:@"uuid"];
  if (v22)
  {
LABEL_10:
    [v24 setObject:v18 forKey:@"episodeUuid"];
  }

LABEL_11:
  if ([v17 length])
  {
    v28 = [objc_opt_class() __stringWithPercentEscape:v17];
    [v24 setObject:v28 forKey:@"podcastFeedUrl"];
  }

  if ([v19 length])
  {
    [v24 setObject:v19 forKey:@"episodeGuid"];
  }

  v29 = kMTSerpentAdamIdOffset;
  if (a5 && kMTSerpentAdamIdOffset != a5)
  {
    v30 = [NSString stringWithFormat:@"%llu", a5];
    [v24 setObject:v30 forKey:@"storeCollectionId"];
  }

  if (a8 && v29 != a8)
  {
    v31 = [NSString stringWithFormat:@"%llu", a8];
    [v24 setObject:v31 forKey:@"storeTrackId"];
  }

  v32 = NSPersistentStringForMTEpisodeContext();
  [v24 setObject:v32 forKey:@"context"];

  v33 = NSPersistentStringForMTEpisodeContextSortType();
  [v24 setObject:v33 forKey:@"contextSortType"];

  v34 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playPodcast" queryComponents:v24];

  return v34;
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
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = a3;
  v16 = [NSMutableDictionary dictionaryWithCapacity:5];
  [v16 setObject:v15 forKey:@"uuid"];

  if ([v12 length])
  {
    [v16 setObject:v12 forKey:@"episodeUuid"];
  }

  if ([v13 length])
  {
    [v16 setObject:v13 forKey:@"episodeGuid"];
  }

  if ([v14 length])
  {
    v17 = [objc_opt_class() __stringWithPercentEscape:v14];
    [v16 setObject:v17 forKey:@"podcastFeedUrl"];
  }

  if (([MTStoreIdentifier isEmpty:a6]& 1) == 0)
  {
    v18 = [NSString stringWithFormat:@"%llu", a6];
    [v16 setObject:v18 forKey:@"storeTrackId"];
  }

  v19 = [(MTPlaybackIdentifierUtil *)self _playbackRequestIdentifierWithHost:@"playStation" queryComponents:v16];

  return v19;
}

- (id)episodeUuidForSetPlaybackQueueRequestIdentifier:(id)a3
{
  v3 = [NSURL URLWithString:a3];
  v4 = [v3 pf_queryAsDictionary];
  v5 = [MTEpisodeLookupRequest alloc];
  v6 = [v4 objectForKeyedSubscript:@"storeTrackId"];
  [v5 setStoreTrackId:{objc_msgSend(v6, "longLongValue")}];

  v7 = [v4 objectForKeyedSubscript:@"episodeUuid"];
  [v5 setUuid:v7];

  v8 = [v4 objectForKeyedSubscript:@"episodeGuid"];
  [v5 setEpisodeGuid:v8];

  v9 = [v4 objectForKeyedSubscript:@"episodeTitle"];
  v10 = [v9 stringByRemovingPercentEscapes];
  [v5 setEpisodeTitle:v10];

  v11 = [v4 objectForKeyedSubscript:@"podcastTitle"];
  v12 = [v11 stringByRemovingPercentEscapes];
  [v5 setPodcastTitle:v12];

  v13 = [v4 objectForKeyedSubscript:@"podcastFeedUrl"];
  v14 = [v13 stringByRemovingPercentEscapes];
  v15 = [v14 stringByRemovingPercentEscapes];
  [v5 setPodcastFeedUrl:v15];

  v16 = [v4 objectForKeyedSubscript:@"streamUrl"];
  v17 = [v16 stringByRemovingPercentEscapes];
  v18 = [v17 stringByRemovingPercentEscapes];
  [v5 setStreamUrl:v18];

  v19 = +[MTEpisodeLookupUtil sharedInstance];
  v20 = [v19 findEpisodeWithRequest:v5];

  v21 = [v20 uuid];

  return v21;
}

- (id)podcastUuidForSetPlaybackQueueRequestIdentifier:(id)a3
{
  v3 = a3;
  v4 = [NSURL URLWithString:v3];
  v5 = [v4 pf_queryAsDictionary];
  v6 = [v5 objectForKeyedSubscript:@"podcastFeedUrl"];
  v7 = [v6 stringByRemovingPercentEscapes];
  v8 = [v7 stringByRemovingPercentEscapes];

  v9 = [v5 objectForKeyedSubscript:@"storeCollectionId"];
  v10 = [v9 longLongValue];

  v11 = [NSNumber numberWithLongLong:v10];
  v12 = +[MTDB sharedInstance];
  v13 = [v12 mainOrPrivateContext];

  v14 = [[MTStoreIdentifier alloc] initWithFeedUrl:v8 storeIdentifier:v11];
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
  v18 = v13;
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

- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForManifest:(id)a3 queueStatus:(unint64_t *)a4
{
  v5 = [(MTPlaybackIdentifierUtil *)self requestIdentifiersForManifest:a3 queueStatus:a4];
  v6 = [(MTPlaybackIdentifierUtil *)self playbackQueueWithAccountInfoForIdentifiers:v5];

  return v6;
}

- (id)requestIdentifiersForManifest:(id)a3 queueStatus:(unint64_t *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    if (![v7 loadStatus])
    {
      v15 = AMSUserNotification_ptr;
      v16 = [v7 podcastAdamId];
      v17 = [MTStoreIdentifier isNotEmptyNumber:v16];

      if (v17)
      {
        if ([v7 playbackOrder] == 1)
        {
          v18 = &SAMPEpisodePlaybackOrderNEWEST_FIRSTValue;
        }

        else
        {
          v33 = [v7 playbackOrder];
          v18 = &SAMPEpisodePlaybackOrderAPPLICATION_DEFAULTValue;
          if (v33 == 2)
          {
            v18 = &SAMPEpisodePlaybackOrderOLDEST_FIRSTValue;
          }
        }

        v34 = *v18;
        v35 = [v7 podcastAdamId];
        v36 = [v35 stringValue];
        v37 = [(MTPlaybackIdentifierUtil *)self playbackQueueIdentifierForPodcastAdamId:v36 sampPlaybackOrder:v34];
        v47 = v37;
        v41 = [NSArray arrayWithObjects:&v47 count:1];
      }

      else
      {
        v19 = [v7 episodeAdamIds];
        v20 = [v19 count];

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
  v8 = [v6 currentIndex];
  if (v8 >= [v6 count])
  {
    v10 = 0;
LABEL_15:
    if (a4)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = [v6 objectAtIndex:v8];
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

    if (++v8 >= [v6 count])
    {
      goto LABEL_15;
    }
  }

  v12 = [v6 currentItem];
  v13 = [v12 isEqual:v11];

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

  if (a4)
  {
LABEL_23:
    *a4 = v10;
  }

LABEL_40:

  return v41;
}

- (_MRSystemAppPlaybackQueue)playbackQueueWithAccountInfoForPlayerItems:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v4 count]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
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

- (void)fetchPlayerItemsForPlaybackQueueRequestIdentifiers:(id)a3 initiatedByAnotherUser:(BOOL)a4 completion:(id)a5
{
  v48 = a4;
  v6 = a3;
  v43 = a5;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v7 = +[NSMutableArray array];
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v8 = v6;
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
        v15 = [v14 absoluteString];

        [v7 addObject:v15];
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
        v23 = [v22 pf_queryAsDictionary];
        v24 = [v23 objectForKeyedSubscript:@"storeTrackId"];
        v25 = [v24 longLongValue];

        v26 = [v23 objectForKeyedSubscript:@"contentItemId"];
        if (v48)
        {
          if ([MTStoreIdentifier isNotEmpty:v25])
          {
            v27 = [NSString stringWithFormat:@"%lld", v25];
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
            v29 = [v28 compositeManifest];
            v57[0] = _NSConcreteStackBlock;
            v57[1] = 3221225472;
            v57[2] = sub_100081AA0;
            v57[3] = &unk_1004D9970;
            v58 = v26;
            v59 = buf;
            [v29 enumerateObjectsUsingBlock:v57];
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
            if ([MTStoreIdentifier isNotEmpty:v25])
            {
              v33 = [NSString stringWithFormat:@"%lld", v25];
              [v45 setObject:v20 forKey:v33];
            }

            else
            {
              v34 = [obj firstObject];
              v35 = [v34 isEqualToString:v20];

              if (v35)
              {
                *(v69 + 24) = 1;
              }

              v33 = _MTLogCategoryMediaRemote();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                *v72 = 134218242;
                v73 = v25;
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
    v37 = [v45 allKeys];
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100081B48;
    v50[3] = &unk_1004D9998;
    v51 = v45;
    v52 = v44;
    v55 = v43;
    v53 = obj;
    v54 = v36;
    v56 = &v68;
    [MTNetworkMediaManifest fetchPlayerItemsFor:v37 completion:v50];

    v38 = v51;
LABEL_44:

    goto LABEL_45;
  }

  if (v43)
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

    (*(v43 + 2))(v43, v38, *(v69 + 24), 0);
    goto LABEL_44;
  }

LABEL_45:

  _Block_object_dispose(&v68, 8);
}

- (id)requestIdentifierForPlayerItem:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v26 = [NSString stringWithFormat:@"podcasts://%@", @"playItem"];
    v25 = [NSURL URLWithString:?];
    v4 = objc_opt_new();
    v5 = [v3 contentItem];
    v6 = [v5 identifier];

    v7 = [v3 episodeStoreId];
    v8 = [v3 podcastStoreId];
    v9 = [v3 episodeUuid];
    v10 = [v3 episodeGuid];
    v11 = [v3 podcastFeedUrl];
    v24 = [v11 pf_stringWithPercentEscape];

    v12 = [v3 title];
    v23 = [v3 author];
    v13 = [v3 streamUrl];
    v14 = [v13 absoluteString];
    v27 = [v14 pf_stringWithPercentEscape];

    [v3 playhead];
    v16 = v15;

    if ([v6 length])
    {
      [v4 setObject:v6 forKey:@"contentItemId"];
    }

    if (v7 >= 1)
    {
      v17 = [NSString stringWithFormat:@"%lld", v7];
      [v4 setObject:v17 forKey:@"storeTrackId"];
    }

    if (v8 >= 1)
    {
      v18 = [NSString stringWithFormat:@"%lld", v8];
      [v4 setObject:v18 forKey:@"storeCollectionId"];
    }

    if ([v9 length])
    {
      [v4 setObject:v9 forKey:@"episodeUuid"];
    }

    if ([v10 length])
    {
      [v4 setObject:v10 forKey:@"episodeGuid"];
    }

    if ([v24 length])
    {
      [v4 setObject:v24 forKey:@"podcastFeedUrl"];
    }

    if ([v12 length])
    {
      [v4 setObject:v12 forKey:@"episodeTitle"];
    }

    if ([v23 length])
    {
      [v4 setObject:v23 forKey:@"podcastTitle"];
    }

    if ([v27 length])
    {
      [v4 setObject:v27 forKey:@"streamUrl"];
    }

    if (v16 > 0.0)
    {
      v19 = [NSString stringWithFormat:@"%f", *&v16];
      [v4 setObject:v19 forKey:@"playhead"];
    }

    v20 = [v25 pf_URLByAppendingQueryParameters:v4];

    v21 = [v20 absoluteString];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unint64_t)_playQueueTypeForRequestURL:(id)a3
{
  v3 = qword_100583B08;
  v4 = a3;
  if (v3 != -1)
  {
    sub_1003B2B5C();
  }

  v5 = qword_100583B10;
  v6 = [v4 host];

  v7 = [v5 objectForKeyedSubscript:v6];
  v8 = v7;
  v9 = &off_100500C88;
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
  v3 = CFURLCreateStringByReplacingPercentEscapes(kCFAllocatorDefault, a3, &stru_1004F3018);

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