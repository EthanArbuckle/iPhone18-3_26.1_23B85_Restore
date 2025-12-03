@interface HDFitnessMachineSession
+ (id)serviceFromRecoveryConfiguration:(id)configuration;
- (BOOL)dataTransferRequirementsComplete;
- (HDFitnessMachineSession)init;
- (HDFitnessMachineSession)initWithNFCSessionIDData:(id)data;
- (HDFitnessMachineSession)initWithRecoveryConfiguration:(id)configuration;
- (HDFitnessMachineSessionRecoveryConfiguration)recoveryConfiguration;
- (NSArray)nfcConnectionHandoverData;
- (void)setFitnessMachineName:(id)name type:(unint64_t)type identifier:(id)identifier;
@end

@implementation HDFitnessMachineSession

- (HDFitnessMachineSession)initWithNFCSessionIDData:(id)data
{
  dataCopy = data;
  if ([dataCopy length] == &dword_8)
  {
    sub_3A928(&self->super.isa, dataCopy, &v7);
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
    selfCopy = 0;
  }

  else
  {
    v4 = [[NSData alloc] initWithBytes:&v6 length:8];
    self = [(HDFitnessMachineSession *)self initWithNFCSessionIDData:v4];

    selfCopy = self;
  }

  return selfCopy;
}

+ (id)serviceFromRecoveryConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [HKHealthService alloc];
  machineUUID = [configurationCopy machineUUID];
  machineName = [configurationCopy machineName];

  v7 = [v4 initWithType:1 identifier:machineUUID name:machineName];

  return v7;
}

- (HDFitnessMachineSessionRecoveryConfiguration)recoveryConfiguration
{
  v3 = [HDFitnessMachineSessionRecoveryConfiguration alloc];
  fitnessMachineSessionUUID = self->_fitnessMachineSessionUUID;
  identifier = [(_HKFitnessMachine *)self->_fitnessMachine identifier];
  type = [(_HKFitnessMachine *)self->_fitnessMachine type];
  device = [(_HKFitnessMachine *)self->_fitnessMachine device];
  name = [device name];
  brand = [(_HKFitnessMachine *)self->_fitnessMachine brand];
  activityType = [(_HKFitnessMachine *)self->_fitnessMachine activityType];
  machinePreferredUntilDate = self->_machinePreferredUntilDate;
  v12 = [(HDFitnessMachineSessionRecoveryConfiguration *)v3 initWithSessionUUID:fitnessMachineSessionUUID machineUUID:identifier machineType:type machineName:name machineBrand:brand activityType:activityType machineStartDate:self->_machineStartDate machinePreferredUntilDate:machinePreferredUntilDate nfcSessionIDData:self->_nfcSessionIDData];

  return v12;
}

- (void)setFitnessMachineName:(id)name type:(unint64_t)type identifier:(id)identifier
{
  identifierCopy = identifier;
  nameCopy = name;
  v10 = [[_HKFitnessMachine alloc] initWithType:type identifier:identifierCopy];
  [(HDFitnessMachineSession *)self setFitnessMachine:v10];

  v11 = [HKDevice alloc];
  uUIDString = [identifierCopy UUIDString];

  v14 = [v11 initWithName:nameCopy manufacturer:0 model:0 hardwareVersion:0 firmwareVersion:0 softwareVersion:0 localIdentifier:uUIDString UDIDeviceIdentifier:0];
  fitnessMachine = [(HDFitnessMachineSession *)self fitnessMachine];
  [fitnessMachine _setDevice:v14];
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
  randomValue = [(HDHealthServiceOOBInfo *)oobInfo randomValue];
  confirmationValue = [(HDHealthServiceOOBInfo *)self->_oobInfo confirmationValue];
  btAddress = [(HDHealthServiceOOBInfo *)self->_oobInfo btAddress];
  v8 = sub_3A654(self, randomValue, confirmationValue, v4, btAddress);

  return v8;
}

- (HDFitnessMachineSession)initWithRecoveryConfiguration:(id)configuration
{
  configurationCopy = configuration;
  sessionUUID = [configurationCopy sessionUUID];
  v6 = sub_3A448(&self->super.isa, sessionUUID);

  if (v6)
  {
    v7 = [objc_opt_class() serviceFromRecoveryConfiguration:configurationCopy];
    healthService = v6->_healthService;
    v6->_healthService = v7;

    machineName = [configurationCopy machineName];
    machineType = [configurationCopy machineType];
    machineUUID = [configurationCopy machineUUID];
    [(HDFitnessMachineSession *)v6 setFitnessMachineName:machineName type:machineType identifier:machineUUID];

    [(HDFitnessMachineSession *)v6 markDataTransferPermitted];
    -[_HKFitnessMachine _setActivityType:](v6->_fitnessMachine, "_setActivityType:", [configurationCopy activityType]);
    [(HDFitnessMachineSession *)v6 markActivityTypeProvided];
    machineStartDate = [configurationCopy machineStartDate];
    machineStartDate = v6->_machineStartDate;
    v6->_machineStartDate = machineStartDate;

    machinePreferredUntilDate = [configurationCopy machinePreferredUntilDate];
    machinePreferredUntilDate = v6->_machinePreferredUntilDate;
    v6->_machinePreferredUntilDate = machinePreferredUntilDate;

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
    nfcSessionIDData = [configurationCopy nfcSessionIDData];
    nfcSessionIDData = v6->_nfcSessionIDData;
    v6->_nfcSessionIDData = nfcSessionIDData;
  }

  return v6;
}

@end