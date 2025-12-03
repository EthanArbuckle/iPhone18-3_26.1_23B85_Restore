@interface HDFitnessMachineSessionRecoveryConfiguration
- (HDFitnessMachineSessionRecoveryConfiguration)initWithCoder:(id)coder;
- (HDFitnessMachineSessionRecoveryConfiguration)initWithSessionUUID:(id)d machineUUID:(id)iD machineType:(unint64_t)type machineName:(id)name machineBrand:(id)brand activityType:(unint64_t)activityType machineStartDate:(id)date machinePreferredUntilDate:(id)self0 nfcSessionIDData:(id)self1;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDFitnessMachineSessionRecoveryConfiguration

- (HDFitnessMachineSessionRecoveryConfiguration)initWithSessionUUID:(id)d machineUUID:(id)iD machineType:(unint64_t)type machineName:(id)name machineBrand:(id)brand activityType:(unint64_t)activityType machineStartDate:(id)date machinePreferredUntilDate:(id)self0 nfcSessionIDData:(id)self1
{
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  brandCopy = brand;
  dateCopy = date;
  untilDateCopy = untilDate;
  dataCopy = data;
  v28.receiver = self;
  v28.super_class = HDFitnessMachineSessionRecoveryConfiguration;
  v18 = [(HDFitnessMachineSessionRecoveryConfiguration *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sessionUUID, d);
    objc_storeStrong(&v19->_machineUUID, iD);
    v19->_machineType = type;
    objc_storeStrong(&v19->_machineName, name);
    objc_storeStrong(&v19->_machineBrand, brand);
    v19->_activityType = activityType;
    objc_storeStrong(&v19->_machineStartDate, date);
    objc_storeStrong(&v19->_machinePreferredUntilDate, untilDate);
    objc_storeStrong(&v19->_nfcSessionIDData, data);
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  sessionUUID = self->_sessionUUID;
  coderCopy = coder;
  [coderCopy encodeObject:sessionUUID forKey:@"session_uuid"];
  [coderCopy encodeObject:self->_machineUUID forKey:@"machine_uuid"];
  [coderCopy encodeInteger:self->_machineType forKey:@"machine_type"];
  [coderCopy encodeObject:self->_machineName forKey:@"machine_name"];
  [coderCopy encodeObject:self->_machineBrand forKey:@"machine_brand"];
  [coderCopy encodeInteger:self->_activityType forKey:@"activity_type"];
  [coderCopy encodeObject:self->_machineStartDate forKey:@"machine_start_date"];
  [coderCopy encodeObject:self->_machinePreferredUntilDate forKey:@"machine_preferred_until_date"];
  [coderCopy encodeObject:self->_nfcSessionIDData forKey:@"nfc_session_id_data"];
}

- (HDFitnessMachineSessionRecoveryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"session_uuid"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"machine_uuid"];
  v6 = [coderCopy decodeIntegerForKey:@"machine_type"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"machine_name"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"machine_brand"];
  v9 = [coderCopy decodeIntegerForKey:@"activity_type"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"machine_start_date"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"machine_preferred_until_date"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nfc_session_id_data"];

  v13 = [(HDFitnessMachineSessionRecoveryConfiguration *)self initWithSessionUUID:v4 machineUUID:v5 machineType:v6 machineName:v7 machineBrand:v8 activityType:v9 machineStartDate:v10 machinePreferredUntilDate:v11 nfcSessionIDData:v12];
  return v13;
}

@end