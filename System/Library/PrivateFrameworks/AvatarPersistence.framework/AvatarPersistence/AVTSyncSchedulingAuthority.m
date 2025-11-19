@interface AVTSyncSchedulingAuthority
- (AVTSyncSchedulingAuthority)initWithLogger:(id)a3;
- (BOOL)importRequired;
- (void)didResetSync;
- (void)importDidCompleteSuccessfully;
@end

@implementation AVTSyncSchedulingAuthority

- (AVTSyncSchedulingAuthority)initWithLogger:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AVTSyncSchedulingAuthority;
  v6 = [(AVTSyncSchedulingAuthority *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_logger, a3);
  }

  return v7;
}

- (BOOL)importRequired
{
  v3 = AVTUISyncSuccessfulImportDate();
  if (v3 && ([MEMORY[0x277CBEAA8] date], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "timeIntervalSinceDate:", v3), v6 = 86400.0 - v5, v4, v6 >= 0.0))
  {
    v8 = [(AVTSyncSchedulingAuthority *)self logger];
    [v8 logNotImportingOnLaunchWithRemainingTime:v6];

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)importDidCompleteSuccessfully
{
  v2 = [MEMORY[0x277CBEAA8] date];
  AVTUISyncSetSuccessfulImportDate(v2);
}

- (void)didResetSync
{
  AVTUISyncSetSuccessfulImportDate(0);

  AVTUISyncSetExportRequired(1);
}

@end