@interface HKCloudSyncObserverStatus
- (BOOL)isEqual:(id)equal;
- (HKCloudSyncObserverStatus)initWithCoder:(id)coder;
- (HKCloudSyncObserverStatus)initWithSyncEnabled:(BOOL)enabled accountSupportsSecureContainer:(BOOL)container accountProhibitedForCloudSync:(BOOL)sync lastPullDate:(id)date lastPushDate:(id)pushDate lastLitePushDate:(id)litePushDate lastPulledUpdateDate:(id)updateDate restoreCompletionDate:(id)self0 errorRequiringUserAction:(id)self1 dataUploadRequestStatus:(int64_t)self2 dataUploadRequestStartDate:(id)self3 dataUploadRequestCompletionDate:(id)self4;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKCloudSyncObserverStatus

- (HKCloudSyncObserverStatus)initWithSyncEnabled:(BOOL)enabled accountSupportsSecureContainer:(BOOL)container accountProhibitedForCloudSync:(BOOL)sync lastPullDate:(id)date lastPushDate:(id)pushDate lastLitePushDate:(id)litePushDate lastPulledUpdateDate:(id)updateDate restoreCompletionDate:(id)self0 errorRequiringUserAction:(id)self1 dataUploadRequestStatus:(int64_t)self2 dataUploadRequestStartDate:(id)self3 dataUploadRequestCompletionDate:(id)self4
{
  dateCopy = date;
  pushDateCopy = pushDate;
  litePushDateCopy = litePushDate;
  v21 = pushDateCopy;
  updateDateCopy = updateDate;
  completionDateCopy = completionDate;
  actionCopy = action;
  startDateCopy = startDate;
  requestCompletionDateCopy = requestCompletionDate;
  v48.receiver = self;
  v48.super_class = HKCloudSyncObserverStatus;
  v27 = [(HKCloudSyncObserverStatus *)&v48 init];
  v28 = v27;
  if (v27)
  {
    v27->_syncEnabled = enabled;
    v27->_accountSupportsSecureContainer = container;
    v27->_accountProhibitedForCloudSync = sync;
    v29 = [dateCopy copy];
    lastPullDate = v28->_lastPullDate;
    v28->_lastPullDate = v29;

    v31 = [v21 copy];
    lastPushDate = v28->_lastPushDate;
    v28->_lastPushDate = v31;

    v33 = [litePushDateCopy copy];
    lastLitePushDate = v28->_lastLitePushDate;
    v28->_lastLitePushDate = v33;

    v35 = [updateDateCopy copy];
    lastPulledUpdateDate = v28->_lastPulledUpdateDate;
    v28->_lastPulledUpdateDate = v35;

    v37 = [completionDateCopy copy];
    restoreCompletionDate = v28->_restoreCompletionDate;
    v28->_restoreCompletionDate = v37;

    v39 = [actionCopy copy];
    errorRequiringUserAction = v28->_errorRequiringUserAction;
    v28->_errorRequiringUserAction = v39;

    v28->_dataUploadRequestStatus = status;
    v41 = [startDateCopy copy];
    dataUploadRequestStartDate = v28->_dataUploadRequestStartDate;
    v28->_dataUploadRequestStartDate = v41;

    v43 = [requestCompletionDateCopy copy];
    dataUploadRequestCompletionDate = v28->_dataUploadRequestCompletionDate;
    v28->_dataUploadRequestCompletionDate = v43;
  }

  return v28;
}

- (void)encodeWithCoder:(id)coder
{
  syncEnabled = self->_syncEnabled;
  coderCopy = coder;
  [coderCopy encodeBool:syncEnabled forKey:@"HKCloudSyncObserverStatusSyncEnabled"];
  [coderCopy encodeBool:self->_accountSupportsSecureContainer forKey:@"HKCloudSyncObserverStatusAccountSupportsSecureContainer"];
  [coderCopy encodeBool:self->_accountProhibitedForCloudSync forKey:@"HKCloudSyncObserverStatusAccountProhibitedForCloudSync"];
  [coderCopy encodeObject:self->_lastPullDate forKey:@"HKCloudSyncObserverStatusLastPullDate"];
  [coderCopy encodeObject:self->_lastPushDate forKey:@"HKCloudSyncObserverStatusLastPushDate"];
  [coderCopy encodeObject:self->_lastLitePushDate forKey:@"HKCloudSyncObserverStatusLastLitePushDate"];
  [coderCopy encodeObject:self->_lastPulledUpdateDate forKey:@"HKCloudSyncObserverStatusLastPulledUpdateDate"];
  [coderCopy encodeObject:self->_restoreCompletionDate forKey:@"HKCloudSyncObserverStatusRestoreCompletionDate"];
  [coderCopy encodeObject:self->_errorRequiringUserAction forKey:@"HKCloudSyncObserverStatusErrorRequiringUserAction"];
  [coderCopy encodeInteger:self->_dataUploadRequestStatus forKey:@"_HKCloudSyncObserverStatusDataUploadRequestStatus"];
  [coderCopy encodeObject:self->_dataUploadRequestStartDate forKey:@"_HKCloudSyncObserverStatusDataUploadRequestStartDate"];
  [coderCopy encodeObject:self->_dataUploadRequestCompletionDate forKey:@"_HKCloudSyncObserverStatusDataUploadRequestCompletionDate"];
}

- (HKCloudSyncObserverStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17 = [coderCopy decodeBoolForKey:@"HKCloudSyncObserverStatusSyncEnabled"];
  v16 = [coderCopy decodeBoolForKey:@"HKCloudSyncObserverStatusAccountSupportsSecureContainer"];
  v15 = [coderCopy decodeBoolForKey:@"HKCloudSyncObserverStatusAccountProhibitedForCloudSync"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKCloudSyncObserverStatusLastPullDate"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKCloudSyncObserverStatusLastPushDate"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKCloudSyncObserverStatusLastLitePushDate"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKCloudSyncObserverStatusLastPulledUpdateDate"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKCloudSyncObserverStatusRestoreCompletionDate"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HKCloudSyncObserverStatusErrorRequiringUserAction"];
  v10 = [coderCopy decodeIntegerForKey:@"_HKCloudSyncObserverStatusDataUploadRequestStatus"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_HKCloudSyncObserverStatusDataUploadRequestStartDate"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_HKCloudSyncObserverStatusDataUploadRequestCompletionDate"];

  v13 = [(HKCloudSyncObserverStatus *)self initWithSyncEnabled:v17 accountSupportsSecureContainer:v16 accountProhibitedForCloudSync:v15 lastPullDate:v4 lastPushDate:v5 lastLitePushDate:v6 lastPulledUpdateDate:v7 restoreCompletionDate:v8 errorRequiringUserAction:v9 dataUploadRequestStatus:v10 dataUploadRequestStartDate:v11 dataUploadRequestCompletionDate:v12];
  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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
  v6 = [(NSDate *)self->_dataUploadRequestStartDate copyWithZone:zone];
  [v5 setDataUploadRequestStartDate:v6];

  v7 = [(NSDate *)self->_dataUploadRequestCompletionDate copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_30;
  }

  if (self->_syncEnabled != *(equalCopy + 8))
  {
    goto LABEL_30;
  }

  if (self->_accountSupportsSecureContainer != *(equalCopy + 9))
  {
    goto LABEL_30;
  }

  if (self->_accountProhibitedForCloudSync != *(equalCopy + 10))
  {
    goto LABEL_30;
  }

  if (self->_dataUploadRequestStatus != equalCopy[8])
  {
    goto LABEL_30;
  }

  lastPullDate = self->_lastPullDate;
  v6 = equalCopy[2];
  if (lastPullDate != v6 && (!v6 || ![(NSDate *)lastPullDate isEqual:?]))
  {
    goto LABEL_30;
  }

  lastPushDate = self->_lastPushDate;
  v8 = equalCopy[3];
  if (lastPushDate != v8 && (!v8 || ![(NSDate *)lastPushDate isEqual:?]))
  {
    goto LABEL_30;
  }

  lastLitePushDate = self->_lastLitePushDate;
  v10 = equalCopy[4];
  if (lastLitePushDate != v10 && (!v10 || ![(NSDate *)lastLitePushDate isEqual:?]))
  {
    goto LABEL_30;
  }

  lastPulledUpdateDate = self->_lastPulledUpdateDate;
  v12 = equalCopy[5];
  if (lastPulledUpdateDate != v12 && (!v12 || ![(NSDate *)lastPulledUpdateDate isEqual:?]))
  {
    goto LABEL_30;
  }

  restoreCompletionDate = self->_restoreCompletionDate;
  v14 = equalCopy[6];
  if (restoreCompletionDate != v14 && (!v14 || ![(NSDate *)restoreCompletionDate isEqual:?]))
  {
    goto LABEL_30;
  }

  errorRequiringUserAction = self->_errorRequiringUserAction;
  v16 = equalCopy[7];
  if (errorRequiringUserAction != v16 && (!v16 || ![(NSError *)errorRequiringUserAction isEqual:?]))
  {
    goto LABEL_30;
  }

  dataUploadRequestStartDate = self->_dataUploadRequestStartDate;
  v18 = equalCopy[9];
  if (dataUploadRequestStartDate != v18 && (!v18 || ![(NSDate *)dataUploadRequestStartDate isEqual:?]))
  {
    goto LABEL_30;
  }

  dataUploadRequestCompletionDate = self->_dataUploadRequestCompletionDate;
  v20 = equalCopy[10];
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