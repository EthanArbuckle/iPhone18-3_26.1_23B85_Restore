@interface KernelMsgSignalHandlerSDXC
- (id)init:(id)a3;
- (void)releaseHandler;
- (void)setupListener:(id)a3;
@end

@implementation KernelMsgSignalHandlerSDXC

- (id)init:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = KernelMsgSignalHandlerSDXC;
  v6 = [(KernelMsgSignalHandlerSDXC *)&v10 init];
  if (v6)
  {
    v7 = adminLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_DEBUG, " StorageKernelSignal: KernelMsgSignalHandler init ++ \n", v9, 2u);
    }

    objc_storeStrong(&adminABC, a3);
  }

  return v6;
}

- (void)setupListener:(id)a3
{
  queue = a3;
  v3 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
  gNotifyPort = v3;
  if (v3)
  {
    IONotificationPortSetDispatchQueue(v3, queue);
    v4 = gNotifyPort;
    v5 = IOServiceMatching("AppleSDXCSlot");
    LODWORD(v3) = IOServiceAddMatchingNotification(v4, "IOServiceFirstMatch", v5, ServiceMatched, 0, &iterator);
  }

  if (iterator)
  {
    ServiceMatched(v3, iterator);
  }
}

- (void)releaseHandler
{
  if (iterator)
  {
    IOObjectRelease(iterator);
    iterator = 0;
  }

  if (gNotifyPort)
  {
    IONotificationPortDestroy(gNotifyPort);
    gNotifyPort = 0;
    v2 = adminLogHandle();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_DEFAULT, "StorageKernelSignal: notification port destroyed\n", v4, 2u);
    }
  }

  v3 = adminABC;
  adminABC = 0;
}

@end