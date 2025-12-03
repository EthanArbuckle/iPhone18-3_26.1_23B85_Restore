@interface AKProximityPiggybackEngine
- (AKProximityEngineController)controller;
- (AKProximityPiggybackEngine)initWithPresenceSID:(id)d;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)prepareWithController:(id)controller queue:(id)queue;
@end

@implementation AKProximityPiggybackEngine

- (AKProximityPiggybackEngine)initWithPresenceSID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKProximityPiggybackEngine;
  selfCopy = [(AKProximityPiggybackEngine *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_presenceSID, location[0]);
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)dealloc
{
  selfCopy = self;
  location[1] = a2;
  location[0] = _AKLogSystem();
  v3 = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v6, "[AKProximityPiggybackEngine dealloc]", 36);
    _os_log_debug_impl(&_mh_execute_header, location[0], v3, "%s (%d) called", v6, 0x12u);
  }

  objc_storeStrong(location, 0);
  [(AKProximityPiggybackEngine *)selfCopy invalidate];
  v2.receiver = selfCopy;
  v2.super_class = AKProximityPiggybackEngine;
  [(AKProximityPiggybackEngine *)&v2 dealloc];
}

- (void)prepareWithController:(id)controller queue:(id)queue
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v5 = 0;
  objc_storeStrong(&v5, queue);
  objc_storeWeak(&selfCopy->_controller, location[0]);
  objc_storeStrong(&selfCopy->_queue, v5);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)activate
{
  controller = [(AKProximityPiggybackEngine *)self controller];
  [(AKProximityEngineController *)controller proximityEngineDidActivate:self];
  _objc_release(controller);
}

- (void)invalidate
{
  controller = [(AKProximityPiggybackEngine *)self controller];
  [(AKProximityEngineController *)controller proximityEngineDidInvalidate:self];
  _objc_release(controller);
}

- (AKProximityEngineController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end