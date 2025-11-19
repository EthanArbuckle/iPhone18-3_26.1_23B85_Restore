@interface MTIntentDonationUtil
- (BOOL)canContinueIntentWithUserActivityType:(id)a3;
- (BOOL)continueIntentsUserActivity:(id)a3;
- (MTIntentDonationUtil)init;
- (id)defaultPodcastArtworkData;
- (id)peopleScoresFromMediaData:(id)a3 keyedOnQid:(BOOL)a4;
- (id)topicScoresFromMediaData:(id)a3;
- (void)donateEpisodeUuid:(id)a3 stationUuid:(id)a4 isPlaybackFromSiri:(BOOL)a5 completion:(id)a6;
- (void)donateManifestCurrentItem:(id)a3 playReason:(unint64_t)a4;
- (void)fetchMediaDataForEpisodeStoreId:(int64_t)a3 podcastStoreId:(int64_t)a4 completion:(id)a5;
- (void)prepareImageDataForPodcastUuid:(id)a3 completion:(id)a4;
- (void)prepareIntentForEpisodeUuid:(id)a3 stationUuid:(id)a4 includeImage:(BOOL)a5 includeStorePlatformData:(BOOL)a6 completion:(id)a7;
- (void)removeAllDonations;
- (void)removeDonationForEpisodeUuid:(id)a3;
- (void)removeDonationForPodcastUuid:(id)a3;
- (void)removeDonationsForEpisodeUuids:(id)a3;
- (void)removeDonationsForPodcastUuids:(id)a3;
@end

@implementation MTIntentDonationUtil

- (MTIntentDonationUtil)init
{
  v21.receiver = self;
  v21.super_class = MTIntentDonationUtil;
  v2 = [(MTIntentDonationUtil *)&v21 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, -15);
    v5 = dispatch_queue_create("MTIntentDonationUtil.donation_queue", v4);
    donationQueue = v2->_donationQueue;
    v2->_donationQueue = v5;

    v7 = +[MTImageStore defaultStore];
    imageStore = v2->_imageStore;
    v2->_imageStore = v7;

    v9 = objc_opt_class();
    interactionClass = v2->_interactionClass;
    v2->_interactionClass = v9;

    v11 = +[MTPlaybackIdentifierUtil sharedInstance];
    identifierComposer = v2->_identifierComposer;
    v2->_identifierComposer = v11;

    v13 = +[NSUserDefaults _applePodcastsFoundationSettingsUserDefaults];
    v14 = kMTShowSiriSuggestionsKey;
    v22 = kMTShowSiriSuggestionsKey;
    v15 = [NSArray arrayWithObjects:&v22 count:1];
    v16 = [NSSet setWithArray:v15];

    v17 = [[MTDefaultsChangeNotifier alloc] initWithProperties:v16 defaults:v13];
    defaultsObserver = v2->_defaultsObserver;
    v2->_defaultsObserver = v17;

    [(MTDictionaryDiff *)v2->_defaultsObserver addCallback:&stru_1004DB040];
    [(MTDefaultsChangeNotifier *)v2->_defaultsObserver start];
    v19 = [v13 BOOLForKey:v14];
    sub_10000B1D8(kMTApplicationBundleIdentifier, v19);
  }

  return v2;
}

- (void)donateManifestCurrentItem:(id)a3 playReason:(unint64_t)a4
{
  v10 = a3;
  v6 = [v10 currentItem];
  v7 = [v6 episode];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v8 = [v10 playlistUuid];
  if (v7)
  {
LABEL_5:
    v9 = [v7 uuid];
    [(MTIntentDonationUtil *)self donateEpisodeUuid:v9 stationUuid:v8 isPlaybackFromSiri:a4 == 9 completion:0];
  }

LABEL_6:
}

- (void)donateEpisodeUuid:(id)a3 stationUuid:(id)a4 isPlaybackFromSiri:(BOOL)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if ([v10 length])
  {
    v13 = [(MTIntentDonationUtil *)self donationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B3340;
    block[3] = &unk_1004DB0B8;
    block[4] = self;
    v15 = v10;
    v16 = v11;
    v17 = v12;
    v18 = a5;
    dispatch_async(v13, block);
  }

  else if (v12)
  {
    (*(v12 + 2))(v12, 0);
  }
}

- (void)removeDonationForPodcastUuid:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    [(objc_class *)[(MTIntentDonationUtil *)self interactionClass] deleteInteractionsWithGroupIdentifier:v4 completion:0];
  }
}

- (void)removeDonationsForPodcastUuids:(id)a3
{
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MTIntentDonationUtil *)self removeDonationForPodcastUuid:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeDonationForEpisodeUuid:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(MTIntentDonationUtil *)self interactionClass];
    v7 = v4;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [(objc_class *)v5 deleteInteractionsWithIdentifiers:v6 completion:0];
  }
}

- (void)removeDonationsForEpisodeUuids:(id)a3
{
  v4 = a3;
  [(objc_class *)[(MTIntentDonationUtil *)self interactionClass] deleteInteractionsWithIdentifiers:v4 completion:0];
}

- (void)removeAllDonations
{
  v2 = [(MTIntentDonationUtil *)self interactionClass];

  [(objc_class *)v2 deleteAllInteractionsWithCompletion:0];
}

- (BOOL)canContinueIntentWithUserActivityType:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 isEqualToString:v5];

  return v6;
}

- (BOOL)continueIntentsUserActivity:(id)a3
{
  v4 = a3;
  v5 = [v4 activityType];
  LODWORD(self) = [(MTIntentDonationUtil *)self canContinueIntentWithUserActivityType:v5];

  if (self)
  {
    v6 = [v4 interaction];
    v7 = [v6 intent];

    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v8 = v7;
    v9 = +[MTDB sharedInstance];
    v10 = [v9 mainOrPrivateContext];

    v11 = [v8 mediaContainer];
    v12 = [v11 type];

    if (v12 == 6)
    {
      v18 = [v8 mediaContainer];
      v19 = [v18 identifier];

      v20 = [v8 mediaItems];
      v21 = [v20 firstObject];
      v22 = [v21 identifier];

      v23 = [[MTURLCommandRequest alloc] initWithURLString:v19];
      v24 = [[MTURLCommandRequest alloc] initWithURLString:v22];
      v46 = 0;
      v47 = &v46;
      v48 = 0x3032000000;
      v49 = sub_100008A2C;
      v50 = sub_10003B4EC;
      v51 = 0;
      v36 = 0;
      v37 = &v36;
      v38 = 0x3032000000;
      v39 = sub_100008A2C;
      v40 = sub_10003B4EC;
      v41 = 0;
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000B3ECC;
      v30[3] = &unk_1004DB0E0;
      v34 = &v46;
      v31 = v10;
      v25 = v23;
      v32 = v25;
      v35 = &v36;
      v26 = v24;
      v33 = v26;
      [v31 performBlockAndWait:v30];
      v27 = v47[5];
      if (v27)
      {
        v28 = +[MTApplication appController];
        [v28 presentPodcast:v47[5] episode:v37[5] podcastTab:0 startPlayback:0 animated:0];
      }

      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(&v46, 8);

      if (v27)
      {
        goto LABEL_12;
      }
    }

    else if (v12 == 8)
    {
      v13 = [v8 mediaContainer];
      v14 = [v13 identifier];

      v46 = 0;
      v47 = &v46;
      v48 = 0x3032000000;
      v49 = sub_100008A2C;
      v50 = sub_10003B4EC;
      v51 = 0;
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_1000B3E7C;
      v42[3] = &unk_1004D9040;
      v45 = &v46;
      v43 = v10;
      v15 = v14;
      v44 = v15;
      [v43 performBlockAndWait:v42];
      if (v47[5])
      {
        v16 = +[MTApplication appController];
        [v16 presentStation:v47[5] new:0];

        _Block_object_dispose(&v46, 8);
LABEL_12:
        v17 = 1;
LABEL_15:

        goto LABEL_16;
      }

      _Block_object_dispose(&v46, 8);
    }

    v17 = 0;
    goto LABEL_15;
  }

  v17 = 0;
LABEL_17:

  return v17;
}

- (void)prepareIntentForEpisodeUuid:(id)a3 stationUuid:(id)a4 includeImage:(BOOL)a5 includeStorePlatformData:(BOOL)a6 completion:(id)a7
{
  v22 = a5;
  v9 = a3;
  v10 = a4;
  v25 = a7;
  v11 = +[MTDB sharedInstance];
  v12 = [v11 mainOrPrivateContext];

  v90[0] = 0;
  v90[1] = v90;
  v90[2] = 0x3032000000;
  v90[3] = sub_100008A2C;
  v90[4] = sub_10003B4EC;
  v91 = 0;
  v88[0] = 0;
  v88[1] = v88;
  v88[2] = 0x3032000000;
  v88[3] = sub_100008A2C;
  v88[4] = sub_10003B4EC;
  v89 = 0;
  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x2020000000;
  v87[3] = 0;
  v81 = 0;
  v82 = &v81;
  v83 = 0x3032000000;
  v84 = sub_100008A2C;
  v85 = sub_10003B4EC;
  v86 = 0;
  v79[0] = 0;
  v79[1] = v79;
  v79[2] = 0x3032000000;
  v79[3] = sub_100008A2C;
  v79[4] = sub_10003B4EC;
  v80 = 0;
  v78[0] = 0;
  v78[1] = v78;
  v78[2] = 0x2020000000;
  v78[3] = 0;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3032000000;
  v76[3] = sub_100008A2C;
  v76[4] = sub_10003B4EC;
  v77 = 0;
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x3032000000;
  v74[3] = sub_100008A2C;
  v74[4] = sub_10003B4EC;
  v75 = 0;
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x3032000000;
  v72[3] = sub_100008A2C;
  v72[4] = sub_10003B4EC;
  v73 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = sub_100008A2C;
  v70 = sub_10003B4EC;
  v13 = v9;
  v71 = v13;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = sub_100008A2C;
  v64[4] = sub_10003B4EC;
  v24 = v10;
  v65 = v24;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x2020000000;
  v63 = 0;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000B4690;
  v47[3] = &unk_1004DB108;
  v14 = v12;
  v48 = v14;
  v15 = v13;
  v49 = v15;
  v50 = &v66;
  v51 = v88;
  v52 = v87;
  v53 = v90;
  v54 = &v81;
  v55 = v79;
  v56 = v78;
  v57 = v76;
  v58 = v72;
  v59 = v62;
  v60 = v64;
  v61 = v74;
  [v14 performBlockAndWait:v47];
  if ([v67[5] length] && objc_msgSend(v82[5], "length"))
  {
    v16 = v15;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000B48A8;
    v33[3] = &unk_1004DB130;
    v35 = v64;
    v33[4] = self;
    v36 = &v66;
    v37 = v88;
    v38 = v87;
    v39 = v79;
    v40 = v74;
    v41 = &v81;
    v42 = v78;
    v43 = v76;
    v44 = v72;
    v45 = v90;
    v46 = v62;
    v34 = v25;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000B4CB8;
    v28[3] = &unk_1004DB180;
    v32 = a6;
    v28[4] = self;
    v30 = v87;
    v31 = v78;
    v17 = objc_retainBlock(v33);
    v29 = v17;
    v18 = objc_retainBlock(v28);
    v19 = v18;
    if (v22)
    {
      v20 = v82[5];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_1000B4DD4;
      v26[3] = &unk_1004DB1A8;
      v26[4] = self;
      v27 = v18;
      [(MTIntentDonationUtil *)self prepareImageDataForPodcastUuid:v20 completion:v26];
    }

    else
    {
      (v18[2])(v18, 0);
    }

    v15 = v16;
  }

  else if (v25)
  {
    (*(v25 + 2))(v25, 0);
  }

  _Block_object_dispose(v62, 8);
  _Block_object_dispose(v64, 8);

  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(v72, 8);

  _Block_object_dispose(v74, 8);
  _Block_object_dispose(v76, 8);

  _Block_object_dispose(v78, 8);
  _Block_object_dispose(v79, 8);

  _Block_object_dispose(&v81, 8);
  _Block_object_dispose(v87, 8);
  _Block_object_dispose(v88, 8);

  _Block_object_dispose(v90, 8);
}

- (void)prepareImageDataForPodcastUuid:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[PUIObjCArtworkProvider shared];
  v9 = kMTIntentsArtworkSize;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B4FF8;
  v11[3] = &unk_1004DB1D0;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v8 artworkPathForShow:v7 size:v11 completionHandler:{v9, v9}];
}

- (void)fetchMediaDataForEpisodeStoreId:(int64_t)a3 podcastStoreId:(int64_t)a4 completion:(id)a5
{
  v7 = a5;
  v8 = [NSMutableArray arrayWithCapacity:2];
  v9 = [MTStoreIdentifier validatedIdNumberFromStoreId:a3];
  v10 = [v9 stringValue];

  if ([v10 length])
  {
    [v8 addObject:v10];
  }

  v11 = [NSString stringWithFormat:@"%lld", a4];
  if ([v11 length])
  {
    [v8 addObject:v11];
  }

  v12 = [[IMContentLookupService alloc] initWithIds:v8];
  [v12 setProfile:kProductProfile];
  [v12 setVersion:2];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B5224;
  v16[3] = &unk_1004DB1F8;
  v17 = v10;
  v18 = v11;
  v19 = v7;
  v13 = v7;
  v14 = v11;
  v15 = v10;
  [v12 request:v16];
}

- (id)peopleScoresFromMediaData:(id)a3 keyedOnQid:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([v5 count] && (objc_msgSend(v5, "objectForKey:", @"credits"), v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0))
  {
    v8 = [v5 objectForKey:@"credits"];
    v9 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v8 count]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      if (v4)
      {
        v14 = @"wikiQid";
      }

      else
      {
        v14 = @"name";
      }

      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v16 = [*(*(&v18 + 1) + 8 * i) objectForKey:{v14, v18}];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 length])
          {
            [v9 setObject:&off_100500D90 forKey:v16];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v9 = &__NSDictionary0__struct;
  }

  return v9;
}

- (id)topicScoresFromMediaData:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKey:@"topics"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [v3 objectForKey:@"topics"];
    v20 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 objectForKey:@"relevance"];
          [v13 floatValue];
          v15 = v14;

          LODWORD(v16) = v15;
          v17 = [NSNumber numberWithFloat:v16];
          v18 = [v12 objectForKey:@"wikiQid"];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v18 length])
          {
            [v20 setObject:v17 forKey:v18];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v20 = &__NSDictionary0__struct;
  }

  return v20;
}

- (id)defaultPodcastArtworkData
{
  if (qword_100583B50 != -1)
  {
    sub_1003B2B98();
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_100008A2C;
  v9 = sub_10003B4EC;
  v10 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B5904;
  block[3] = &unk_1004D8688;
  block[4] = &v5;
  dispatch_sync(qword_100583B58, block);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

@end