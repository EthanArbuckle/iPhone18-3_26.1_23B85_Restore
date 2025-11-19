@interface HDFitnessMachineSessionRecoveryConfiguration
- (HDFitnessMachineSessionRecoveryConfiguration)initWithCoder:(id)a3;
- (HDFitnessMachineSessionRecoveryConfiguration)initWithSessionUUID:(id)a3 machineUUID:(id)a4 machineType:(unint64_t)a5 machineName:(id)a6 machineBrand:(id)a7 activityType:(unint64_t)a8 machineStartDate:(id)a9 machinePreferredUntilDate:(id)a10 nfcSessionIDData:(id)a11;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDFitnessMachineSessionRecoveryConfiguration

- (HDFitnessMachineSessionRecoveryConfiguration)initWithSessionUUID:(id)a3 machineUUID:(id)a4 machineType:(unint64_t)a5 machineName:(id)a6 machineBrand:(id)a7 activityType:(unint64_t)a8 machineStartDate:(id)a9 machinePreferredUntilDate:(id)a10 nfcSessionIDData:(id)a11
{
  v27 = a3;
  v26 = a4;
  v25 = a6;
  v24 = a7;
  v23 = a9;
  v16 = a10;
  v17 = a11;
  v28.receiver = self;
  v28.super_class = HDFitnessMachineSessionRecoveryConfiguration;
  v18 = [(HDFitnessMachineSessionRecoveryConfiguration *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_sessionUUID, a3);
    objc_storeStrong(&v19->_machineUUID, a4);
    v19->_machineType = a5;
    objc_storeStrong(&v19->_machineName, a6);
    objc_storeStrong(&v19->_machineBrand, a7);
    v19->_activityType = a8;
    objc_storeStrong(&v19->_machineStartDate, a9);
    objc_storeStrong(&v19->_machinePreferredUntilDate, a10);
    objc_storeStrong(&v19->_nfcSessionIDData, a11);
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  sessionUUID = self->_sessionUUID;
  v5 = a3;
  [v5 encodeObject:sessionUUID forKey:@"session_uuid"];
  [v5 encodeObject:self->_machineUUID forKey:@"machine_uuid"];
  [v5 encodeInteger:self->_machineType forKey:@"machine_type"];
  [v5 encodeObject:self->_machineName forKey:@"machine_name"];
  [v5 encodeObject:self->_machineBrand forKey:@"machine_brand"];
  [v5 encodeInteger:self->_activityType forKey:@"activity_type"];
  [v5 encodeObject:self->_machineStartDate forKey:@"machine_start_date"];
  [v5 encodeObject:self->_machinePreferredUntilDate forKey:@"machine_preferred_until_date"];
  [v5 encodeObject:self->_nfcSessionIDData forKey:@"nfc_session_id_data"];
}

- (HDFitnessMachineSessionRecoveryConfiguration)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"session_uuid"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"machine_uuid"];
  v6 = [v3 decodeIntegerForKey:@"machine_type"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"machine_name"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"machine_brand"];
  v9 = [v3 decodeIntegerForKey:@"activity_type"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"machine_start_date"];
  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"machine_preferred_until_date"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"nfc_session_id_data"];

  v13 = [(HDFitnessMachineSessionRecoveryConfiguration *)self initWithSessionUUID:v4 machineUUID:v5 machineType:v6 machineName:v7 machineBrand:v8 activityType:v9 machineStartDate:v10 machinePreferredUntilDate:v11 nfcSessionIDData:v12];
  return v13;
}

@end