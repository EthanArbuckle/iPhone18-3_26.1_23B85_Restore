@interface CNUISchedulerProvider
+ (id)makeBackgroundScheduler;
- (CNScheduler)immediateScheduler;
- (CNScheduler)inlineScheduler;
- (CNScheduler)mainThreadScheduler;
- (CNUISchedulerProvider)init;
- (CNUISchedulerProvider)initWithSchedulerProvider:(id)a3;
- (id)backgroundSchedulerWithQualityOfService:(unint64_t)a3;
- (id)newReaderWriterSchedulerWithName:(id)a3;
- (id)newSerialSchedulerWithName:(id)a3;
- (id)newSynchronousSerialSchedulerWithName:(id)a3;
- (void)resumeBackgroundScheduler;
- (void)suspendBackgroundScheduler;
@end

@implementation CNUISchedulerProvider

- (CNUISchedulerProvider)init
{
  v3 = [MEMORY[0x1E6996820] defaultProvider];
  v4 = [(CNUISchedulerProvider *)self initWithSchedulerProvider:v3];

  return v4;
}

- (CNScheduler)mainThreadScheduler
{
  v2 = [(CNUISchedulerProvider *)self schedulerProvider];
  v3 = [v2 mainThreadScheduler];

  return v3;
}

+ (id)makeBackgroundScheduler
{
  v2 = [MEMORY[0x1E6996818] operationQueueSchedulerWithMaxConcurrentOperationCount:1];
  v3 = [objc_alloc(MEMORY[0x1E6996848]) initWithScheduler:v2];

  return v3;
}

- (void)resumeBackgroundScheduler
{
  v2 = [(CNUISchedulerProvider *)self suspendableBackgroundScheduler];
  [v2 resume];
}

- (CNScheduler)inlineScheduler
{
  v2 = [(CNUISchedulerProvider *)self schedulerProvider];
  v3 = [v2 inlineScheduler];

  return v3;
}

- (CNScheduler)immediateScheduler
{
  v2 = [(CNUISchedulerProvider *)self schedulerProvider];
  v3 = [v2 immediateScheduler];

  return v3;
}

- (id)newReaderWriterSchedulerWithName:(id)a3
{
  v4 = a3;
  v5 = [(CNUISchedulerProvider *)self schedulerProvider];
  v6 = [v5 newReaderWriterSchedulerWithName:v4];

  return v6;
}

- (id)newSynchronousSerialSchedulerWithName:(id)a3
{
  v4 = a3;
  v5 = [(CNUISchedulerProvider *)self schedulerProvider];
  v6 = [v5 newSynchronousSerialSchedulerWithName:v4];

  return v6;
}

- (id)newSerialSchedulerWithName:(id)a3
{
  v4 = a3;
  v5 = [(CNUISchedulerProvider *)self schedulerProvider];
  v6 = [v5 newSerialSchedulerWithName:v4];

  return v6;
}

- (id)backgroundSchedulerWithQualityOfService:(unint64_t)a3
{
  v4 = [(CNUISchedulerProvider *)self schedulerProvider];
  v5 = [v4 backgroundSchedulerWithQualityOfService:a3];

  return v5;
}

- (void)suspendBackgroundScheduler
{
  v2 = [(CNUISchedulerProvider *)self suspendableBackgroundScheduler];
  [v2 suspend];
}

- (CNUISchedulerProvider)initWithSchedulerProvider:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = CNUISchedulerProvider;
  v6 = [(CNUISchedulerProvider *)&v13 init];
  if (v6)
  {
    v7 = [objc_opt_class() makeBackgroundScheduler];
    suspendableBackgroundScheduler = v6->_suspendableBackgroundScheduler;
    v6->_suspendableBackgroundScheduler = v7;

    objc_storeStrong(&v6->_schedulerProvider, a3);
    v9 = [[CNUIAfterCACommitScheduler alloc] initWithSchedulerProvider:v6->_schedulerProvider];
    afterCACommitScheduler = v6->_afterCACommitScheduler;
    v6->_afterCACommitScheduler = v9;

    v11 = v6;
  }

  return v6;
}

@end