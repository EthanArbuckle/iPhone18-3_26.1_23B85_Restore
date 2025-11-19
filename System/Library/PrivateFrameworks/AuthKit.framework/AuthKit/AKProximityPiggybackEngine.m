@interface AKProximityPiggybackEngine
- (AKProximityEngineController)controller;
- (AKProximityPiggybackEngine)initWithPresenceSID:(id)a3;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)prepareWithController:(id)a3 queue:(id)a4;
@end

@implementation AKProximityPiggybackEngine

- (AKProximityPiggybackEngine)initWithPresenceSID:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKProximityPiggybackEngine;
  v8 = [(AKProximityPiggybackEngine *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    objc_storeStrong(&v8->_presenceSID, location[0]);
  }

  v5 = _objc_retain(v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)dealloc
{
  v5 = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v3 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v6, "[AKProximityPiggybackEngine dealloc]", 36);
    _os_log_debug_impl(&_mh_execute_header, location[0], v3, "%s (%d) called", v6, 0x12u);
  }

  objc_storeStrong(location, 0);
  [(AKProximityPiggybackEngine *)v5 invalidate];
  v2.receiver = v5;
  v2.super_class = AKProximityPiggybackEngine;
  [(AKProximityPiggybackEngine *)&v2 dealloc];
}

- (void)prepareWithController:(id)a3 queue:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  objc_storeWeak(&v7->_controller, location[0]);
  objc_storeStrong(&v7->_queue, v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)activate
{
  v2 = [(AKProximityPiggybackEngine *)self controller];
  [(AKProximityEngineController *)v2 proximityEngineDidActivate:self];
  _objc_release(v2);
}

- (void)invalidate
{
  v2 = [(AKProximityPiggybackEngine *)self controller];
  [(AKProximityEngineController *)v2 proximityEngineDidInvalidate:self];
  _objc_release(v2);
}

- (AKProximityEngineController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end