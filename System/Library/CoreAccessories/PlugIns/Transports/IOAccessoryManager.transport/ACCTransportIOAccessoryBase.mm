@interface ACCTransportIOAccessoryBase
- (BOOL)transmitData:(id)data;
- (void)dealloc;
- (void)transportClassTerminated;
@end

@implementation ACCTransportIOAccessoryBase

- (void)dealloc
{
  ioNotificationPort = self->_ioNotificationPort;
  if (ioNotificationPort)
  {
    IONotificationPortDestroy(ioNotificationPort);
    self->_ioNotificationPort = 0;
  }

  self->_primaryPortNumber = -1;
  ioConnect = self->_ioConnect;
  if (ioConnect)
  {
    IOServiceClose(ioConnect);
  }

  ioNotificationObject = self->_ioNotificationObject;
  if (ioNotificationObject)
  {
    IOObjectRelease(ioNotificationObject);
    self->_ioNotificationObject = 0;
  }

  IOObjectRelease(self->_ioService);
  upstreamManagerService = self->_upstreamManagerService;
  if (upstreamManagerService)
  {
    IOObjectRelease(upstreamManagerService);
  }

  notificationPortQueue = self->_notificationPortQueue;
  self->_notificationPortQueue = 0;

  v8.receiver = self;
  v8.super_class = ACCTransportIOAccessoryBase;
  [(ACCTransportIOAccessoryBase *)&v8 dealloc];
}

- (void)transportClassTerminated
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  ioNotificationPort = obj->_ioNotificationPort;
  if (ioNotificationPort)
  {
    IONotificationPortDestroy(ioNotificationPort);
    v2 = obj;
    obj->_ioNotificationPort = 0;
  }

  ioNotificationObject = v2->_ioNotificationObject;
  if (ioNotificationObject)
  {
    IOObjectRelease(ioNotificationObject);
    v2 = obj;
    obj->_ioNotificationObject = 0;
  }

  objc_sync_exit(v2);
}

- (BOOL)transmitData:(id)data
{
  dataCopy = data;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 1;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportIOAccessoryBase initWithIOAccessoryClass:ioService:];
    }

    v6 = MEMORY[0x277D86220];
    v5 = MEMORY[0x277D86220];
  }

  else
  {
    v6 = *gLogObjects;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [ACCTransportIOAccessoryBase transmitData:];
  }

  return 0;
}

- (void)initWithIOAccessoryClass:ioService:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithIOAccessoryClass:(int *)a1 ioService:.cold.3(int *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 8u);
  v6 = *MEMORY[0x277D85DE8];
}

@end