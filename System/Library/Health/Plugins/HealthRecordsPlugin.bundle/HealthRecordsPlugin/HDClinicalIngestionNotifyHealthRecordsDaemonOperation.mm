@interface HDClinicalIngestionNotifyHealthRecordsDaemonOperation
- (void)main;
@end

@implementation HDClinicalIngestionNotifyHealthRecordsDaemonOperation

- (void)main
{
  _HKInitializeLogging();
  v3 = HKLogHealthRecords;
  if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *v11 = 138412290;
    *&v11[4] = objc_opt_class();
    v5 = *&v11[4];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Now running %@", v11, 0xCu);
  }

  profileExtension = [(HDClinicalIngestionOperation *)self profileExtension];
  clinicalSharingManager = [profileExtension clinicalSharingManager];

  if (clinicalSharingManager)
  {
    profileExtension2 = [(HDClinicalIngestionOperation *)self profileExtension];
    clinicalSharingManager2 = [profileExtension2 clinicalSharingManager];
    [clinicalSharingManager2 scheduleSharing];
  }

  else
  {
    _HKInitializeLogging();
    v10 = HKLogHealthRecords;
    if (os_log_type_enabled(HKLogHealthRecords, OS_LOG_TYPE_ERROR))
    {
      sub_A15E0(self, v10);
    }
  }
}

@end