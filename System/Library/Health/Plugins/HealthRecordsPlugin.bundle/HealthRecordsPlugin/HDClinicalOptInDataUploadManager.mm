@interface HDClinicalOptInDataUploadManager
- (HDClinicalOptInDataUploadManager)initWithProfileExtension:(id)extension;
- (HDHealthRecordsProfileExtension)profileExtension;
- (HDProfile)profile;
- (void)abortCurrentUploads;
- (void)performPeriodicActivity:(id)activity completion:(id)completion;
- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria;
- (void)triggerClinicalOptInDataUploadWithCompletion:(id)completion;
@end

@implementation HDClinicalOptInDataUploadManager

- (HDClinicalOptInDataUploadManager)initWithProfileExtension:(id)extension
{
  extensionCopy = extension;
  v20.receiver = self;
  v20.super_class = HDClinicalOptInDataUploadManager;
  v5 = [(HDClinicalOptInDataUploadManager *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profileExtension, extensionCopy);
    profile = [extensionCopy profile];
    objc_storeWeak(&v6->_profile, profile);

    WeakRetained = objc_loadWeakRetained(&v6->_profileExtension);
    optInStudy = [WeakRetained optInStudy];
    study = v6->_study;
    v6->_study = optInStudy;

    v11 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v11;

    v6->_uploadsLock._os_unfair_lock_opaque = 0;
    v13 = objc_alloc_init(NSMutableArray);
    currentUploads = v6->_currentUploads;
    v6->_currentUploads = v13;

    v15 = [HDPeriodicActivity alloc];
    v16 = objc_loadWeakRetained(&v6->_profile);
    v17 = [v15 initWithProfile:v16 name:@"com.apple.healthd.healthrecords.opt-in-data-upload" interval:v6 delegate:HKLogHealthRecords loggingCategory:XPC_ACTIVITY_INTERVAL_1_DAY];
    periodicActivity = v6->_periodicActivity;
    v6->_periodicActivity = v17;
  }

  return v6;
}

- (void)abortCurrentUploads
{
  os_unfair_lock_lock(&self->_uploadsLock);
  v3 = [(NSMutableArray *)self->_currentUploads copy];
  [(NSMutableArray *)self->_currentUploads removeAllObjects];
  os_unfair_lock_unlock(&self->_uploadsLock);
  [v3 makeObjectsPerformSelector:"shouldAbortUpload"];
}

- (void)triggerClinicalOptInDataUploadWithCompletion:(id)completion
{
  completionCopy = completion;
  profileExtension = [(HDClinicalOptInDataUploadManager *)self profileExtension];
  isImproveHealthRecordsDataSubmissionAllowed = [profileExtension isImproveHealthRecordsDataSubmissionAllowed];

  if (isImproveHealthRecordsDataSubmissionAllowed)
  {
    v7 = [HDClinicalOptInStudyUpload alloc];
    study = [(HDClinicalOptInDataUploadManager *)self study];
    v9 = [(HDClinicalOptInStudyUpload *)v7 initWithStudy:study completion:completionCopy];

    os_unfair_lock_lock(&self->_uploadsLock);
    [(NSMutableArray *)self->_currentUploads addObject:v9];
    os_unfair_lock_unlock(&self->_uploadsLock);
    queue = self->_queue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_2A464;
    v15[3] = &unk_106B68;
    v15[4] = self;
    v16 = v9;
    v11 = v9;
    dispatch_async(queue, v15);
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v14 = [(HDClinicalOptInDataUploadManager *)self debugDescription];
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%{public}@: opt-in data collection is not enabled by the user", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 1, 0, 0);
  }
}

- (void)performPeriodicActivity:(id)activity completion:(id)completion
{
  completionCopy = completion;
  shouldDefer = [activity shouldDefer];
  _HKInitializeLogging();
  v8 = HKLogHealthRecords;
  v9 = os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT);
  if (shouldDefer)
  {
    if (v9)
    {
      v10 = v8;
      v11 = [(HDClinicalOptInDataUploadManager *)self debugDescription];
      *buf = 138543362;
      v17 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: opt-in data collection activity should be deferred", buf, 0xCu);
    }

    [(HDClinicalOptInDataUploadManager *)self abortCurrentUploads];
    completionCopy[2](completionCopy, 3, 0, 0.0);
  }

  else
  {
    if (v9)
    {
      v12 = v8;
      v13 = [(HDClinicalOptInDataUploadManager *)self debugDescription];
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: opt-in data collection activity triggered", buf, 0xCu);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_2A7CC;
    v14[3] = &unk_106B90;
    v14[4] = self;
    v15 = completionCopy;
    [(HDClinicalOptInDataUploadManager *)self triggerClinicalOptInDataUploadWithCompletion:v14];
  }
}

- (void)periodicActivity:(id)activity configureXPCActivityCriteria:(id)criteria
{
  xdict = criteria;
  xpc_dictionary_set_string(xdict, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
  xpc_dictionary_set_BOOL(xdict, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
}

- (HDHealthRecordsProfileExtension)profileExtension
{
  WeakRetained = objc_loadWeakRetained(&self->_profileExtension);

  return WeakRetained;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end