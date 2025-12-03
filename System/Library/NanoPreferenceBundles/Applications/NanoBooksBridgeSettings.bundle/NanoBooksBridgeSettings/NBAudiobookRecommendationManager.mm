@interface NBAudiobookRecommendationManager
+ (id)sharedManager;
- (NBAudiobookRecommendationManager)init;
- (void)_BCCloudCollectionMemberManagerChanged:(id)changed;
- (void)_BCCloudReadingNowDetailManagerChanged:(id)changed;
- (void)_notifyAudiobookRecommendationsDidUpdateNotification;
- (void)_pinningManager:(id)manager updateWantToRead:(BOOL)read updateReadingNow:(BOOL)now completion:(id)completion;
- (void)_reloadRecommendationsFromDefaultsWithCompletion:(id)completion;
- (void)dealloc;
- (void)fetchRecommendationsWithQueue:(id)queue completion:(id)completion;
- (void)persistRecommendationsSelections:(id)selections;
- (void)reloadRecommendationsIfNeeded:(id)needed;
- (void)updateBitRateForAdamID:(id)d;
@end

@implementation NBAudiobookRecommendationManager

+ (id)sharedManager
{
  if (qword_27CF0 != -1)
  {
    sub_121F0();
  }

  v3 = qword_27CE8;

  return v3;
}

- (NBAudiobookRecommendationManager)init
{
  v12.receiver = self;
  v12.super_class = NBAudiobookRecommendationManager;
  v2 = [(NBAudiobookRecommendationManager *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.NanoBooks.NBAudiobookRecommendationManager", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v6 = objc_alloc_init(BDSNBPinningManager);
    pinningManager = v2->_pinningManager;
    v2->_pinningManager = v6;

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_handleMediaLibraryEntitiesAddedOrRemovedNotification:" name:MPMediaLibraryEntitiesAddedOrRemovedNotification object:0];
    [(NBAudiobookRecommendationManager *)v2 fetchRecommendationsWithQueue:0 completion:0];
    v9 = +[NSDistributedNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"_BCCloudReadingNowDetailManagerChanged:" name:BCCloudReadingNowDetailManagerChanged object:0];

    v10 = +[NSDistributedNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"_BCCloudCollectionMemberManagerChanged:" name:BCCloudCollectionMemberManagerChanged object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self name:BCCloudReadingNowDetailManagerChanged object:0];

  v4 = +[NSDistributedNotificationCenter defaultCenter];
  [v4 removeObserver:self name:BCCloudCollectionMemberManagerChanged object:0];

  v5.receiver = self;
  v5.super_class = NBAudiobookRecommendationManager;
  [(NBAudiobookRecommendationManager *)&v5 dealloc];
}

- (void)_pinningManager:(id)manager updateWantToRead:(BOOL)read updateReadingNow:(BOOL)now completion:(id)completion
{
  nowCopy = now;
  readCopy = read;
  managerCopy = manager;
  completionCopy = completion;
  if (readCopy && nowCopy)
  {
    v10 = [managerCopy updateWantToReadAndReadingNowWithJaliscoUpdateSuccessful:1 completion:completionCopy];
  }

  else if (readCopy)
  {
    v11 = [managerCopy updateWantToReadWithCompletion:completionCopy];
  }

  else if (nowCopy)
  {
    v12 = [managerCopy updateReadingNowWithCompletion:completionCopy];
  }
}

- (void)reloadRecommendationsIfNeeded:(id)needed
{
  neededCopy = needed;
  queue = [(NBAudiobookRecommendationManager *)self queue];
  objc_initWeak(&location, self);
  if (queue)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_FAD8;
    block[3] = &unk_20CC8;
    objc_copyWeak(&v8, &location);
    v7 = neededCopy;
    dispatch_async(queue, block);

    objc_destroyWeak(&v8);
  }

  objc_destroyWeak(&location);
}

- (void)updateBitRateForAdamID:(id)d
{
  dCopy = d;
  pinningManager = [(NBAudiobookRecommendationManager *)self pinningManager];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_FCD0;
  v7[3] = &unk_20CF0;
  v8 = dCopy;
  v6 = dCopy;
  [pinningManager updateBitrateForItemWithAdamID:v6 completion:v7];
}

- (void)fetchRecommendationsWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v8 = +[NSUUID UUID];
  v9 = NBRecommendationsLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = objc_retainBlock(completionCopy);
    *buf = 138412802;
    v21 = v8;
    v22 = 2112;
    v23 = queueCopy;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "Will fetch recommendations for request: %@, on queue: %@, completion: %@", buf, 0x20u);
  }

  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_FED0;
  v15[3] = &unk_20D68;
  v16 = queueCopy;
  selfCopy = self;
  v18 = v8;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = v8;
  v14 = queueCopy;
  dispatch_async(queue, v15);
}

- (void)persistRecommendationsSelections:(id)selections
{
  selectionsCopy = selections;
  v4 = NBRecommendationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = selectionsCopy;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Saving recommendations for %@", buf, 0xCu);
  }

  v5 = +[NMSMediaPinningManager sharedManager];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = selectionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v19;
    *&v8 = 134218242;
    v17 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        type = [v12 type];
        if (type == &dword_0 + 1)
        {
          [v5 setWantToReadEnabled:{objc_msgSend(v12, "isSelected")}];
        }

        else if (type)
        {
          v14 = NBRecommendationsLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            type2 = [v12 type];
            title = [v12 title];
            *buf = v17;
            v23 = type2;
            v24 = 2112;
            v25 = title;
            _os_log_error_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "Attempt to save Recommendation of unknown type %ld (%@)", buf, 0x16u);
          }
        }

        else
        {
          [v5 setReadingNowEnabled:{objc_msgSend(v12, "isSelected")}];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v9);
  }
}

- (void)_reloadRecommendationsFromDefaultsWithCompletion:(id)completion
{
  queue = self->_queue;
  completionCopy = completion;
  dispatch_assert_queue_V2(queue);
  v6 = objc_opt_new();
  v7 = +[NMSMediaPinningManager sharedManager];
  readingNowAudiobooks = [v7 readingNowAudiobooks];
  array = [readingNowAudiobooks array];

  v10 = [[NBAudiobookRecommendation alloc] initWithAdamIDs:array type:0];
  -[NBAudiobookRecommendation setSelected:](v10, "setSelected:", [v7 isReadingNowEnabled]);
  [v6 addObject:v10];
  wantToReadAudiobooks = [v7 wantToReadAudiobooks];
  array2 = [wantToReadAudiobooks array];

  v13 = [[NBAudiobookRecommendation alloc] initWithAdamIDs:array2 type:1];
  -[NBAudiobookRecommendation setSelected:](v13, "setSelected:", [v7 isWantToReadEnabled]);
  [v6 addObject:v13];
  v14 = [(NSArray *)self->_recommendations isEqualToArray:v6];
  if (v14)
  {
    v15 = NBRecommendationsLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    LOWORD(v21) = 0;
    v16 = "Recommendations have not changed";
    v17 = v15;
    v18 = 2;
  }

  else
  {
    [(NBAudiobookRecommendationManager *)self setRecommendations:v6];
    v15 = NBRecommendationsLog();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    recommendations = self->_recommendations;
    v21 = 138412290;
    v22 = recommendations;
    v16 = "Recommendations contents updated: %@";
    v17 = v15;
    v18 = 12;
  }

  _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, v16, &v21, v18);
LABEL_7:

  v20 = objc_retainBlock(completionCopy);
  if (v20)
  {
    v20[2](v20, v14 ^ 1);
  }
}

- (void)_notifyAudiobookRecommendationsDidUpdateNotification
{
  v3 = NBRecommendationsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "Notifying clients about updated recommendations", v5, 2u);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"NBAudiobookRecommendationsDidUpdateNotification" object:self];
}

- (void)_BCCloudReadingNowDetailManagerChanged:(id)changed
{
  v4 = NBRecommendationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BCCloudReadingNowManagerChanged notification received", v6, 2u);
  }

  v5 = +[NMSMediaPinningManager sharedManager];
  if (([v5 isReadingNowEnabled] & 1) == 0)
  {
    [(NBAudiobookRecommendationManager *)self updatePinningManagerForWantToRead:0 forReadingNow:1];
  }
}

- (void)_BCCloudCollectionMemberManagerChanged:(id)changed
{
  v4 = NBRecommendationsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "BCCloudCollectionMemberManagerChanged notification received", v6, 2u);
  }

  v5 = +[NMSMediaPinningManager sharedManager];
  if (([v5 isWantToReadEnabled] & 1) == 0)
  {
    [(NBAudiobookRecommendationManager *)self updatePinningManagerForWantToRead:1 forReadingNow:0];
  }
}

@end