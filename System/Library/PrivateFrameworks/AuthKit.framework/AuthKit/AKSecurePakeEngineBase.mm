@interface AKSecurePakeEngineBase
- (AKSecurePakeEngineBase)initWithContext:(id)a3;
- (AKSecurePakeEngineController)controller;
- (void)dealloc;
- (void)prepareWithController:(id)a3 queue:(id)a4;
- (void)processMessage:(id)a3 completionHandler:(id)a4;
@end

@implementation AKSecurePakeEngineBase

- (AKSecurePakeEngineBase)initWithContext:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = AKSecurePakeEngineBase;
  v11 = [(AKSecurePakeEngineBase *)&v9 init];
  objc_storeStrong(&v11, v11);
  if (v11)
  {
    objc_storeStrong(&v11->_context, location[0]);
    v4 = &_dispatch_main_q;
    v5 = &_dispatch_main_q;
    queue = v11->_queue;
    v11->_queue = v5;
    _objc_release(queue);
  }

  v8 = _objc_retain(v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v8;
}

- (void)dealloc
{
  v5 = self;
  oslog[1] = a2;
  oslog[0] = _AKLogSystem();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEBUG))
  {
    sub_100069254(v6, "[AKSecurePakeEngineBase dealloc]", 44);
    _os_log_debug_impl(&_mh_execute_header, oslog[0], type, "%s (%d) called", v6, 0x12u);
  }

  objc_storeStrong(oslog, 0);
  v2.receiver = v5;
  v2.super_class = AKSecurePakeEngineBase;
  [(AKSecurePakeEngineBase *)&v2 dealloc];
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

- (void)processMessage:(id)a3 completionHandler:(id)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
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