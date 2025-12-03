@interface MTIntentDonationUtil
- (BOOL)canContinueIntentWithUserActivityType:(id)type;
- (BOOL)continueIntentsUserActivity:(id)activity;
- (MTIntentDonationUtil)init;
- (id)defaultPodcastArtworkData;
- (id)peopleScoresFromMediaData:(id)data keyedOnQid:(BOOL)qid;
- (id)topicScoresFromMediaData:(id)data;
- (void)donateEpisodeUuid:(id)uuid stationUuid:(id)stationUuid isPlaybackFromSiri:(BOOL)siri completion:(id)completion;
- (void)donateManifestCurrentItem:(id)item playReason:(unint64_t)reason;
- (void)fetchMediaDataForEpisodeStoreId:(int64_t)id podcastStoreId:(int64_t)storeId completion:(id)completion;
- (void)prepareImageDataForPodcastUuid:(id)uuid completion:(id)completion;
- (void)prepareIntentForEpisodeUuid:(id)uuid stationUuid:(id)stationUuid includeImage:(BOOL)image includeStorePlatformData:(BOOL)data completion:(id)completion;
- (void)removeAllDonations;
- (void)removeDonationForEpisodeUuid:(id)uuid;
- (void)removeDonationForPodcastUuid:(id)uuid;
- (void)removeDonationsForEpisodeUuids:(id)uuids;
- (void)removeDonationsForPodcastUuids:(id)uuids;
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

- (void)donateManifestCurrentItem:(id)item playReason:(unint64_t)reason
{
  itemCopy = item;
  currentItem = [itemCopy currentItem];
  episode = [currentItem episode];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    playlistUuid = 0;
    if (!episode)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  playlistUuid = [itemCopy playlistUuid];
  if (episode)
  {
LABEL_5:
    uuid = [episode uuid];
    [(MTIntentDonationUtil *)self donateEpisodeUuid:uuid stationUuid:playlistUuid isPlaybackFromSiri:reason == 9 completion:0];
  }

LABEL_6:
}

- (void)donateEpisodeUuid:(id)uuid stationUuid:(id)stationUuid isPlaybackFromSiri:(BOOL)siri completion:(id)completion
{
  uuidCopy = uuid;
  stationUuidCopy = stationUuid;
  completionCopy = completion;
  if ([uuidCopy length])
  {
    donationQueue = [(MTIntentDonationUtil *)self donationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B3340;
    block[3] = &unk_1004DB0B8;
    block[4] = self;
    v15 = uuidCopy;
    v16 = stationUuidCopy;
    v17 = completionCopy;
    siriCopy = siri;
    dispatch_async(donationQueue, block);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)removeDonationForPodcastUuid:(id)uuid
{
  uuidCopy = uuid;
  if ([uuidCopy length])
  {
    [(objc_class *)[(MTIntentDonationUtil *)self interactionClass] deleteInteractionsWithGroupIdentifier:uuidCopy completion:0];
  }
}

- (void)removeDonationsForPodcastUuids:(id)uuids
{
  uuidsCopy = uuids;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [uuidsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(uuidsCopy);
        }

        [(MTIntentDonationUtil *)self removeDonationForPodcastUuid:*(*(&v9 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [uuidsCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)removeDonationForEpisodeUuid:(id)uuid
{
  uuidCopy = uuid;
  if ([uuidCopy length])
  {
    interactionClass = [(MTIntentDonationUtil *)self interactionClass];
    v7 = uuidCopy;
    v6 = [NSArray arrayWithObjects:&v7 count:1];
    [(objc_class *)interactionClass deleteInteractionsWithIdentifiers:v6 completion:0];
  }
}

- (void)removeDonationsForEpisodeUuids:(id)uuids
{
  uuidsCopy = uuids;
  [(objc_class *)[(MTIntentDonationUtil *)self interactionClass] deleteInteractionsWithIdentifiers:uuidsCopy completion:0];
}

- (void)removeAllDonations
{
  interactionClass = [(MTIntentDonationUtil *)self interactionClass];

  [(objc_class *)interactionClass deleteAllInteractionsWithCompletion:0];
}

- (BOOL)canContinueIntentWithUserActivityType:(id)type
{
  typeCopy = type;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [typeCopy isEqualToString:v5];

  return v6;
}

- (BOOL)continueIntentsUserActivity:(id)activity
{
  activityCopy = activity;
  activityType = [activityCopy activityType];
  LODWORD(self) = [(MTIntentDonationUtil *)self canContinueIntentWithUserActivityType:activityType];

  if (self)
  {
    interaction = [activityCopy interaction];
    intent = [interaction intent];

    objc_opt_class();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v17 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v8 = intent;
    v9 = +[MTDB sharedInstance];
    mainOrPrivateContext = [v9 mainOrPrivateContext];

    mediaContainer = [v8 mediaContainer];
    type = [mediaContainer type];

    if (type == 6)
    {
      mediaContainer2 = [v8 mediaContainer];
      identifier = [mediaContainer2 identifier];

      mediaItems = [v8 mediaItems];
      firstObject = [mediaItems firstObject];
      identifier2 = [firstObject identifier];

      v23 = [[MTURLCommandRequest alloc] initWithURLString:identifier];
      v24 = [[MTURLCommandRequest alloc] initWithURLString:identifier2];
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
      v31 = mainOrPrivateContext;
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

    else if (type == 8)
    {
      mediaContainer3 = [v8 mediaContainer];
      identifier3 = [mediaContainer3 identifier];

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
      v43 = mainOrPrivateContext;
      v15 = identifier3;
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

- (void)prepareIntentForEpisodeUuid:(id)uuid stationUuid:(id)stationUuid includeImage:(BOOL)image includeStorePlatformData:(BOOL)data completion:(id)completion
{
  imageCopy = image;
  uuidCopy = uuid;
  stationUuidCopy = stationUuid;
  completionCopy = completion;
  v11 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v11 mainOrPrivateContext];

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
  v13 = uuidCopy;
  v71 = v13;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = sub_100008A2C;
  v64[4] = sub_10003B4EC;
  v24 = stationUuidCopy;
  v65 = v24;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x2020000000;
  v63 = 0;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000B4690;
  v47[3] = &unk_1004DB108;
  v14 = mainOrPrivateContext;
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
    v34 = completionCopy;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000B4CB8;
    v28[3] = &unk_1004DB180;
    dataCopy = data;
    v28[4] = self;
    v30 = v87;
    v31 = v78;
    v17 = objc_retainBlock(v33);
    v29 = v17;
    v18 = objc_retainBlock(v28);
    v19 = v18;
    if (imageCopy)
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

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
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

- (void)prepareImageDataForPodcastUuid:(id)uuid completion:(id)completion
{
  completionCopy = completion;
  uuidCopy = uuid;
  v8 = +[PUIObjCArtworkProvider shared];
  v9 = kMTIntentsArtworkSize;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000B4FF8;
  v11[3] = &unk_1004DB1D0;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [v8 artworkPathForShow:uuidCopy size:v11 completionHandler:{v9, v9}];
}

- (void)fetchMediaDataForEpisodeStoreId:(int64_t)id podcastStoreId:(int64_t)storeId completion:(id)completion
{
  completionCopy = completion;
  v8 = [NSMutableArray arrayWithCapacity:2];
  v9 = [MTStoreIdentifier validatedIdNumberFromStoreId:id];
  stringValue = [v9 stringValue];

  if ([stringValue length])
  {
    [v8 addObject:stringValue];
  }

  storeId = [NSString stringWithFormat:@"%lld", storeId];
  if ([storeId length])
  {
    [v8 addObject:storeId];
  }

  v12 = [[IMContentLookupService alloc] initWithIds:v8];
  [v12 setProfile:kProductProfile];
  [v12 setVersion:2];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000B5224;
  v16[3] = &unk_1004DB1F8;
  v17 = stringValue;
  v18 = storeId;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = storeId;
  v15 = stringValue;
  [v12 request:v16];
}

- (id)peopleScoresFromMediaData:(id)data keyedOnQid:(BOOL)qid
{
  qidCopy = qid;
  dataCopy = data;
  if ([dataCopy count] && (objc_msgSend(dataCopy, "objectForKey:", @"credits"), v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0))
  {
    v8 = [dataCopy objectForKey:@"credits"];
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
      if (qidCopy)
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

- (id)topicScoresFromMediaData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy objectForKey:@"topics"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = [dataCopy objectForKey:@"topics"];
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