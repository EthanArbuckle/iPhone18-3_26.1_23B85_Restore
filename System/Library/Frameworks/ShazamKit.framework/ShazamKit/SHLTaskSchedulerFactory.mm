@interface SHLTaskSchedulerFactory
- (SHLFetchTaskScheduler)fetchTaskScheduler;
- (SHLModifyTaskScheduler)modifyTaskScheduler;
- (SHLTaskSchedulerFactory)initWithConfiguration:(id)configuration;
- (id)createTransaction;
@end

@implementation SHLTaskSchedulerFactory

- (SHLTaskSchedulerFactory)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = SHLTaskSchedulerFactory;
  v6 = [(SHLTaskSchedulerFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, configuration);
  }

  return v7;
}

- (SHLModifyTaskScheduler)modifyTaskScheduler
{
  configuration = [(SHLTaskSchedulerFactory *)self configuration];
  sessionType = [(SHLCloudModifyTaskScheduler *)configuration sessionType];

  if (!sessionType)
  {
    v5 = [SHLCloudModifyTaskScheduler alloc];
    configuration2 = [(SHLTaskSchedulerFactory *)self configuration];
    configuration = [(SHLCloudModifyTaskScheduler *)v5 initWithConfiguration:configuration2];
  }

  return configuration;
}

- (SHLFetchTaskScheduler)fetchTaskScheduler
{
  configuration = [(SHLTaskSchedulerFactory *)self configuration];
  sessionType = [(SHLCloudFetchTaskScheduler *)configuration sessionType];

  if (!sessionType)
  {
    v5 = [SHLCloudFetchTaskScheduler alloc];
    configuration2 = [(SHLTaskSchedulerFactory *)self configuration];
    configuration = [(SHLCloudFetchTaskScheduler *)v5 initWithConfiguration:configuration2];
  }

  return configuration;
}

- (id)createTransaction
{
  configuration = [(SHLTaskSchedulerFactory *)self configuration];
  sessionType = [configuration sessionType];

  if (!sessionType)
  {
    v6 = +[SHLCloudContext sharedContext];
    configuration2 = [(SHLTaskSchedulerFactory *)self configuration];
    v8 = [v6 containerWithScope:{objc_msgSend(configuration2, "sessionScope")}];
    containerIdentifier = [v8 containerIdentifier];

    v10 = [SHLCloudLibraryCache alloc];
    configuration3 = [(SHLTaskSchedulerFactory *)self configuration];
    callingProcessIdentifier = [configuration3 callingProcessIdentifier];
    configuration4 = [(SHLTaskSchedulerFactory *)self configuration];
    sessionIdentifier = [configuration4 sessionIdentifier];
    v2 = [(SHLCloudLibraryCache *)v10 initWithCallingProcessIdentifier:callingProcessIdentifier containerIdentifier:containerIdentifier transactionIdentifier:sessionIdentifier];
  }

  return v2;
}

@end