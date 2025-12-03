@interface MTSubscribeUtil
+ (BOOL)isSubscribedToPodcastWithFeedUrl:(id)url;
+ (BOOL)isSubscribedToPodcastWithStorePlatformDictionary:(id)dictionary;
+ (BOOL)isSubscribedToPodcastWithUuid:(id)uuid;
+ (id)_identifierForDictionary:(id)dictionary;
+ (void)subscribeToPodcastWithAdamID:(id)d completion:(id)completion;
+ (void)subscribeToPodcastWithFeedUrl:(id)url completion:(id)completion;
+ (void)subscribeToPodcastWithStorePlatformDictionary:(id)dictionary completion:(id)completion;
+ (void)unsubscribeToPodcastWithStorePlatformDictionary:(id)dictionary;
@end

@implementation MTSubscribeUtil

+ (BOOL)isSubscribedToPodcastWithUuid:(id)uuid
{
  uuidCopy = uuid;
  if ([uuidCopy length])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v4 = +[MTDB sharedInstance];
    mainOrPrivateContext = [v4 mainOrPrivateContext];

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005DFE8;
    v9[3] = &unk_1004D87E8;
    v10 = uuidCopy;
    v6 = mainOrPrivateContext;
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

+ (BOOL)isSubscribedToPodcastWithFeedUrl:(id)url
{
  urlCopy = url;
  if ([urlCopy length])
  {
    v5 = +[MTDB sharedInstance];
    mainOrPrivateContext = [v5 mainOrPrivateContext];
    v7 = [MTPodcast podcastUuidForFeedUrlString:urlCopy ctx:mainOrPrivateContext];

    v8 = [self isSubscribedToPodcastWithUuid:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isSubscribedToPodcastWithStorePlatformDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [self _identifierForDictionary:dictionaryCopy];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v6 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v6 mainOrPrivateContext];

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005E284;
  v11[3] = &unk_1004D87E8;
  v8 = v5;
  v12 = v8;
  v9 = mainOrPrivateContext;
  v13 = v9;
  v14 = &v15;
  [v9 performBlockAndWait:v11];
  LOBYTE(v6) = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v6;
}

+ (void)subscribeToPodcastWithFeedUrl:(id)url completion:(id)completion
{
  urlCopy = url;
  completionCopy = completion;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v7 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v7 mainOrPrivateContext];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10005E564;
  v16[3] = &unk_1004D8810;
  v9 = urlCopy;
  v17 = v9;
  v10 = mainOrPrivateContext;
  v18 = v10;
  v19 = &v25;
  v20 = &v21;
  [v10 performBlockAndWait:v16];
  if (*(v26 + 24) == 1)
  {
    if (completionCopy)
    {
      v11 = *(v22 + 24);
      v12 = v11 ^ 1;
LABEL_8:
      completionCopy[2](completionCopy, v12, v11);
    }
  }

  else if ([v9 length])
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10005E684;
    v13[3] = &unk_1004D8520;
    v14 = v9;
    v15 = completionCopy;
    dispatch_async(&_dispatch_main_q, v13);
  }

  else if (completionCopy)
  {
    v12 = 0;
    v11 = 2;
    goto LABEL_8;
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

+ (void)subscribeToPodcastWithAdamID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v7 = objc_alloc_init(MTAddPodcastParams);
  longLongValue = [dCopy longLongValue];

  [(MTAddPodcastParams *)v7 setStoreCollectionId:longLongValue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10005E880;
  v11[3] = &unk_1004D8838;
  v12 = completionCopy;
  v9 = completionCopy;
  [(MTAddPodcastParams *)v7 setCompletion:v11];
  v10 = +[MTSubscriptionManager sharedInstance];
  [v10 subscribeToPodcastWithParams:v7];
}

+ (void)subscribeToPodcastWithStorePlatformDictionary:(id)dictionary completion:(id)completion
{
  dictionaryCopy = dictionary;
  completionCopy = completion;
  v7 = [MTSubscribeUtil _identifierForDictionary:dictionaryCopy];
  v8 = [dictionaryCopy objectForKeyedSubscript:@"isNotSubscribeable"];
  bOOLValue = [v8 BOOLValue];

  if (!bOOLValue)
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
    mainOrPrivateContext = [v10 mainOrPrivateContext];

    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_10005EB48;
    v21[3] = &unk_1004D8810;
    v12 = v7;
    v22 = v12;
    v13 = mainOrPrivateContext;
    v23 = v13;
    v24 = &v30;
    v25 = &v26;
    [v13 performBlockAndWait:v21];
    if (*(v31 + 24) == 1)
    {
      if (completionCopy)
      {
        v14 = *(v27 + 24);
        v15 = v14 ^ 1;
LABEL_11:
        completionCopy[2](completionCopy, v15, v14);
      }
    }

    else
    {
      feedUrl = [v12 feedUrl];
      v17 = [feedUrl length];

      if (v17)
      {
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_10005EC68;
        v18[3] = &unk_1004D8520;
        v19 = v12;
        v20 = completionCopy;
        dispatch_async(&_dispatch_main_q, v18);
      }

      else if (completionCopy)
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

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, 3);
  }

LABEL_13:
}

+ (void)unsubscribeToPodcastWithStorePlatformDictionary:(id)dictionary
{
  v3 = [self _identifierForDictionary:dictionary];
  v4 = +[MTDB sharedInstance];
  privateQueueContext = [v4 privateQueueContext];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10005EE84;
  v8[3] = &unk_1004D8798;
  v9 = v3;
  v10 = privateQueueContext;
  v6 = privateQueueContext;
  v7 = v3;
  [v6 performBlockAndWait:v8];
}

+ (id)_identifierForDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:AMSLookupPropertyItemIdentifier];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v5 longLongValue]);
    stringValue = [v6 stringValue];
    v8 = [stringValue isEqualToString:v5];

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

  v9 = [dictionaryCopy objectForKey:@"feedUrl"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = 0;
  }

  v10 = [MTStoreIdentifier identifierWithFeedUrl:v9 storeIdentifier:v4];

  return v10;
}

@end