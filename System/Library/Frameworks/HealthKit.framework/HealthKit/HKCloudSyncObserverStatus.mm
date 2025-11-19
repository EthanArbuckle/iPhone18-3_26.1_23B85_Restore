@interface HKCloudSyncObserverStatus
- (BOOL)isEqual:(id)a3;
- (HKCloudSyncObserverStatus)initWithCoder:(id)a3;
- (HKCloudSyncObserverStatus)initWithSyncEnabled:(BOOL)a3 accountSupportsSecureContainer:(BOOL)a4 accountProhibitedForCloudSync:(BOOL)a5 lastPullDate:(id)a6 lastPushDate:(id)a7 lastLitePushDate:(id)a8 lastPulledUpdateDate:(id)a9 restoreCompletionDate:(id)a10 errorRequiringUserAction:(id)a11 dataUploadRequestStatus:(int64_t)a12 dataUploadRequestStartDate:(id)a13 dataUploadRequestCompletionDate:(id)a14;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKCloudSyncObserverStatus

- (HKCloudSyncObserverStatus)initWithSyncEnabled:(BOOL)a3 accountSupportsSecureContainer:(BOOL)a4 accountProhibitedForCloudSync:(BOOL)a5 lastPullDate:(id)a6 lastPushDate:(id)a7 lastLitePushDate:(id)a8 lastPulledUpdateDate:(id)a9 restoreCompletionDate:(id)a10 errorRequiringUserAction:(id)a11 dataUploadRequestStatus:(int64_t)a12 dataUploadRequestStartDate:(id)a13 dataUploadRequestCompletionDate:(id)a14
{
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = v19;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a13;
  v26 = a14;
  v48.receiver = self;
  v48.super_class = HKCloudSyncObserverStatus;
  v27 = [(HKCloudSyncObserverStatus *)&v48 init];
  v28 = v27;
  if (v27)
  {
    v27->_syncEnabled = a3;
    v27->_accountSupportsSecureContainer = a4;
    v27->_accountProhibitedForCloudSync = a5;
    v29 = [v18 copy];
    lastPullDate = v28->_lastPullDate;
    v28->_lastPullDate = v29;

    v31 = [v21 copy];
    lastPushDate = v28->_lastPushDate;
    v28->_lastPushDate = v31;

    v33 = [v20 copy];
    lastLitePushDate = v28->_lastLitePushDate;
    v28->_lastLitePushDate = v33;

    v35 = [v22 copy];
    lastPulledUpdateDate = v28->_lastPulledUpdateDate;
    v28->_lastPulledUpdateDate = v35;

    v37 = [v23 copy];
    restoreCompletionDate = v28->_restoreCompletionDate;
    v28->_restoreCompletionDate = v37;

    v39 = [v24 copy];
    errorRequiringUserAction = v28->_errorRequiringUserAction;
    v28->_errorRequiringUserAction = v39;

    v28->_dataUploadRequestStatus = a12;
    v41 = [v25 copy];
    dataUploadRequestStartDate = v28->_dataUploadRequestStartDate;
    v28->_dataUploadRequestStartDate = v41;

    v43 = [v26 copy];
    dataUploadRequestCompletionDate = v28->_dataUploadRequestCompletionDate;
    v28->_dataUploadRequestCompletionDate = v43;
  }

  return v28;
}

- (void)encodeWithCoder:(id)a3
{
  syncEnabled = self->_syncEnabled;
  v5 = a3;
  [v5 encodeBool:syncEnabled forKey:@"HKCloudSyncObserverStatusSyncEnabled"];
  [v5 encodeBool:self->_accountSupportsSecureContainer forKey:@"HKCloudSyncObserverStatusAccountSupportsSecureContainer"];
  [v5 encodeBool:self->_accountProhibitedForCloudSync forKey:@"HKCloudSyncObserverStatusAccountProhibitedForCloudSync"];
  [v5 encodeObject:self->_lastPullDate forKey:@"HKCloudSyncObserverStatusLastPullDate"];
  [v5 encodeObject:self->_lastPushDate forKey:@"HKCloudSyncObserverStatusLastPushDate"];
  [v5 encodeObject:self->_lastLitePushDate forKey:@"HKCloudSyncObserverStatusLastLitePushDate"];
  [v5 encodeObject:self->_lastPulledUpdateDate forKey:@"HKCloudSyncObserverStatusLastPulledUpdateDate"];
  [v5 encodeObject:self->_restoreCompletionDate forKey:@"HKCloudSyncObserverStatusRestoreCompletionDate"];
  [v5 encodeObject:self->_errorRequiringUserAction forKey:@"HKCloudSyncObserverStatusErrorRequiringUserAction"];
  [v5 encodeInteger:self->_dataUploadRequestStatus forKey:@"_HKCloudSyncObserverStatusDataUploadRequestStatus"];
  [v5 encodeObject:self->_dataUploadRequestStartDate forKey:@"_HKCloudSyncObserverStatusDataUploadRequestStartDate"];
  [v5 encodeObject:self->_dataUploadRequestCompletionDate forKey:@"_HKCloudSyncObserverStatusDataUploadRequestCompletionDate"];
}

- (HKCloudSyncObserverStatus)initWithCoder:(id)a3
{
  v3 = a3;
  v17 = [v3 decodeBoolForKey:@"HKCloudSyncObserverStatusSyncEnabled"];
  v16 = [v3 decodeBoolForKey:@"HKCloudSyncObserverStatusAccountSupportsSecureContainer"];
  v15 = [v3 decodeBoolForKey:@"HKCloudSyncObserverStatusAccountProhibitedForCloudSync"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HKCloudSyncObserverStatusLastPullDate"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HKCloudSyncObserverStatusLastPushDate"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HKCloudSyncObserverStatusLastLitePushDate"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HKCloudSyncObserverStatusLastPulledUpdateDate"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HKCloudSyncObserverStatusRestoreCompletionDate"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"HKCloudSyncObserverStatusErrorRequiringUserAction"];
  v10 = [v3 decodeIntegerForKey:@"_HKCloudSyncObserverStatusDataUploadRequestStatus"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"_HKCloudSyncObserverStatusDataUploadRequestStartDate"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"_HKCloudSyncObserverStatusDataUploadRequestCompletionDate"];

  v13 = [(HKCloudSyncObserverStatus *)self initWithSyncEnabled:v17 accountSupportsSecureContainer:v16 accountProhibitedForCloudSync:v15 lastPullDate:v4 lastPushDate:v5 lastLitePushDate:v6 lastPulledUpdateDate:v7 restoreCompletionDate:v8 errorRequiringUserAction:v9 dataUploadRequestStatus:v10 dataUploadRequestStartDate:v11 dataUploadRequestCompletionDate:v12];
  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setSyncEnabled:self->_syncEnabled];
  [v5 setAccountSupportsSecureContainer:self->_accountSupportsSecureContainer];
  [v5 setAccountProhibitedForCloudSync:self->_accountProhibitedForCloudSync];
  [v5 setLastPullDate:self->_lastPullDate];
  [v5 setLastPushDate:self->_lastPushDate];
  [v5 setLastLitePushDate:self->_lastLitePushDate];
  [v5 setLastPulledUpdateDate:self->_lastPulledUpdateDate];
  [v5 setRestoreCompletionDate:self->_restoreCompletionDate];
  [v5 setErrorRequiringUserAction:self->_errorRequiringUserAction];
  [v5 setDataUploadRequestStatus:self->_dataUploadRequestStatus];
  v6 = [(NSDate *)self->_dataUploadRequestStartDate copyWithZone:a3];
  [v5 setDataUploadRequestStartDate:v6];

  v7 = [(NSDate *)self->_dataUploadRequestCompletionDate copyWithZone:a3];
  [v5 setDataUploadRequestCompletionDate:v7];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_lastPullDate hash];
  v4 = [(NSDate *)self->_lastPushDate hash]^ v3;
  v5 = [(NSDate *)self->_lastLitePushDate hash];
  v6 = v4 ^ v5 ^ [(NSDate *)self->_lastPulledUpdateDate hash];
  v7 = [(NSDate *)self->_restoreCompletionDate hash];
  v8 = v6 ^ v7 ^ [(NSError *)self->_errorRequiringUserAction hash]^ self->_dataUploadRequestStatus;
  v9 = [(NSDate *)self->_dataUploadRequestStartDate hash];
  return v8 ^ v9 ^ [(NSDate *)self->_dataUploadRequestCompletionDate hash]^ self->_syncEnabled ^ self->_accountSupportsSecureContainer ^ self->_accountProhibitedForCloudSync;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_30;
  }

  if (self->_syncEnabled != *(v4 + 8))
  {
    goto LABEL_30;
  }

  if (self->_accountSupportsSecureContainer != *(v4 + 9))
  {
    goto LABEL_30;
  }

  if (self->_accountProhibitedForCloudSync != *(v4 + 10))
  {
    goto LABEL_30;
  }

  if (self->_dataUploadRequestStatus != v4[8])
  {
    goto LABEL_30;
  }

  lastPullDate = self->_lastPullDate;
  v6 = v4[2];
  if (lastPullDate != v6 && (!v6 || ![(NSDate *)lastPullDate isEqual:?]))
  {
    goto LABEL_30;
  }

  lastPushDate = self->_lastPushDate;
  v8 = v4[3];
  if (lastPushDate != v8 && (!v8 || ![(NSDate *)lastPushDate isEqual:?]))
  {
    goto LABEL_30;
  }

  lastLitePushDate = self->_lastLitePushDate;
  v10 = v4[4];
  if (lastLitePushDate != v10 && (!v10 || ![(NSDate *)lastLitePushDate isEqual:?]))
  {
    goto LABEL_30;
  }

  lastPulledUpdateDate = self->_lastPulledUpdateDate;
  v12 = v4[5];
  if (lastPulledUpdateDate != v12 && (!v12 || ![(NSDate *)lastPulledUpdateDate isEqual:?]))
  {
    goto LABEL_30;
  }

  restoreCompletionDate = self->_restoreCompletionDate;
  v14 = v4[6];
  if (restoreCompletionDate != v14 && (!v14 || ![(NSDate *)restoreCompletionDate isEqual:?]))
  {
    goto LABEL_30;
  }

  errorRequiringUserAction = self->_errorRequiringUserAction;
  v16 = v4[7];
  if (errorRequiringUserAction != v16 && (!v16 || ![(NSError *)errorRequiringUserAction isEqual:?]))
  {
    goto LABEL_30;
  }

  dataUploadRequestStartDate = self->_dataUploadRequestStartDate;
  v18 = v4[9];
  if (dataUploadRequestStartDate != v18 && (!v18 || ![(NSDate *)dataUploadRequestStartDate isEqual:?]))
  {
    goto LABEL_30;
  }

  dataUploadRequestCompletionDate = self->_dataUploadRequestCompletionDate;
  v20 = v4[10];
  if (dataUploadRequestCompletionDate == v20)
  {
    v21 = 1;
    goto LABEL_31;
  }

  if (v20)
  {
    v21 = [(NSDate *)dataUploadRequestCompletionDate isEqual:?];
  }

  else
  {
LABEL_30:
    v21 = 0;
  }

LABEL_31:

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = HKCloudSyncObserverStatus;
  v4 = [(HKCloudSyncObserverStatus *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: syncEnabled: %d, accountSupportsSecureContainer: %d, accountProhibitedForCloudSync: %d, lastPullDate: %@, lastPushDate: %@, lastLitePushDate: %@, lastPulledUpdateDate: %@, restoreCompletionDate: %@, errorRequiringUserAction: %@, dataUploadRequestStatus: %ld, dataUploadRequestStartDate: %@, dataUploadRequestCompletionDate: %@", v4, self->_syncEnabled, self->_accountSupportsSecureContainer, self->_accountProhibitedForCloudSync, self->_lastPullDate, self->_lastPushDate, self->_lastLitePushDate, self->_lastPulledUpdateDate, self->_restoreCompletionDate, self->_errorRequiringUserAction, self->_dataUploadRequestStatus, self->_dataUploadRequestStartDate, self->_dataUploadRequestCompletionDate];

  return v5;
}

@end