@interface SHLTaskSchedulerFactory
- (SHLFetchTaskScheduler)fetchTaskScheduler;
- (SHLModifyTaskScheduler)modifyTaskScheduler;
- (SHLTaskSchedulerFactory)initWithConfiguration:(id)a3;
- (id)createTransaction;
@end

@implementation SHLTaskSchedulerFactory

- (SHLTaskSchedulerFactory)initWithConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHLTaskSchedulerFactory;
  v6 = [(SHLTaskSchedulerFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_configuration, a3);
  }

  return v7;
}

- (SHLModifyTaskScheduler)modifyTaskScheduler
{
  v3 = [(SHLTaskSchedulerFactory *)self configuration];
  v4 = [(SHLCloudModifyTaskScheduler *)v3 sessionType];

  if (!v4)
  {
    v5 = [SHLCloudModifyTaskScheduler alloc];
    v6 = [(SHLTaskSchedulerFactory *)self configuration];
    v3 = [(SHLCloudModifyTaskScheduler *)v5 initWithConfiguration:v6];
  }

  return v3;
}

- (SHLFetchTaskScheduler)fetchTaskScheduler
{
  v3 = [(SHLTaskSchedulerFactory *)self configuration];
  v4 = [(SHLCloudFetchTaskScheduler *)v3 sessionType];

  if (!v4)
  {
    v5 = [SHLCloudFetchTaskScheduler alloc];
    v6 = [(SHLTaskSchedulerFactory *)self configuration];
    v3 = [(SHLCloudFetchTaskScheduler *)v5 initWithConfiguration:v6];
  }

  return v3;
}

- (id)createTransaction
{
  v4 = [(SHLTaskSchedulerFactory *)self configuration];
  v5 = [v4 sessionType];

  if (!v5)
  {
    v6 = +[SHLCloudContext sharedContext];
    v7 = [(SHLTaskSchedulerFactory *)self configuration];
    v8 = [v6 containerWithScope:{objc_msgSend(v7, "sessionScope")}];
    v9 = [v8 containerIdentifier];

    v10 = [SHLCloudLibraryCache alloc];
    v11 = [(SHLTaskSchedulerFactory *)self configuration];
    v12 = [v11 callingProcessIdentifier];
    v13 = [(SHLTaskSchedulerFactory *)self configuration];
    v14 = [v13 sessionIdentifier];
    v2 = [(SHLCloudLibraryCache *)v10 initWithCallingProcessIdentifier:v12 containerIdentifier:v9 transactionIdentifier:v14];
  }

  return v2;
}

@end