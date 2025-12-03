@interface SHLCloudModifyTaskScheduler
- (NSArray)preconditions;
- (SHLCloudModifyTaskScheduler)initWithConfiguration:(id)configuration;
- (void)scheduleModifyTask:(id)task;
@end

@implementation SHLCloudModifyTaskScheduler

- (SHLCloudModifyTaskScheduler)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = SHLCloudModifyTaskScheduler;
  v5 = [(SHLCloudTaskScheduler *)&v9 initWithConfiguration:configurationCopy];
  if (v5)
  {
    v6 = [[SHLCloudModifyTaskTransformer alloc] initWithConfiguration:configurationCopy];
    taskTransformer = v5->_taskTransformer;
    v5->_taskTransformer = v6;
  }

  return v5;
}

- (NSArray)preconditions
{
  v3 = +[NSMutableArray array];
  v4 = [SHLCloudAccountStatusPrecondition alloc];
  containerTransformer = [(SHLCloudTaskScheduler *)self containerTransformer];
  cloudBackedContainer = [containerTransformer cloudBackedContainer];
  v7 = [(SHLCloudAccountStatusPrecondition *)v4 initWithContainer:cloudBackedContainer];

  [v3 addObject:v7];
  configuration = [(SHLCloudTaskScheduler *)self configuration];
  sessionScope = [configuration sessionScope];

  if (sessionScope == 1)
  {
    v10 = [SHLCloudEncryptionPrecondition alloc];
    containerTransformer2 = [(SHLCloudTaskScheduler *)self containerTransformer];
    cloudBackedContainer2 = [containerTransformer2 cloudBackedContainer];
    v13 = [(SHLCloudEncryptionPrecondition *)v10 initWithContainer:cloudBackedContainer2];

    [v3 addObject:v13];
  }

  v14 = [v3 copy];

  return v14;
}

- (void)scheduleModifyTask:(id)task
{
  taskCopy = task;
  containerTransformer = [(SHLCloudTaskScheduler *)self containerTransformer];
  cloudBackedContainer = [containerTransformer cloudBackedContainer];

  v7 = +[SHLCloudContext sharedContext];
  shazamLibraryZone = [v7 shazamLibraryZone];

  cache = [(SHLCloudTaskScheduler *)self cache];
  zoneID = [shazamLibraryZone zoneID];
  zoneName = [zoneID zoneName];
  v12 = [cache zoneExistsForIdentifier:zoneName];

  p_info = (&OBJC_METACLASS___SHLLibraryTrackCompoundIdentifier + 32);
  if ((v12 & 1) == 0)
  {
    v50 = cloudBackedContainer;
    v14 = [[SHLCloudBackedZone alloc] initWithZone:shazamLibraryZone];
    cache2 = [(SHLCloudTaskScheduler *)self cache];
    v16 = [(SHLCloudBackedZone *)v14 zone];
    zoneID2 = [v16 zoneID];
    zoneName2 = [zoneID2 zoneName];
    v52 = 0;
    v19 = [cache2 storeZoneIdentifier:zoneName2 error:&v52];
    v20 = v52;

    if ((v19 & 1) == 0)
    {
      v21 = sub_1000317DC();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [(SHLCloudBackedZone *)v14 zone];
        zoneID3 = [v22 zoneID];
        zoneName3 = [zoneID3 zoneName];
        *buf = 138412546;
        v55 = zoneName3;
        v56 = 2114;
        v57 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to cache the zone identifier for zone named %@ in the modify task with error %{public}@", buf, 0x16u);
      }
    }

    v49 = v20;
    v25 = sub_1000317DC();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      identifier = [taskCopy identifier];
      v29 = [(SHLCloudBackedZone *)v14 zone];
      zoneID4 = [v29 zoneID];
      zoneName4 = [zoneID4 zoneName];
      *buf = 138543874;
      v55 = v27;
      v56 = 2112;
      v57 = identifier;
      v58 = 2114;
      v59 = zoneName4;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "<task: %{public}@ %@> <zone: %{public}@> does not exist locally, so we are creating one", buf, 0x20u);
    }

    zoneTransformer = [(SHLCloudTaskScheduler *)self zoneTransformer];
    v53 = v14;
    v33 = [NSArray arrayWithObjects:&v53 count:1];
    cloudBackedContainer = v50;
    v34 = [zoneTransformer cloudBackedOperationForZonesToSave:v33 container:v50];

    p_info = &OBJC_METACLASS___SHLLibraryTrackCompoundIdentifier.info;
    v35 = +[SHLOperationQueue defaultQueue];
    operation = [v34 operation];
    [v35 addOperation:operation];
  }

  cache3 = [(SHLCloudTaskScheduler *)self cache];
  v51 = 0;
  v38 = [cache3 storeTask:taskCopy ofType:0 error:&v51];
  v39 = v51;

  if ((v38 & 1) == 0)
  {
    v40 = sub_1000317DC();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v55 = v39;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Failed to store the inflight task in the modify task scheduler with error %{public}@", buf, 0xCu);
    }
  }

  taskTransformer = [(SHLCloudModifyTaskScheduler *)self taskTransformer];
  v42 = [taskTransformer cloudBackedOperationFromModifyTask:taskCopy container:cloudBackedContainer];

  v43 = sub_1000317DC();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    v44 = objc_opt_class();
    v45 = NSStringFromClass(v44);
    identifier2 = [taskCopy identifier];
    *buf = 138543618;
    v55 = v45;
    v56 = 2112;
    v57 = identifier2;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "<task: %{public}@ %@> is scheduled", buf, 0x16u);
  }

  defaultQueue = [p_info + 41 defaultQueue];
  operation2 = [v42 operation];
  [defaultQueue addOperation:operation2];
}

@end