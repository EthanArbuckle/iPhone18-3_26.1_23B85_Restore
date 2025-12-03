@interface TouchSensitiveButtonHIDServicePlugin
+ (BOOL)matchService:(unsigned int)service options:(id)options score:(int64_t *)score;
- (BOOL)createUserDevice;
- (BOOL)setProperty:(id)property forKey:(id)key client:(id)client;
- (TouchSensitiveButtonHIDServicePlugin)initWithService:(unsigned int)service;
- (id)eventMatching:(id)matching forClient:(id)client;
- (id)propertyForKey:(id)key client:(id)client;
- (void)activate;
- (void)cancel;
- (void)dealloc;
- (void)setCancelHandler:(id)handler;
- (void)setDispatchQueue:(id)queue;
- (void)setEventDispatcher:(id)dispatcher;
@end

@implementation TouchSensitiveButtonHIDServicePlugin

+ (BOOL)matchService:(unsigned int)service options:(id)options score:(int64_t *)score
{
  optionsCopy = options;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "matched", v18, 2u);
  }

  v8 = IOObjectConformsTo(service, "IOHIDDevice");
  if (v8)
  {
    *score = 500;
  }

  else
  {
    v9 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      [(TouchSensitiveButtonHIDServicePlugin *)v9 matchService:v10 options:v11 score:v12, v13, v14, v15, v16];
    }
  }

  return v8 != 0;
}

- (TouchSensitiveButtonHIDServicePlugin)initWithService:(unsigned int)service
{
  v42.receiver = self;
  v42.super_class = TouchSensitiveButtonHIDServicePlugin;
  v5 = [(TouchSensitiveButtonHIDServicePlugin *)&v42 init];
  if (!v5)
  {
    goto LABEL_13;
  }

  NumberProperty = TouchSensitiveButtonGetNumberProperty(service, @"PrimaryUsagePage");
  v7 = TouchSensitiveButtonGetNumberProperty(service, @"PrimaryUsage");
  if (!NumberProperty || (v8 = v7, !v7))
  {
    log = v5->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(TouchSensitiveButtonHIDServicePlugin *)log initWithService:v22, v23, v24, v25, v26, v27, v28];
    }

    goto LABEL_13;
  }

  v9 = MTLoggingTouchSensitiveButtonHIDService();
  v10 = v5->_log;
  v5->_log = v9;

  v11 = v5->_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = NSStringFromSelector(a2);
    *buf = 138543362;
    v44 = v13;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
  }

  v14 = IOHIDDeviceCreate(kCFAllocatorDefault, service);
  if (!v14)
  {
    v29 = v5->_log;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      [(TouchSensitiveButtonHIDServicePlugin *)v29 initWithService:v30, v31, v32, v33, v34, v35, v36];
    }

    goto LABEL_13;
  }

  hidDevice = v5->_hidDevice;
  v5->_hidDevice = v14;

  if (![(TouchSensitiveButtonHIDServicePlugin *)v5 createUserDevice])
  {
LABEL_13:
    v20 = 0;
    goto LABEL_14;
  }

  objc_initWeak(buf, v5);
  v16 = [TouchSensitiveButtonHIDService alloc];
  v17 = v5->_log;
  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = __56__TouchSensitiveButtonHIDServicePlugin_initWithService___block_invoke;
  v40[3] = &unk_82A0;
  objc_copyWeak(&v41, buf);
  v18 = [(TouchSensitiveButtonHIDService *)v16 initWithLog:v17 usagePage:NumberProperty usage:v8 streamCallback:v40];
  hidService = v5->_hidService;
  v5->_hidService = v18;

  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = __56__TouchSensitiveButtonHIDServicePlugin_initWithService___block_invoke_11;
  v38[3] = &unk_82C8;
  objc_copyWeak(&v39, buf);
  [(TouchSensitiveButtonHIDService *)v5->_hidService setConfigurationCallback:v38];
  v5->_service = service;
  IOObjectRetain(service);
  v20 = v5;
  objc_destroyWeak(&v39);
  objc_destroyWeak(&v41);
  objc_destroyWeak(buf);
LABEL_14:

  return v20;
}

void __56__TouchSensitiveButtonHIDServicePlugin_initWithService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained[3];
  if (v5)
  {
    v9 = 0;
    v6 = [v5 handleReport:v3 error:&v9];
    v7 = v9;
    if ((v6 & 1) == 0)
    {
      v8 = WeakRetained[4];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __56__TouchSensitiveButtonHIDServicePlugin_initWithService___block_invoke_cold_1(v8);
      }
    }
  }
}

id __56__TouchSensitiveButtonHIDServicePlugin_initWithService___block_invoke_11(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = *(WeakRetained + 2);
  v9 = *a2;
  v14 = 0;
  v10 = [v8 setReport:a2 reportLength:a3 withIdentifier:v9 forType:a4 error:&v14];
  v11 = v14;
  if ((v10 & 1) == 0)
  {
    v12 = *(WeakRetained + 4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __56__TouchSensitiveButtonHIDServicePlugin_initWithService___block_invoke_11_cold_1(v12);
    }
  }

  return v10;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = OUTLINED_FUNCTION_2();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(v5, v6, v7, v8, v9);
}

- (BOOL)createUserDevice
{
  if (!MGGetBoolAnswer())
  {
    return 1;
  }

  v24[0] = xmmword_4AD0;
  v24[1] = xmmword_4AE0;
  v25 = -64;
  v3 = [NSData dataWithBytes:v24 length:33];
  v4 = [HIDUserDevice alloc];
  v22 = @"ReportDescriptor";
  v23 = v3;
  v5 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v6 = [v4 initWithProperties:v5];
  userDevice = self->_userDevice;
  self->_userDevice = v6;

  v8 = self->_userDevice;
  v9 = v8 != 0;
  if (v8)
  {
    objc_initWeak(&location, self);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __56__TouchSensitiveButtonHIDServicePlugin_createUserDevice__block_invoke;
    v19[3] = &unk_82F0;
    objc_copyWeak(&v20, &location);
    [(HIDUserDevice *)self->_userDevice setSetReportHandler:v19];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      [(TouchSensitiveButtonHIDServicePlugin *)log createUserDevice:v11];
    }
  }

  return v9;
}

uint64_t __56__TouchSensitiveButtonHIDServicePlugin_createUserDevice__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = [NSData dataWithBytesNoCopy:a4 length:a5 freeWhenDone:0];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[5] parseInputReport:v6];

  return 0;
}

- (id)propertyForKey:(id)key client:(id)client
{
  keyCopy = key;
  CFProperty = [(TouchSensitiveButtonHIDService *)self->_hidService propertyForKey:keyCopy];
  if (!CFProperty)
  {
    CFProperty = IORegistryEntryCreateCFProperty(self->_service, keyCopy, 0, 0);
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [TouchSensitiveButtonHIDServicePlugin propertyForKey:client:];
  }

  return CFProperty;
}

- (BOOL)setProperty:(id)property forKey:(id)key client:(id)client
{
  propertyCopy = property;
  keyCopy = key;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_DEBUG))
  {
    [TouchSensitiveButtonHIDServicePlugin setProperty:forKey:client:];
  }

  v9 = [(TouchSensitiveButtonHIDService *)self->_hidService setProperty:propertyCopy forKey:keyCopy];

  return v9;
}

- (id)eventMatching:(id)matching forClient:(id)client
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [TouchSensitiveButtonHIDServicePlugin eventMatching:? forClient:?];
  }

  return 0;
}

- (void)setEventDispatcher:(id)dispatcher
{
  dispatcherCopy = dispatcher;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [TouchSensitiveButtonHIDServicePlugin eventMatching:? forClient:?];
  }

  [(TouchSensitiveButtonHIDService *)self->_hidService setEventDispatcher:dispatcherCopy];
}

- (void)setCancelHandler:(id)handler
{
  handlerCopy = handler;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [TouchSensitiveButtonHIDServicePlugin eventMatching:? forClient:?];
  }

  [(HIDDevice *)self->_hidDevice setCancelHandler:handlerCopy];
  [(HIDUserDevice *)self->_userDevice setCancelHandler:handlerCopy];
}

- (void)activate
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [TouchSensitiveButtonHIDServicePlugin eventMatching:? forClient:?];
  }

  [(HIDDevice *)self->_hidDevice activate];
  [(HIDUserDevice *)self->_userDevice activate];
}

- (void)cancel
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [TouchSensitiveButtonHIDServicePlugin eventMatching:? forClient:?];
  }

  [(HIDDevice *)self->_hidDevice cancel];
  [(HIDUserDevice *)self->_userDevice cancel];
}

- (void)setDispatchQueue:(id)queue
{
  queueCopy = queue;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [TouchSensitiveButtonHIDServicePlugin eventMatching:? forClient:?];
  }

  v6 = self->_log;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    selfCopy = self;
    v22 = 2048;
    v23 = queueCopy;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%p: service dispatch queue: %p", buf, 0x16u);
  }

  [(HIDDevice *)self->_hidDevice setDispatchQueue:queueCopy];
  [(HIDUserDevice *)self->_userDevice setDispatchQueue:queueCopy];
  [(TouchSensitiveButtonHIDService *)self->_hidService setDispatchQueue:queueCopy];
  hidDevice = self->_hidDevice;
  v19 = 0;
  v8 = [(HIDDevice *)hidDevice openWithOptions:0 error:&v19];
  v9 = v19;
  if (v8)
  {
    IOHIDDeviceSetProperty(self->_hidDevice, @"ReportBufferEntrySize", &off_8728);
    IOHIDDeviceSetProperty(self->_hidDevice, @"MaxReportBufferCount", &off_8710);
    v10 = self->_hidService;
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = __57__TouchSensitiveButtonHIDServicePlugin_setDispatchQueue___block_invoke;
    v17 = &unk_8318;
    v18 = v10;
    v11 = self->_hidDevice;
    v12 = v10;
    [(HIDDevice *)v11 setInputReportHandler:&v14];
    [(TouchSensitiveButtonHIDService *)self->_hidService reset:v14];
  }

  else
  {
    v13 = self->_log;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [TouchSensitiveButtonHIDServicePlugin setDispatchQueue:v13];
    }

    [(HIDDevice *)self->_hidDevice cancel];
    v12 = self->_hidDevice;
    self->_hidDevice = 0;
  }
}

void __56__TouchSensitiveButtonHIDServicePlugin_initWithService___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(v4, v5, v6, v7, v8);
}

void __56__TouchSensitiveButtonHIDServicePlugin_initWithService___block_invoke_11_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(v4, v5, v6, v7, v8);
}

- (void)eventMatching:(void *)a1 forClient:.cold.1(void *a1)
{
  v2 = a1;
  v3 = OUTLINED_FUNCTION_2();
  v4 = NSStringFromSelector(v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_0, v5, v6, "%{public}@", v7, v8, v9, v10, v11);
}

- (void)setDispatchQueue:(void *)a1 .cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_2() localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6(v4, v5, v6, v7, v8);
}

@end