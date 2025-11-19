@interface MTSubscribeUtil
+ (BOOL)isSubscribedToPodcastWithFeedUrl:(id)a3;
+ (BOOL)isSubscribedToPodcastWithStorePlatformDictionary:(id)a3;
+ (BOOL)isSubscribedToPodcastWithUuid:(id)a3;
+ (id)_identifierForDictionary:(id)a3;
+ (void)subscribeToPodcastWithAdamID:(id)a3 completion:(id)a4;
+ (void)subscribeToPodcastWithFeedUrl:(id)a3 completion:(id)a4;
+ (void)subscribeToPodcastWithStorePlatformDictionary:(id)a3 completion:(id)a4;
+ (void)unsubscribeToPodcastWithStorePlatformDictionary:(id)a3;
@end

@implementation MTSubscribeUtil

+ (BOOL)isSubscribedToPodcastWithUuid:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v4 = +[MTDB sharedInstance];
    v5 = [v4 mainOrPrivateContext];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005DFE8;
    v9[3] = &unk_1004D87E8;
    v10 = v3;
    v6 = v5;
    v11 = v6;
    v12 = &v13;
    [v6 performBlockAndWait:v9];
    v7 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

+ (BOOL)isSubscribedToPodcastWithFeedUrl:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = +[MTDB sharedInstance];
    v6 = [v5 mainOrPrivateContext];
    v7 = [MTPodcast podcastUuidForFeedUrlString:v4 ctx:v6];

    v8 = [a1 isSubscribedToPodcastWithUuid:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isSubscribedToPodcastWithStorePlatformDictionary:(id)a3
{
  v4 = a3;
  v5 = [a1 _identifierForDictionary:v4];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v6 = +[MTDB sharedInstance];
  v7 = [v6 mainOrPrivateContext];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005E284;
  v11[3] = &unk_1004D87E8;
  v8 = v5;
  v12 = v8;
  v9 = v7;
  v13 = v9;
  v14 = &v15;
  [v9 performBlockAndWait:v11];
  LOBYTE(v6) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v6;
}

+ (void)subscribeToPodcastWithFeedUrl:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v7 = +[MTDB sharedInstance];
  v8 = [v7 mainOrPrivateContext];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005E564;
  v16[3] = &unk_1004D8810;
  v9 = v5;
  v17 = v9;
  v10 = v8;
  v18 = v10;
  v19 = &v25;
  v20 = &v21;
  [v10 performBlockAndWait:v16];
  if (*(v26 + 24) == 1)
  {
    if (v6)
    {
      v11 = *(v22 + 24);
      v12 = v11 ^ 1;
LABEL_8:
      v6[2](v6, v12, v11);
    }
  }

  else if ([v9 length])
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005E684;
    v13[3] = &unk_1004D8520;
    v14 = v9;
    v15 = v6;
    dispatch_async(&_dispatch_main_q, v13);
  }

  else if (v6)
  {
    v12 = 0;
    v11 = 2;
    goto LABEL_8;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

+ (void)subscribeToPodcastWithAdamID:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(MTAddPodcastParams);
  v8 = [v6 longLongValue];

  [(MTAddPodcastParams *)v7 setStoreCollectionId:v8];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005E880;
  v11[3] = &unk_1004D8838;
  v12 = v5;
  v9 = v5;
  [(MTAddPodcastParams *)v7 setCompletion:v11];
  v10 = +[MTSubscriptionManager sharedInstance];
  [v10 subscribeToPodcastWithParams:v7];
}

+ (void)subscribeToPodcastWithStorePlatformDictionary:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MTSubscribeUtil _identifierForDictionary:v5];
  v8 = [v5 objectForKeyedSubscript:@"isNotSubscribeable"];
  v9 = [v8 BOOLValue];

  if (!v9)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 0;
    v26 = 0;
    v27 = &v26;
    v28 = 0x2020000000;
    v29 = 0;
    v10 = +[MTDB sharedInstance];
    v11 = [v10 mainOrPrivateContext];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10005EB48;
    v21[3] = &unk_1004D8810;
    v12 = v7;
    v22 = v12;
    v13 = v11;
    v23 = v13;
    v24 = &v30;
    v25 = &v26;
    [v13 performBlockAndWait:v21];
    if (*(v31 + 24) == 1)
    {
      if (v6)
      {
        v14 = *(v27 + 24);
        v15 = v14 ^ 1;
LABEL_11:
        v6[2](v6, v15, v14);
      }
    }

    else
    {
      v16 = [v12 feedUrl];
      v17 = [v16 length];

      if (v17)
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10005EC68;
        v18[3] = &unk_1004D8520;
        v19 = v12;
        v20 = v6;
        dispatch_async(&_dispatch_main_q, v18);
      }

      else if (v6)
      {
        v15 = 0;
        v14 = 2;
        goto LABEL_11;
      }
    }

    _Block_object_dispose(&v26, 8);
    _Block_object_dispose(&v30, 8);
    goto LABEL_13;
  }

  if (v6)
  {
    v6[2](v6, 0, 3);
  }

LABEL_13:
}

+ (void)unsubscribeToPodcastWithStorePlatformDictionary:(id)a3
{
  v3 = [a1 _identifierForDictionary:a3];
  v4 = +[MTDB sharedInstance];
  v5 = [v4 privateQueueContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005EE84;
  v8[3] = &unk_1004D8798;
  v9 = v3;
  v10 = v5;
  v6 = v5;
  v7 = v3;
  [v6 performBlockAndWait:v8];
}

+ (id)_identifierForDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:AMSLookupPropertyItemIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 longLongValue]);
    v7 = [v6 stringValue];
    v8 = [v7 isEqualToString:v5];

    v4 = v5;
    if (v8)
    {
      v4 = v6;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
  }

  v9 = [v3 objectForKey:@"feedUrl"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = 0;
  }

  v10 = [MTStoreIdentifier identifierWithFeedUrl:v9 storeIdentifier:v4];

  return v10;
}

@end