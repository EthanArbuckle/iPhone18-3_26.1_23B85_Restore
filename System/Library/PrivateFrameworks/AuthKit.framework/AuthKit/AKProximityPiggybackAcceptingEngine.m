@interface AKProximityPiggybackAcceptingEngine
- (void)_discoveredPeripheral:(id)a3 withServiceID:(id)a4;
- (void)activate;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)invalidate;
- (void)prepareWithController:(id)a3 queue:(id)a4;
@end

@implementation AKProximityPiggybackAcceptingEngine

- (void)prepareWithController:(id)a3 queue:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v10.receiver = v13;
  v10.super_class = AKProximityPiggybackAcceptingEngine;
  [(AKProximityPiggybackEngine *)&v10 prepareWithController:location[0] queue:v11];
  v8 = [CBCentralManager alloc];
  v7 = v13;
  v9 = [(AKProximityPiggybackEngine *)v13 queue];
  v4 = [v8 initWithDelegate:v7 queue:? options:?];
  centralManager = v13->_centralManager;
  v13->_centralManager = v4;
  _objc_release(centralManager);
  _objc_release(v9);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)activate
{
  v8 = self;
  v7[1] = a2;
  v2 = [(AKProximityPiggybackEngine *)self presenceSID];
  v7[0] = [CBUUID UUIDWithNSUUID:?];
  _objc_release(v2);
  centralManager = v8->_centralManager;
  v11 = v7[0];
  v5 = [NSArray arrayWithObjects:&v11 count:1];
  v9[0] = CBManagerIsPrivilegedDaemonKey;
  v10[0] = &__kCFBooleanTrue;
  v9[1] = CBCentralManagerScanOptionAllowDuplicatesKey;
  v10[1] = &__kCFBooleanFalse;
  v9[2] = CBCentralManagerScanOptionActive;
  v10[2] = &__kCFBooleanFalse;
  v9[3] = CBCentralManagerScanOptionScanWindow;
  v10[3] = &off_100339088;
  v9[4] = CBCentralManagerScanOptionScanInterval;
  v10[4] = &off_1003390A0;
  v4 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:5];
  [(CBCentralManager *)centralManager scanForPeripheralsWithServices:v5 options:?];
  _objc_release(v4);
  _objc_release(v5);
  v6.receiver = v8;
  v6.super_class = AKProximityPiggybackAcceptingEngine;
  [(AKProximityPiggybackEngine *)&v6 activate];
  objc_storeStrong(v7, 0);
}

- (void)invalidate
{
  v4 = self;
  v3 = a2;
  if (self->_centralManager)
  {
    [(CBCentralManager *)v4->_centralManager stopScan];
    objc_storeStrong(&v4->_centralManager, 0);
  }

  v2.receiver = v4;
  v2.super_class = AKProximityPiggybackAcceptingEngine;
  [(AKProximityPiggybackEngine *)&v2 invalidate];
}

- (void)centralManagerDidUpdateState:(id)a3
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

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v26 = 0;
  objc_storeStrong(&v26, a4);
  v25 = 0;
  objc_storeStrong(&v25, a5);
  v24 = 0;
  objc_storeStrong(&v24, a6);
  oslog = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_10001B0E8(v30, v28, location[0], v26, v25, v24);
    _os_log_debug_impl(&_mh_execute_header, oslog, type, "%@: Central manager (%@) discovered peripheral (%@) with advertisement data (%@) and RSSI (%@)", v30, 0x34u);
  }

  objc_storeStrong(&oslog, 0);
  v11 = objc_opt_class();
  v12 = [v25 objectForKeyedSubscript:CBAdvertisementDataServiceUUIDsKey];
  v21 = sub_100100DCC(v11, v12);
  _objc_release(v12);
  memset(__b, 0, sizeof(__b));
  v13 = _objc_retain(v21);
  v14 = [v13 countByEnumeratingWithState:__b objects:v29 count:16];
  if (v14)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v14;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(v13);
      }

      v20 = *(__b[1] + 8 * v9);
      v6 = objc_opt_class();
      v18 = sub_100100DCC(v6, v20);
      [(AKProximityPiggybackAcceptingEngine *)v28 _discoveredPeripheral:v26 withServiceID:v18];
      objc_storeStrong(&v18, 0);
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [v13 countByEnumeratingWithState:__b objects:v29 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  _objc_release(v13);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(location, 0);
}

- (void)_discoveredPeripheral:(id)a3 withServiceID:(id)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  if (v19)
  {
    v9 = [(AKProximityPiggybackEngine *)v21 presenceSID];
    v15 = [(NSUUID *)v9 UUIDString];
    _objc_release(v9);
    v14 = [v19 UUIDString];
    if ([v15 isEqual:v14])
    {
      oslog = _AKLogSystem();
      v12 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v21;
        v7 = location[0];
        v8 = [(AKProximityPiggybackEngine *)v21 presenceSID];
        sub_1001011EC(v23, v6, v7, 1752392040, v8, v19);
        _os_log_impl(&_mh_execute_header, oslog, v12, "%@: Discovered peripheral (%@) with matching presenceSID (%{mask.hash}@) and serviceID (%@)", v23, 0x34u);
        _objc_release(v8);
      }

      objc_storeStrong(&oslog, 0);
      v5 = [(AKProximityPiggybackAcceptingEngine *)v21 matchHandler];
      _objc_release(v5);
      if (v5)
      {
        v4 = [(AKProximityPiggybackAcceptingEngine *)v21 matchHandler];
        v4[2]();
        _objc_release(v4);
      }
    }

    else
    {
      v11 = _AKLogSystem();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_10004DCC8(v22, v21, location[0], v19);
        _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%@: Discovered peripheral (%@) with non-matching serviceID (%@)", v22, 0x20u);
      }

      objc_storeStrong(&v11, 0);
    }

    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
    v16 = 0;
  }

  else
  {
    v18 = _AKLogSystem();
    v17 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_10001B098(v24, v21, location[0]);
      _os_log_debug_impl(&_mh_execute_header, v18, v17, "%@: Discovered peripheral (%@) with nil serviceID", v24, 0x16u);
    }

    objc_storeStrong(&v18, 0);
    v16 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

@end