@interface AKProximityPiggybackRequestingEngine
- (void)activate;
- (void)invalidate;
- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5;
- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4;
- (void)peripheralManagerDidUpdateState:(id)a3;
- (void)prepareWithController:(id)a3 queue:(id)a4;
@end

@implementation AKProximityPiggybackRequestingEngine

- (void)prepareWithController:(id)a3 queue:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10.receiver = v13;
  v10.super_class = AKProximityPiggybackRequestingEngine;
  [(AKProximityPiggybackEngine *)&v10 prepareWithController:location[0] queue:v11];
  v8 = [CBPeripheralManager alloc];
  v7 = v13;
  v9 = [(AKProximityPiggybackEngine *)v13 queue];
  v4 = [v8 initWithDelegate:v7 queue:? options:?];
  peripheralManager = v13->_peripheralManager;
  v13->_peripheralManager = v4;
  _objc_release(peripheralManager);
  _objc_release(v9);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)activate
{
  v11 = self;
  v10[1] = a2;
  v3 = [(AKProximityPiggybackEngine *)self presenceSID];
  v10[0] = [CBUUID UUIDWithNSUUID:?];
  _objc_release(v3);
  v2 = [CBMutableService alloc];
  v9 = [v2 initWithType:v10[0] primary:1];
  [(CBPeripheralManager *)v11->_peripheralManager addService:v9];
  peripheralManager = v11->_peripheralManager;
  v13 = CBAdvertisementDataServiceUUIDsKey;
  v7 = [v9 UUID];
  v12 = v7;
  v6 = [NSArray arrayWithObjects:&v12 count:?];
  v14 = v6;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [(CBPeripheralManager *)peripheralManager startAdvertising:?];
  _objc_release(v5);
  _objc_release(v6);
  _objc_release(v7);
  v8.receiver = v11;
  v8.super_class = AKProximityPiggybackRequestingEngine;
  [(AKProximityPiggybackEngine *)&v8 activate];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);
}

- (void)invalidate
{
  v4 = self;
  v3 = a2;
  if (self->_peripheralManager)
  {
    [(CBPeripheralManager *)v4->_peripheralManager stopAdvertising];
    objc_storeStrong(&v4->_peripheralManager, 0);
  }

  v2.receiver = v4;
  v2.super_class = AKProximityPiggybackRequestingEngine;
  [(AKProximityPiggybackEngine *)&v2 invalidate];
}

- (void)peripheralManagerDidUpdateState:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(AKProximityPiggybackEngine *)v5 controller];
  [(AKProximityEngineController *)v3 proximityEngine:v5 managerDidUpdateState:location[0]];
  _objc_release(v3);
  objc_storeStrong(location, 0);
}

- (void)peripheralManagerDidStartAdvertising:(id)a3 error:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  if (v8)
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10004DCC8(v12, v10, location[0], v8);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "%@: Peripheral manager (%@) failed to start advertising with error (%@)", v12, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v5 = _AKLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_10001B098(v11, v10, location[0]);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Peripheral manager (%@) started advertising", v11, 0x16u);
    }

    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)peripheralManager:(id)a3 didAddService:(id)a4 error:(id)a5
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  if (v10)
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100034214(v15, v13, location[0], v11, v10);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "%@: Peripheral manager (%@) failed to add service (%@) with error (%@)", v15, 0x2Au);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v7 = _AKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_10004DCC8(v14, v13, location[0], v11);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Peripheral manager (%@) added service (%@)", v14, 0x20u);
    }

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

@end