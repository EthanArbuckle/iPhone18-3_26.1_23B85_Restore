@interface HealthBluetoothPeripheralProfileExtension
- (HealthBluetoothPeripheralProfileExtension)initWithProfile:(id)a3;
- (HealthBluetoothPeripheralProfileExtension)initWithProfile:(id)a3 centralManager:(id)a4 queue:(id)a5;
@end

@implementation HealthBluetoothPeripheralProfileExtension

- (HealthBluetoothPeripheralProfileExtension)initWithProfile:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = HealthBluetoothPeripheralProfileExtension;
  v5 = [(HealthBluetoothPeripheralProfileExtension *)&v16 init];
  if (v5)
  {
    v6 = [v4 daemon];
    v7 = [v6 behavior];
    v8 = [v7 isAppleWatch];

    if (v8)
    {
      v9 = [[HDFitnessMachineManager alloc] initWithProfile:v4];
      fitnessManager = v5->_fitnessManager;
      v5->_fitnessManager = v9;
    }

    v11 = [[HDHealthServiceManager alloc] initWithProfile:v4];
    serviceManager = v5->_serviceManager;
    v5->_serviceManager = v11;

    v13 = [[HDServiceConnectionManager alloc] initWithProfile:v4 serviceManager:v5->_serviceManager];
    serviceConnectionManager = v5->_serviceConnectionManager;
    v5->_serviceConnectionManager = v13;
  }

  return v5;
}

- (HealthBluetoothPeripheralProfileExtension)initWithProfile:(id)a3 centralManager:(id)a4 queue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22.receiver = self;
  v22.super_class = HealthBluetoothPeripheralProfileExtension;
  v11 = [(HealthBluetoothPeripheralProfileExtension *)&v22 init];
  if (v11)
  {
    v12 = [v8 daemon];
    v13 = [v12 behavior];
    v14 = [v13 supportsWorkouts];

    if (v14)
    {
      v15 = [[HDFitnessMachineManager alloc] initWithProfile:v8];
      fitnessManager = v11->_fitnessManager;
      v11->_fitnessManager = v15;
    }

    v17 = [[HDHealthServiceManager alloc] initWithProfile:v8 centralManager:v9 queue:v10];
    serviceManager = v11->_serviceManager;
    v11->_serviceManager = v17;

    v19 = [[HDServiceConnectionManager alloc] initWithProfile:v8 serviceManager:v11->_serviceManager];
    serviceConnectionManager = v11->_serviceConnectionManager;
    v11->_serviceConnectionManager = v19;
  }

  return v11;
}

@end