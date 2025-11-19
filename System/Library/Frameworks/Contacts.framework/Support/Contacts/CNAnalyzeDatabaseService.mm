@interface CNAnalyzeDatabaseService
+ (id)log;
+ (id)makeWorkQueueUsingSchedulerProvider:(id)a3 withName:(id)a4 qualityOfService:(unint64_t)a5;
+ (id)sharedInstance;
- (CNAnalyzeDatabaseService)init;
- (id)interestedNotifications;
- (void)handleAnalyzingEvent:(id)a3;
- (void)handleCoalescedShouldAnalyzeEvent:(id)a3;
- (void)handleNotificationName:(id)a3;
@end

@implementation CNAnalyzeDatabaseService

+ (id)log
{
  if (qword_10004E058 != -1)
  {
    sub_10002C608();
  }

  v3 = qword_10004E060;

  return v3;
}

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000B278;
  block[3] = &unk_100045580;
  block[4] = a1;
  if (qword_10004E068 != -1)
  {
    dispatch_once(&qword_10004E068, block);
  }

  v2 = qword_10004E070;

  return v2;
}

- (CNAnalyzeDatabaseService)init
{
  v22.receiver = self;
  v22.super_class = CNAnalyzeDatabaseService;
  v2 = [(CNAnalyzeDatabaseService *)&v22 init];
  if (v2)
  {
    v3 = +[CNSchedulerProvider defaultProvider];
    v4 = [objc_opt_class() makeWorkQueueUsingSchedulerProvider:v3 withName:@"com.apple.contactsd.AnalyzeDatabase.lowpriority" qualityOfService:2];
    lowPriorityWorkQueue = v2->_lowPriorityWorkQueue;
    v2->_lowPriorityWorkQueue = v4;

    v6 = [objc_opt_class() makeWorkQueueUsingSchedulerProvider:v3 withName:@"com.apple.contactsd.AnalyzeDatabase.highpriority" qualityOfService:4];
    highPriorityWorkQueue = v2->_highPriorityWorkQueue;
    v2->_highPriorityWorkQueue = v6;

    v8 = objc_alloc_init(CNPublishingSubject);
    analyzer = v2->_analyzer;
    v2->_analyzer = v8;

    v10 = v2->_analyzer;
    v11 = [CNObserver observerWithWeakTarget:v2 resultSelector:"handleAnalyzingEvent:"];
    v12 = [(CNPublishingSubject *)v10 subscribe:v11];
    analyzingToken = v2->_analyzingToken;
    v2->_analyzingToken = v12;

    v14 = objc_alloc_init(CNPublishingSubject);
    coalescer = v2->_coalescer;
    v2->_coalescer = v14;

    v16 = [(CNPublishingSubject *)v2->_coalescer throttle:1 options:v3 schedulerProvider:60.0];
    v17 = [CNObserver observerWithWeakTarget:v2 resultSelector:"handleCoalescedShouldAnalyzeEvent:"];
    v18 = [v16 subscribe:v17];
    coalescingToken = v2->_coalescingToken;
    v2->_coalescingToken = v18;

    v20 = v2;
  }

  return v2;
}

+ (id)makeWorkQueueUsingSchedulerProvider:(id)a3 withName:(id)a4 qualityOfService:(unint64_t)a5
{
  v6 = [a3 newSerialSchedulerWithName:a4];
  v7 = [[CNQualityOfServiceSchedulerDecorator alloc] initWithScheduler:v6 qualityOfService:a5];

  return v7;
}

- (id)interestedNotifications
{
  v4[0] = @"__ABDataBaseChangedByOtherProcessNotification";
  v4[1] = @"com.apple.datamigrator.migrationDidFinish";
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (void)handleNotificationName:(id)a3
{
  v4 = a3;
  v5 = [(CNAnalyzeDatabaseService *)self interestedNotifications];
  v6 = [v5 containsObject:v4];

  if (v6)
  {
    v7 = [(CNAnalyzeDatabaseService *)self lowPriorityWorkQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000B600;
    v8[3] = &unk_1000455E8;
    v8[4] = self;
    [v7 performBlock:v8];
  }
}

- (void)handleCoalescedShouldAnalyzeEvent:(id)a3
{
  v4 = [objc_opt_class() log];
  v5 = +[CNEnvironment currentEnvironment];
  v6 = [v5 contactStore];

  v7 = [(CNAnalyzeDatabaseService *)self lowPriorityWorkQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000B764;
  v10[3] = &unk_100045668;
  v11 = v4;
  v12 = v6;
  v13 = self;
  v8 = v6;
  v9 = v4;
  [v7 performBlock:v10];
}

- (void)handleAnalyzingEvent:(id)a3
{
  v4 = [objc_opt_class() log];
  v5 = +[CNEnvironment currentEnvironment];
  v6 = [v5 contactStore];

  v7 = [(CNAnalyzeDatabaseService *)self highPriorityWorkQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000B954;
  v10[3] = &unk_100045690;
  v11 = v4;
  v12 = v6;
  v8 = v6;
  v9 = v4;
  [v7 performBlock:v10];
}

@end