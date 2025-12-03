@interface HealthBluetoothPeripheralProfileExtension
- (HealthBluetoothPeripheralProfileExtension)initWithProfile:(id)profile;
- (HealthBluetoothPeripheralProfileExtension)initWithProfile:(id)profile centralManager:(id)manager queue:(id)queue;
@end

@implementation HealthBluetoothPeripheralProfileExtension

- (HealthBluetoothPeripheralProfileExtension)initWithProfile:(id)profile
{
  profileCopy = profile;
  v16.receiver = self;
  v16.super_class = HealthBluetoothPeripheralProfileExtension;
  v5 = [(HealthBluetoothPeripheralProfileExtension *)&v16 init];
  if (v5)
  {
    daemon = [profileCopy daemon];
    behavior = [daemon behavior];
    isAppleWatch = [behavior isAppleWatch];

    if (isAppleWatch)
    {
      v9 = [[HDFitnessMachineManager alloc] initWithProfile:profileCopy];
      fitnessManager = v5->_fitnessManager;
      v5->_fitnessManager = v9;
    }

    v11 = [[HDHealthServiceManager alloc] initWithProfile:profileCopy];
    serviceManager = v5->_serviceManager;
    v5->_serviceManager = v11;

    v13 = [[HDServiceConnectionManager alloc] initWithProfile:profileCopy serviceManager:v5->_serviceManager];
    serviceConnectionManager = v5->_serviceConnectionManager;
    v5->_serviceConnectionManager = v13;
  }

  return v5;
}

- (HealthBluetoothPeripheralProfileExtension)initWithProfile:(id)profile centralManager:(id)manager queue:(id)queue
{
  profileCopy = profile;
  managerCopy = manager;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = HealthBluetoothPeripheralProfileExtension;
  v11 = [(HealthBluetoothPeripheralProfileExtension *)&v22 init];
  if (v11)
  {
    daemon = [profileCopy daemon];
    behavior = [daemon behavior];
    supportsWorkouts = [behavior supportsWorkouts];

    if (supportsWorkouts)
    {
      v15 = [[HDFitnessMachineManager alloc] initWithProfile:profileCopy];
      fitnessManager = v11->_fitnessManager;
      v11->_fitnessManager = v15;
    }

    v17 = [[HDHealthServiceManager alloc] initWithProfile:profileCopy centralManager:managerCopy queue:queueCopy];
    serviceManager = v11->_serviceManager;
    v11->_serviceManager = v17;

    v19 = [[HDServiceConnectionManager alloc] initWithProfile:profileCopy serviceManager:v11->_serviceManager];
    serviceConnectionManager = v11->_serviceConnectionManager;
    v11->_serviceConnectionManager = v19;
  }

  return v11;
}

@end