@interface FPImportProgressReport
- (FPImportProgressReport)init;
- (FPImportProgressReport)initWithCoder:(id)a3;
- (NSDictionary)json;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FPImportProgressReport

- (FPImportProgressReport)init
{
  v3.receiver = self;
  v3.super_class = FPImportProgressReport;
  result = [(FPImportProgressReport *)&v3 init];
  if (result)
  {
    *&result->_isStreamResetRunning = 0;
    result->_stateOfOtherJobs = -1;
    result->_xpcActivityIsActive = 0;
    result->_xpcActivityTimeSinceLastRegistration = 0;
    result->_xpcActivityTimeSinceLastActivation = 0;
    result->_xpcActivityTimeSinceLastAbleToRun = 0;
    result->_xpcActivityDasdContext = -1;
    result->_latestFolderSelectedForImport = -1;
    result->_latestFolderSelectedForImportTimestamp = -1;
    result->_latestFolderSelectedForImportState = -1;
    *&result->_latestFolderSelectedForImportWasModifiedOnDisk = 0;
    result->_latestFolderSelectedForImportIsMonitored = 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  [v9 encodeInteger:self->_status forKey:@"_status"];
  [v9 encodeInteger:self->_numberOfItemsReconciled forKey:@"_numberOfItemsReconciled"];
  [v9 encodeInteger:self->_numberOfItemsInError forKey:@"_numberOfItemsInError"];
  errorDetails = self->_errorDetails;
  if (errorDetails)
  {
    [v9 encodeObject:errorDetails forKey:@"_errorDetails"];
  }

  [v9 encodeInteger:self->_dbCreationTimestamp forKey:@"_dbCreationTimestamp"];
  [v9 encodeBool:self->_isStreamResetRunning forKey:@"_isStreamResetRunning"];
  [v9 encodeInteger:self->_stateOfDownloadJobs forKey:@"_stateOfDownloadJobs"];
  [v9 encodeInteger:self->_stateOfUploadJobs forKey:@"_stateOfUploadJobs"];
  [v9 encodeInteger:self->_stateOfOtherJobs forKey:@"_stateOfOtherJobs"];
  [v9 encodeInteger:self->_numberOfItemsPendingReconciliation forKey:@"_numberOfItemsPendingReconciliation"];
  [v9 encodeInteger:self->_numberOfItemsPendingSelection forKey:@"_numberOfItemsPendingSelection"];
  [v9 encodeInteger:self->_numberOfItemsPendingScanningDisk forKey:@"_numberOfItemsPendingScanningDisk"];
  [v9 encodeInteger:self->_numberOfItemsPendingScanningProvider forKey:@"_numberOfItemsPendingScanningProvider"];
  [v9 encodeBool:self->_xpcActivityRegisteredWithDuet forKey:@"_xpcActivityRegisteredWithDuet"];
  [v9 encodeInteger:self->_xpcActivityTimeSinceLastRegistration forKey:@"_xpcActivityTimeSinceLastRegistration"];
  [v9 encodeBool:self->_xpcActivityIsActive forKey:@"_xpcActivityIsActive"];
  [v9 encodeInteger:self->_xpcActivityTimeSinceLastActivation forKey:@"_xpcActivityTimeSinceLastActivation"];
  [v9 encodeInteger:self->_xpcActivityTimeSinceLastAbleToRun forKey:@"_xpcActivityTimeSinceLastAbleToRun"];
  [v9 encodeInteger:self->_xpcActivityDasdContext forKey:@"_xpcActivityDasdContext"];
  itemsPendingReconciliation = self->_itemsPendingReconciliation;
  if (itemsPendingReconciliation)
  {
    [v9 encodeObject:itemsPendingReconciliation forKey:@"_itemsPendingReconciliation"];
  }

  itemsPendingScanningDisk = self->_itemsPendingScanningDisk;
  if (itemsPendingScanningDisk)
  {
    [v9 encodeObject:itemsPendingScanningDisk forKey:@"_itemsPendingScanningDisk"];
  }

  itemsPendingScanningProvider = self->_itemsPendingScanningProvider;
  v8 = v9;
  if (itemsPendingScanningProvider)
  {
    [v9 encodeObject:itemsPendingScanningProvider forKey:@"_itemsPendingScanningProvider"];
    v8 = v9;
  }

  [v8 encodeInteger:self->_latestFolderSelectedForImport forKey:@"_latestFolderSelectedForImport"];
  [v9 encodeInteger:self->_latestFolderSelectedForImportTimestamp forKey:@"_latestFolderSelectedForImportTimestamp"];
  [v9 encodeInteger:self->_latestFolderSelectedForImportState forKey:@"_latestFolderSelectedForImportState"];
  [v9 encodeBool:self->_latestFolderSelectedForImportWasModifiedOnDisk forKey:@"_latestFolderSelectedForImportWasModifiedOnDisk"];
  [v9 encodeBool:self->_latestFolderSelectedForImportWasModifiedRemotely forKey:@"_latestFolderSelectedForImportWasModifiedRemotely"];
  [v9 encodeBool:self->_latestFolderSelectedForImportIsMonitored forKey:@"_latestFolderSelectedForImportIsMonitored"];
}

- (FPImportProgressReport)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FPImportProgressReport;
  v5 = [(FPImportProgressReport *)&v15 init];
  if (v5)
  {
    v5->_status = [v4 decodeIntegerForKey:@"_status"];
    v5->_numberOfItemsReconciled = [v4 decodeIntegerForKey:@"_numberOfItemsReconciled"];
    v5->_numberOfItemsInError = [v4 decodeIntegerForKey:@"_numberOfItemsInError"];
    v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_errorDetails"];
    errorDetails = v5->_errorDetails;
    v5->_errorDetails = v6;

    v5->_dbCreationTimestamp = [v4 decodeIntegerForKey:@"_dbCreationTimestamp"];
    v5->_isStreamResetRunning = [v4 decodeBoolForKey:@"_isStreamResetRunning"];
    v5->_stateOfDownloadJobs = [v4 decodeIntegerForKey:@"_stateOfDownloadJobs"];
    v5->_stateOfUploadJobs = [v4 decodeIntegerForKey:@"_stateOfUploadJobs"];
    v5->_stateOfOtherJobs = [v4 decodeIntegerForKey:@"_stateOfOtherJobs"];
    v5->_numberOfItemsPendingReconciliation = [v4 decodeIntegerForKey:@"_numberOfItemsPendingReconciliation"];
    v5->_numberOfItemsPendingSelection = [v4 decodeIntegerForKey:@"_numberOfItemsPendingSelection"];
    v5->_numberOfItemsPendingScanningDisk = [v4 decodeIntegerForKey:@"_numberOfItemsPendingScanningDisk"];
    v5->_numberOfItemsPendingScanningProvider = [v4 decodeIntegerForKey:@"_numberOfItemsPendingScanningProvider"];
    v5->_xpcActivityRegisteredWithDuet = [v4 decodeBoolForKey:@"_xpcActivityRegisteredWithDuet"];
    v5->_xpcActivityTimeSinceLastRegistration = [v4 decodeIntegerForKey:@"_xpcActivityTimeSinceLastRegistration"];
    v5->_xpcActivityIsActive = [v4 decodeBoolForKey:@"_xpcActivityIsActive"];
    v5->_xpcActivityTimeSinceLastActivation = [v4 decodeIntegerForKey:@"_xpcActivityTimeSinceLastActivation"];
    v5->_xpcActivityTimeSinceLastAbleToRun = [v4 decodeIntegerForKey:@"_xpcActivityTimeSinceLastAbleToRun"];
    v5->_xpcActivityDasdContext = [v4 decodeIntegerForKey:@"_xpcActivityDasdContext"];
    v8 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_itemsPendingReconciliation"];
    itemsPendingReconciliation = v5->_itemsPendingReconciliation;
    v5->_itemsPendingReconciliation = v8;

    v10 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_itemsPendingScanningDisk"];
    itemsPendingScanningDisk = v5->_itemsPendingScanningDisk;
    v5->_itemsPendingScanningDisk = v10;

    v12 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"_itemsPendingScanningProvider"];
    itemsPendingScanningProvider = v5->_itemsPendingScanningProvider;
    v5->_itemsPendingScanningProvider = v12;

    v5->_latestFolderSelectedForImport = [v4 decodeIntegerForKey:@"_latestFolderSelectedForImport"];
    v5->_latestFolderSelectedForImportTimestamp = [v4 decodeIntegerForKey:@"_latestFolderSelectedForImportTimestamp"];
    v5->_latestFolderSelectedForImportState = [v4 decodeIntegerForKey:@"_latestFolderSelectedForImportState"];
    v5->_latestFolderSelectedForImportWasModifiedOnDisk = [v4 decodeBoolForKey:@"_latestFolderSelectedForImportWasModifiedOnDisk"];
    v5->_latestFolderSelectedForImportWasModifiedRemotely = [v4 decodeBoolForKey:@"_latestFolderSelectedForImportWasModifiedRemotely"];
    v5->_latestFolderSelectedForImportIsMonitored = [v4 decodeBoolForKey:@"_latestFolderSelectedForImportIsMonitored"];
  }

  return v5;
}

- (NSDictionary)json
{
  v3 = objc_opt_new();
  v4 = v3;
  status = self->_status;
  if (status <= 2)
  {
    [v3 setObject:off_1E793C630[status] forKeyedSubscript:@"status"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_numberOfItemsReconciled];
  [v4 setObject:v6 forKeyedSubscript:@"numberOfItemsReconciled"];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_numberOfItemsInError];
  [v4 setObject:v7 forKeyedSubscript:@"numberOfItemsInError"];

  errorDetails = self->_errorDetails;
  if (errorDetails)
  {
    v9 = [(NSArray *)errorDetails fp_map:&__block_literal_global_28];
    [v4 setObject:v9 forKeyedSubscript:@"errorDetails"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:self->_dbCreationTimestamp];
  [v4 setObject:v10 forKeyedSubscript:@"dbCreationTimestamp"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_isStreamResetRunning];
  [v4 setObject:v11 forKeyedSubscript:@"isStreamResetRunning"];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:self->_stateOfDownloadJobs];
  [v4 setObject:v12 forKeyedSubscript:@"stateOfDownloadJobs"];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:self->_stateOfUploadJobs];
  [v4 setObject:v13 forKeyedSubscript:@"stateOfUploadJobs"];

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_stateOfOtherJobs];
  [v4 setObject:v14 forKeyedSubscript:@"stateOfOtherJobs"];

  v15 = [MEMORY[0x1E696AD98] numberWithInteger:self->_numberOfItemsPendingReconciliation];
  [v4 setObject:v15 forKeyedSubscript:@"numberOfItemsPendingReconciliation"];

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:self->_numberOfItemsPendingSelection];
  [v4 setObject:v16 forKeyedSubscript:@"numberOfItemsPendingSelection"];

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:self->_numberOfItemsPendingScanningDisk];
  [v4 setObject:v17 forKeyedSubscript:@"numberOfItemsPendingScanningDisk"];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:self->_numberOfItemsPendingScanningProvider];
  [v4 setObject:v18 forKeyedSubscript:@"numberOfItemsPendingScanningProvider"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:self->_xpcActivityRegisteredWithDuet];
  [v4 setObject:v19 forKeyedSubscript:@"xpcActivityRegisteredWithDuet"];

  v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_xpcActivityTimeSinceLastRegistration];
  [v4 setObject:v20 forKeyedSubscript:@"xpcActivityTimeSinceLastRegistration"];

  v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_xpcActivityIsActive];
  [v4 setObject:v21 forKeyedSubscript:@"xpcActivityIsActive"];

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_xpcActivityTimeSinceLastActivation];
  [v4 setObject:v22 forKeyedSubscript:@"xpcActivityTimeSinceLastActivation"];

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_xpcActivityTimeSinceLastAbleToRun];
  [v4 setObject:v23 forKeyedSubscript:@"xpcActivityTimeSinceLastAbleToRun"];

  v24 = [MEMORY[0x1E696AD98] numberWithInteger:self->_xpcActivityDasdContext];
  [v4 setObject:v24 forKeyedSubscript:@"xpcActivityDasdContext"];

  itemsPendingReconciliation = self->_itemsPendingReconciliation;
  if (itemsPendingReconciliation)
  {
    v26 = [(NSArray *)itemsPendingReconciliation fp_map:&__block_literal_global_499];
    [v4 setObject:v26 forKeyedSubscript:@"itemsPendingReconciliation"];
  }

  itemsPendingScanningDisk = self->_itemsPendingScanningDisk;
  if (itemsPendingScanningDisk)
  {
    v28 = [(NSArray *)itemsPendingScanningDisk fp_map:&__block_literal_global_505];
    [v4 setObject:v28 forKeyedSubscript:@"itemsPendingScanningDisk"];
  }

  itemsPendingScanningProvider = self->_itemsPendingScanningProvider;
  if (itemsPendingScanningProvider)
  {
    v30 = [(NSArray *)itemsPendingScanningProvider fp_map:&__block_literal_global_511];
    [v4 setObject:v30 forKeyedSubscript:@"itemsPendingScanningProvider"];
  }

  v31 = [MEMORY[0x1E696AD98] numberWithInteger:self->_latestFolderSelectedForImport];
  [v4 setObject:v31 forKeyedSubscript:@"latestFolderSelectedForImport"];

  v32 = [MEMORY[0x1E696AD98] numberWithInteger:self->_latestFolderSelectedForImportTimestamp];
  [v4 setObject:v32 forKeyedSubscript:@"latestFolderSelectedForImportTimestamp"];

  v33 = [MEMORY[0x1E696AD98] numberWithInteger:self->_latestFolderSelectedForImportState];
  [v4 setObject:v33 forKeyedSubscript:@"latestFolderSelectedForImportState"];

  v34 = [MEMORY[0x1E696AD98] numberWithBool:self->_latestFolderSelectedForImportWasModifiedOnDisk];
  [v4 setObject:v34 forKeyedSubscript:@"latestFolderSelectedForImportWasModifiedOnDisk"];

  v35 = [MEMORY[0x1E696AD98] numberWithBool:self->_latestFolderSelectedForImportWasModifiedRemotely];
  [v4 setObject:v35 forKeyedSubscript:@"latestFolderSelectedForImportWasModifiedRemotely"];

  v36 = [MEMORY[0x1E696AD98] numberWithBool:self->_latestFolderSelectedForImportIsMonitored];
  [v4 setObject:v36 forKeyedSubscript:@"latestFolderSelectedForImportIsMonitored"];

  return v4;
}

@end