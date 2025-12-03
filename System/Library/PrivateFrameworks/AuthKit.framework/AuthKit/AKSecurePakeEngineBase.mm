@interface AKSecurePakeEngineBase
- (AKSecurePakeEngineBase)initWithContext:(id)context;
- (AKSecurePakeEngineController)controller;
- (void)dealloc;
- (void)prepareWithController:(id)controller queue:(id)queue;
- (void)processMessage:(id)message completionHandler:(id)handler;
@end

@implementation AKSecurePakeEngineBase

- (AKSecurePakeEngineBase)initWithContext:(id)context
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, context);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = AKSecurePakeEngineBase;
  selfCopy = [(AKSecurePakeEngineBase *)&v9 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_context, location[0]);
    v4 = &_dispatch_main_q;
    v5 = &_dispatch_main_q;
    queue = selfCopy->_queue;
    selfCopy->_queue = v5;
    _objc_release(queue);
  }

  v8 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)dealloc
{
  selfCopy = self;
  oslog[1] = a2;
  oslog[0] = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v6, "[AKSecurePakeEngineBase dealloc]", 44);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], type, "%s (%d) called", v6, 0x12u);
  }

  objc_storeStrong(oslog, 0);
  v2.receiver = selfCopy;
  v2.super_class = AKSecurePakeEngineBase;
  [(AKSecurePakeEngineBase *)&v2 dealloc];
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

- (void)processMessage:(id)message completionHandler:(id)handler
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, message);
  v7 = 0;
  objc_storeStrong(&v7, handler);
  exception = [NSException exceptionWithName:@"-processMessage:completionHandler: not implemented" reason:0 userInfo:?];
  v4 = exception;
  objc_exception_throw(exception);
}

- (AKSecurePakeEngineController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end