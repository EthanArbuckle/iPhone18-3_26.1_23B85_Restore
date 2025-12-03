@interface CNUISchedulerProvider
+ (id)makeBackgroundScheduler;
- (CNScheduler)immediateScheduler;
- (CNScheduler)inlineScheduler;
- (CNScheduler)mainThreadScheduler;
- (CNUISchedulerProvider)init;
- (CNUISchedulerProvider)initWithSchedulerProvider:(id)provider;
- (id)backgroundSchedulerWithQualityOfService:(unint64_t)service;
- (id)newReaderWriterSchedulerWithName:(id)name;
- (id)newSerialSchedulerWithName:(id)name;
- (id)newSynchronousSerialSchedulerWithName:(id)name;
- (void)resumeBackgroundScheduler;
- (void)suspendBackgroundScheduler;
@end

@implementation CNUISchedulerProvider

- (CNUISchedulerProvider)init
{
  defaultProvider = [MEMORY[0x1E6996820] defaultProvider];
  v4 = [(CNUISchedulerProvider *)self initWithSchedulerProvider:defaultProvider];

  return v4;
}

- (CNScheduler)mainThreadScheduler
{
  schedulerProvider = [(CNUISchedulerProvider *)self schedulerProvider];
  mainThreadScheduler = [schedulerProvider mainThreadScheduler];

  return mainThreadScheduler;
}

+ (id)makeBackgroundScheduler
{
  v2 = [MEMORY[0x1E6996818] operationQueueSchedulerWithMaxConcurrentOperationCount:1];
  v3 = [objc_alloc(MEMORY[0x1E6996848]) initWithScheduler:v2];

  return v3;
}

- (void)resumeBackgroundScheduler
{
  suspendableBackgroundScheduler = [(CNUISchedulerProvider *)self suspendableBackgroundScheduler];
  [suspendableBackgroundScheduler resume];
}

- (CNScheduler)inlineScheduler
{
  schedulerProvider = [(CNUISchedulerProvider *)self schedulerProvider];
  inlineScheduler = [schedulerProvider inlineScheduler];

  return inlineScheduler;
}

- (CNScheduler)immediateScheduler
{
  schedulerProvider = [(CNUISchedulerProvider *)self schedulerProvider];
  immediateScheduler = [schedulerProvider immediateScheduler];

  return immediateScheduler;
}

- (id)newReaderWriterSchedulerWithName:(id)name
{
  nameCopy = name;
  schedulerProvider = [(CNUISchedulerProvider *)self schedulerProvider];
  v6 = [schedulerProvider newReaderWriterSchedulerWithName:nameCopy];

  return v6;
}

- (id)newSynchronousSerialSchedulerWithName:(id)name
{
  nameCopy = name;
  schedulerProvider = [(CNUISchedulerProvider *)self schedulerProvider];
  v6 = [schedulerProvider newSynchronousSerialSchedulerWithName:nameCopy];

  return v6;
}

- (id)newSerialSchedulerWithName:(id)name
{
  nameCopy = name;
  schedulerProvider = [(CNUISchedulerProvider *)self schedulerProvider];
  v6 = [schedulerProvider newSerialSchedulerWithName:nameCopy];

  return v6;
}

- (id)backgroundSchedulerWithQualityOfService:(unint64_t)service
{
  schedulerProvider = [(CNUISchedulerProvider *)self schedulerProvider];
  v5 = [schedulerProvider backgroundSchedulerWithQualityOfService:service];

  return v5;
}

- (void)suspendBackgroundScheduler
{
  suspendableBackgroundScheduler = [(CNUISchedulerProvider *)self suspendableBackgroundScheduler];
  [suspendableBackgroundScheduler suspend];
}

- (CNUISchedulerProvider)initWithSchedulerProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = CNUISchedulerProvider;
  v6 = [(CNUISchedulerProvider *)&v13 init];
  if (v6)
  {
    makeBackgroundScheduler = [objc_opt_class() makeBackgroundScheduler];
    suspendableBackgroundScheduler = v6->_suspendableBackgroundScheduler;
    v6->_suspendableBackgroundScheduler = makeBackgroundScheduler;

    objc_storeStrong(&v6->_schedulerProvider, provider);
    v9 = [[CNUIAfterCACommitScheduler alloc] initWithSchedulerProvider:v6->_schedulerProvider];
    afterCACommitScheduler = v6->_afterCACommitScheduler;
    v6->_afterCACommitScheduler = v9;

    v11 = v6;
  }

  return v6;
}

@end