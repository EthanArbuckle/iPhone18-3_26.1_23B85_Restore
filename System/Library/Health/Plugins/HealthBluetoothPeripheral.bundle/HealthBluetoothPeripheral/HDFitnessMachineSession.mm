@interface HDFitnessMachineSession
+ (id)serviceFromRecoveryConfiguration:(id)a3;
- (BOOL)dataTransferRequirementsComplete;
- (HDFitnessMachineSession)init;
- (HDFitnessMachineSession)initWithNFCSessionIDData:(id)a3;
- (HDFitnessMachineSession)initWithRecoveryConfiguration:(id)a3;
- (HDFitnessMachineSessionRecoveryConfiguration)recoveryConfiguration;
- (NSArray)nfcConnectionHandoverData;
- (void)setFitnessMachineName:(id)a3 type:(unint64_t)a4 identifier:(id)a5;
@end

@implementation HDFitnessMachineSession

- (HDFitnessMachineSession)initWithNFCSessionIDData:(id)a3
{
  v4 = a3;
  if ([v4 length] == &dword_8)
  {
    sub_3A928(&self->super.isa, v4, &v7);
    self = v7;
    v5 = v7;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (HDFitnessMachineSession)init
{
  if (SecRandomCopyBytes(kSecRandomDefault, 8uLL, &v6))
  {
    v3 = 0;
  }

  else
  {
    v4 = [[NSData alloc] initWithBytes:&v6 length:8];
    self = [(HDFitnessMachineSession *)self initWithNFCSessionIDData:v4];

    v3 = self;
  }

  return v3;
}

+ (id)serviceFromRecoveryConfiguration:(id)a3
{
  v3 = a3;
  v4 = [HKHealthService alloc];
  v5 = [v3 machineUUID];
  v6 = [v3 machineName];

  v7 = [v4 initWithType:1 identifier:v5 name:v6];

  return v7;
}

- (HDFitnessMachineSessionRecoveryConfiguration)recoveryConfiguration
{
  v3 = [HDFitnessMachineSessionRecoveryConfiguration alloc];
  fitnessMachineSessionUUID = self->_fitnessMachineSessionUUID;
  v5 = [(_HKFitnessMachine *)self->_fitnessMachine identifier];
  v6 = [(_HKFitnessMachine *)self->_fitnessMachine type];
  v7 = [(_HKFitnessMachine *)self->_fitnessMachine device];
  v8 = [v7 name];
  v9 = [(_HKFitnessMachine *)self->_fitnessMachine brand];
  v10 = [(_HKFitnessMachine *)self->_fitnessMachine activityType];
  machinePreferredUntilDate = self->_machinePreferredUntilDate;
  v12 = [(HDFitnessMachineSessionRecoveryConfiguration *)v3 initWithSessionUUID:fitnessMachineSessionUUID machineUUID:v5 machineType:v6 machineName:v8 machineBrand:v9 activityType:v10 machineStartDate:self->_machineStartDate machinePreferredUntilDate:machinePreferredUntilDate nfcSessionIDData:self->_nfcSessionIDData];

  return v12;
}

- (void)setFitnessMachineName:(id)a3 type:(unint64_t)a4 identifier:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [[_HKFitnessMachine alloc] initWithType:a4 identifier:v8];
  [(HDFitnessMachineSession *)self setFitnessMachine:v10];

  v11 = [HKDevice alloc];
  v12 = [v8 UUIDString];

  v14 = [v11 initWithName:v9 manufacturer:0 model:0 hardwareVersion:0 firmwareVersion:0 softwareVersion:0 localIdentifier:v12 UDIDeviceIdentifier:0];
  v13 = [(HDFitnessMachineSession *)self fitnessMachine];
  [v13 _setDevice:v14];
}

- (BOOL)dataTransferRequirementsComplete
{
  if ([(HDFitnessMachineSession *)self waitingOnBluetoothConnection]|| !self->_dataTransferPermitted)
  {
    return 0;
  }

  else
  {
    return ![(HDFitnessMachineSession *)self waitingOnActivityType];
  }
}

- (NSArray)nfcConnectionHandoverData
{
  oobInfo = self->_oobInfo;
  v4 = self->_nfcSessionIDData;
  v5 = [(HDHealthServiceOOBInfo *)oobInfo randomValue];
  v6 = [(HDHealthServiceOOBInfo *)self->_oobInfo confirmationValue];
  v7 = [(HDHealthServiceOOBInfo *)self->_oobInfo btAddress];
  v8 = sub_3A654(self, v5, v6, v4, v7);

  return v8;
}

- (HDFitnessMachineSession)initWithRecoveryConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 sessionUUID];
  v6 = sub_3A448(&self->super.isa, v5);

  if (v6)
  {
    v7 = [objc_opt_class() serviceFromRecoveryConfiguration:v4];
    healthService = v6->_healthService;
    v6->_healthService = v7;

    v9 = [v4 machineName];
    v10 = [v4 machineType];
    v11 = [v4 machineUUID];
    [(HDFitnessMachineSession *)v6 setFitnessMachineName:v9 type:v10 identifier:v11];

    [(HDFitnessMachineSession *)v6 markDataTransferPermitted];
    -[_HKFitnessMachine _setActivityType:](v6->_fitnessMachine, "_setActivityType:", [v4 activityType]);
    [(HDFitnessMachineSession *)v6 markActivityTypeProvided];
    v12 = [v4 machineStartDate];
    machineStartDate = v6->_machineStartDate;
    v6->_machineStartDate = v12;

    v14 = [v4 machinePreferredUntilDate];
    machinePreferredUntilDate = v6->_machinePreferredUntilDate;
    v6->_machinePreferredUntilDate = v14;

    if (v6->_machineStartDate)
    {
      v16 = 0;
    }

    else
    {
      v16 = v6->_machinePreferredUntilDate == 0;
    }

    v6->_waitingOnInitialMachineStatus = v16;
    v6->_waitingOnInitialMachineData = v16;
    v17 = [v4 nfcSessionIDData];
    nfcSessionIDData = v6->_nfcSessionIDData;
    v6->_nfcSessionIDData = v17;
  }

  return v6;
}

@end