@interface IndexService
+ (id)makeWorkQueueUsingSchedulerProvider:(id)a3;
+ (id)sharedInstance;
- (IndexService)init;
- (IndexService)initWithMockIndexRequestHandler:(id)a3 schedulerProvider:(id)a4;
- (id)indexHandler;
- (id)interestedNotifications;
- (id)verifyIndexLoggingSummary:(BOOL)a3 error:(id *)a4;
- (void)coalesceEvent;
- (void)handleCoalescedEvent:(id)a3;
- (void)handleNotificationName:(id)a3;
- (void)reindexSearchableItemsWithIdentifiers:(id)a3 completionHandler:(id)a4;
@end

@implementation IndexService

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011DC0;
  block[3] = &unk_100045580;
  block[4] = a1;
  if (qword_10004E1B0 != -1)
  {
    dispatch_once(&qword_10004E1B0, block);
  }

  v2 = qword_10004E1B8;

  return v2;
}

- (IndexService)init
{
  v3 = +[CNSchedulerProvider defaultProvider];
  v4 = [(IndexService *)self initWithMockIndexRequestHandler:0 schedulerProvider:v3];

  return v4;
}

- (IndexService)initWithMockIndexRequestHandler:(id)a3 schedulerProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v26.receiver = self;
  v26.super_class = IndexService;
  v9 = [(IndexService *)&v26 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mockIndexHandler, a3);
    v11 = [objc_opt_class() makeWorkQueueUsingSchedulerProvider:v8];
    workQueue = v10->_workQueue;
    v10->_workQueue = v11;

    v13 = objc_alloc_init(CNPublishingSubject);
    coalescer = v10->_coalescer;
    v10->_coalescer = v13;

    v15 = [(CNPublishingSubject *)v10->_coalescer throttle:2 options:v8 schedulerProvider:5.0];
    v16 = [CNObserver observerWithWeakTarget:v10 resultSelector:"handleCoalescedEvent:"];
    v17 = [v15 subscribe:v16];
    coalescingToken = v10->_coalescingToken;
    v10->_coalescingToken = v17;

    v19 = +[CNUserDefaults standardPreferences];
    v10->_isSpotlightIndexingEnabled = [v19 integerForKey:@"CNDisableSpotlightIndexing"] == 0;

    v20 = +[CNContactsEnvironment currentEnvironment];
    v21 = [v20 loggerProvider];
    v22 = [v21 spotlightIndexingLogger];
    logger = v10->_logger;
    v10->_logger = v22;

    v24 = v10;
  }

  return v10;
}

+ (id)makeWorkQueueUsingSchedulerProvider:(id)a3
{
  v3 = [a3 newSerialSchedulerWithName:@"com.apple.contactsd.IndexService"];
  v4 = [[CNQualityOfServiceSchedulerDecorator alloc] initWithScheduler:v3 qualityOfService:2];

  return v4;
}

- (void)handleNotificationName:(id)a3
{
  v6 = a3;
  if ([(IndexService *)self isSpotlightIndexingEnabled])
  {
    v4 = [(IndexService *)self interestedNotifications];
    v5 = [v4 containsObject:v6];

    if (v5)
    {
      [(IndexService *)self coalesceEvent];
    }
  }
}

- (void)coalesceEvent
{
  v3 = [(IndexService *)self workQueue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100012150;
  v4[3] = &unk_1000455E8;
  v4[4] = self;
  [v3 performBlock:v4];
}

- (void)handleCoalescedEvent:(id)a3
{
  v4 = [(IndexService *)self workQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000122A4;
  v5[3] = &unk_1000455E8;
  v5[4] = self;
  [v4 performBlock:v5];
}

- (id)interestedNotifications
{
  if (qword_10004E1C0 != -1)
  {
    sub_10002D590();
  }

  v3 = qword_10004E1C8;

  return v3;
}

- (void)reindexSearchableItemsWithIdentifiers:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(IndexService *)self isSpotlightIndexingEnabled])
  {
    v8 = [CNInhibitor os_transactionInhibitorWithLabel:@"com.apple.contactsd.IndexService.ReindexSearchableItems"];
    [v8 start];
    v9 = [(IndexService *)self workQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100012530;
    v11[3] = &unk_100045C80;
    v12 = v6;
    v13 = self;
    v14 = v8;
    v15 = v7;
    v10 = v8;
    [v9 performBlock:v11];
  }

  else if (v7)
  {
    v7[2](v7);
  }
}

- (id)verifyIndexLoggingSummary:(BOOL)a3 error:(id *)a4
{
  if ([(IndexService *)self isSpotlightIndexingEnabled])
  {
    v7 = [CNInhibitor os_transactionInhibitorWithLabel:@"com.apple.contactsd.IndexService.VerifyIndex"];
    [v7 start];
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = sub_100001EA4;
    v30 = sub_100001EDC;
    v31 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = sub_100001EA4;
    v24 = sub_100001EDC;
    v25 = 0;
    v8 = objc_alloc_init(CNPromise);
    v9 = [(IndexService *)self workQueue];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000127FC;
    v15[3] = &unk_100045CA8;
    v17 = &v26;
    v15[4] = self;
    v19 = a3;
    v18 = &v20;
    v10 = v8;
    v16 = v10;
    [v9 performBlock:v15];

    v11 = [v10 future];
    v12 = [v11 result:0];

    if (a4)
    {
      *a4 = v21[5];
    }

    [v7 stop];
    v13 = v27[5];

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v26, 8);
  }

  else
  {
    v13 = @"Spotlight indexing is disabled.";
  }

  return v13;
}

- (id)indexHandler
{
  mockIndexHandler = self->_mockIndexHandler;
  if (mockIndexHandler)
  {
    v3 = mockIndexHandler;
  }

  else
  {
    v4 = [CNIndexRequestHandler alloc];
    v5 = +[CNEnvironment currentEnvironment];
    v6 = [v5 contactStore];
    v3 = [v4 initWithContactStore:v6];
  }

  return v3;
}

@end