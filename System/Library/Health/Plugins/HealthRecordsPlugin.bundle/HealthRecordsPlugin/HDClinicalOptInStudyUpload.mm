@interface HDClinicalOptInStudyUpload
- (BOOL)clinicalOptInStudyShouldAbortUpload:(id)upload;
- (HDClinicalOptInStudyUpload)init;
- (HDClinicalOptInStudyUpload)initWithStudy:(id)study completion:(id)completion;
- (void)shouldAbortUpload;
- (void)triggerUpload;
@end

@implementation HDClinicalOptInStudyUpload

- (HDClinicalOptInStudyUpload)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDClinicalOptInStudyUpload)initWithStudy:(id)study completion:(id)completion
{
  studyCopy = study;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = HDClinicalOptInStudyUpload;
  v9 = [(HDClinicalOptInStudyUpload *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_ivarLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v9->_study, study);
    v11 = [completionCopy copy];
    completion = v10->_completion;
    v10->_completion = v11;
  }

  return v10;
}

- (void)triggerUpload
{
  os_unfair_lock_lock(&self->_ivarLock);
  if (self->_didTrigger)
  {
    _HKInitializeLogging();
    v3 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_9FB84(v3, self);
    }

    os_unfair_lock_unlock(&self->_ivarLock);
  }

  else
  {
    self->_didTrigger = 1;
    os_unfair_lock_unlock(&self->_ivarLock);
    study = [(HDClinicalOptInStudyUpload *)self study];
    v11 = 0;
    v5 = [study triggerOptInAnalyticsDataUploadToHealthCloudWithUploadDelegate:self error:&v11];
    v6 = v11;

    if ((v5 & 1) == 0)
    {
      _HKInitializeLogging();
      v7 = HKLogHealthRecords;
      if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
      {
        sub_9FAC4(v7, self, v6);
      }
    }

    completion = self->_completion;
    study2 = [(HDClinicalOptInStudyUpload *)self study];
    currentSubjectID = [study2 currentSubjectID];
    completion[2](completion, v5, currentSubjectID, v6);
  }
}

- (void)shouldAbortUpload
{
  os_unfair_lock_lock(&self->_ivarLock);
  self->_shouldAbort = 1;

  os_unfair_lock_unlock(&self->_ivarLock);
}

- (BOOL)clinicalOptInStudyShouldAbortUpload:(id)upload
{
  os_unfair_lock_lock(&self->_ivarLock);
  shouldAbort = self->_shouldAbort;
  os_unfair_lock_unlock(&self->_ivarLock);
  return shouldAbort;
}

@end