@interface AKProximityPiggybackRequestingEngine
- (void)activate;
- (void)invalidate;
- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error;
- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error;
- (void)peripheralManagerDidUpdateState:(id)state;
- (void)prepareWithController:(id)controller queue:(id)queue;
@end

@implementation AKProximityPiggybackRequestingEngine

- (void)prepareWithController:(id)controller queue:(id)queue
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v11 = 0;
  objc_storeStrong(&v11, queue);
  v10.receiver = selfCopy;
  v10.super_class = AKProximityPiggybackRequestingEngine;
  [(AKProximityPiggybackEngine *)&v10 prepareWithController:location[0] queue:v11];
  v8 = [CBPeripheralManager alloc];
  v7 = selfCopy;
  queue = [(AKProximityPiggybackEngine *)selfCopy queue];
  v4 = [v8 initWithDelegate:v7 queue:? options:?];
  peripheralManager = selfCopy->_peripheralManager;
  selfCopy->_peripheralManager = v4;
  _objc_release(peripheralManager);
  _objc_release(queue);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)activate
{
  selfCopy = self;
  v10[1] = a2;
  presenceSID = [(AKProximityPiggybackEngine *)self presenceSID];
  v10[0] = [CBUUID UUIDWithNSUUID:?];
  _objc_release(presenceSID);
  v2 = [CBMutableService alloc];
  v9 = [v2 initWithType:v10[0] primary:1];
  [(CBPeripheralManager *)selfCopy->_peripheralManager addService:v9];
  peripheralManager = selfCopy->_peripheralManager;
  v13 = CBAdvertisementDataServiceUUIDsKey;
  uUID = [v9 UUID];
  v12 = uUID;
  v6 = [NSArray arrayWithObjects:&v12 count:?];
  v14 = v6;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  [(CBPeripheralManager *)peripheralManager startAdvertising:?];
  _objc_release(v5);
  _objc_release(v6);
  _objc_release(uUID);
  v8.receiver = selfCopy;
  v8.super_class = AKProximityPiggybackRequestingEngine;
  [(AKProximityPiggybackEngine *)&v8 activate];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);
}

- (void)invalidate
{
  selfCopy = self;
  v3 = a2;
  if (self->_peripheralManager)
  {
    [(CBPeripheralManager *)selfCopy->_peripheralManager stopAdvertising];
    objc_storeStrong(&selfCopy->_peripheralManager, 0);
  }

  v2.receiver = selfCopy;
  v2.super_class = AKProximityPiggybackRequestingEngine;
  [(AKProximityPiggybackEngine *)&v2 invalidate];
}

- (void)peripheralManagerDidUpdateState:(id)state
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, state);
  controller = [(AKProximityPiggybackEngine *)selfCopy controller];
  [(AKProximityEngineController *)controller proximityEngine:selfCopy managerDidUpdateState:location[0]];
  _objc_release(controller);
  objc_storeStrong(location, 0);
}

- (void)peripheralManagerDidStartAdvertising:(id)advertising error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, advertising);
  v8 = 0;
  objc_storeStrong(&v8, error);
  if (v8)
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_10004DCC8(v12, selfCopy, location[0], v8);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "%@: Peripheral manager (%@) failed to start advertising with error (%@)", v12, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v5 = _AKLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sub_10001B098(v11, selfCopy, location[0]);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Peripheral manager (%@) started advertising", v11, 0x16u);
    }

    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)peripheralManager:(id)manager didAddService:(id)service error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, manager);
  v11 = 0;
  objc_storeStrong(&v11, service);
  v10 = 0;
  objc_storeStrong(&v10, error);
  if (v10)
  {
    oslog = _AKLogSystem();
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_100034214(v15, selfCopy, location[0], v11, v10);
      _os_log_error_impl(&_mh_execute_header, oslog, type, "%@: Peripheral manager (%@) failed to add service (%@) with error (%@)", v15, 0x2Au);
    }

    objc_storeStrong(&oslog, 0);
  }

  else
  {
    v7 = _AKLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      sub_10004DCC8(v14, selfCopy, location[0], v11);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@: Peripheral manager (%@) added service (%@)", v14, 0x20u);
    }

    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

@end