@interface ASDTIOServiceMatcher
+ (id)forIOServiceWithClassName:(id)a3 withDelegate:(id)a4;
- (ASDTIOServiceMatchDelegate)delegate;
- (id)initForIOServiceWithClassName:(id)a3 withDelegate:(id)a4;
- (unsigned)addMatchingNotificationForType:(char)a3[128] callback:(void *)a4;
- (void)dealloc;
@end

@implementation ASDTIOServiceMatcher

+ (id)forIOServiceWithClassName:(id)a3 withDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] initForIOServiceWithClassName:v6 withDelegate:v7];

  return v8;
}

- (id)initForIOServiceWithClassName:(id)a3 withDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    v9 = [v7 isEqualToString:&stru_28534DD28];
    v10 = v8 ? v9 : 1;
    if ((v10 & 1) == 0)
    {
      v27.receiver = self;
      v27.super_class = ASDTIOServiceMatcher;
      v13 = [(ASDTIOServiceMatcher *)&v27 init];
      v12 = v13;
      if (v13)
      {
        objc_storeStrong(&v13->_ioServiceClassName, a3);
        v14 = [v7 cStringUsingEncoding:1];
        v12->_ioServiceClassNameCStr = v14;
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.AudioServerDriverTransports.ASDTIOServiceMatcher.%s", v14];
        v16 = [v15 cStringUsingEncoding:1];
        v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v18 = dispatch_queue_attr_make_with_qos_class(v17, QOS_CLASS_USER_INTERACTIVE, 0);

        v19 = dispatch_queue_create(v16, v18);
        matcherQueue = v12->_matcherQueue;
        v12->_matcherQueue = v19;

        objc_storeWeak(&v12->_delegate, v8);
        mainPort = 0;
        if (MEMORY[0x245CEC490](*MEMORY[0x277D85F18], &mainPort))
        {
          v21 = ASDTBaseLogType();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [ASDTIOServiceMatcher initForIOServiceWithClassName:withDelegate:];
          }

LABEL_11:

LABEL_12:
LABEL_13:
          v11 = 0;
          goto LABEL_19;
        }

        v22 = IONotificationPortCreate(mainPort);
        v12->_notificationPort = v22;
        if (!v22)
        {
          v21 = ASDTBaseLogType();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [ASDTIOServiceMatcher initForIOServiceWithClassName:withDelegate:];
          }

          goto LABEL_11;
        }

        IONotificationPortSetDispatchQueue(v22, v12->_matcherQueue);
        if (objc_opt_respondsToSelector())
        {
          v23 = [(ASDTIOServiceMatcher *)v12 addMatchingNotificationForType:"IOServiceWillTerminate" callback:ASDTIOSerivceWillTerminateHandler];
          v12->_willTerminateNotification = v23;
          if (!v23)
          {
            goto LABEL_12;
          }
        }

        v24 = [(ASDTIOServiceMatcher *)v12 addMatchingNotificationForType:"IOServiceFirstPublish" callback:ASDTIOServiceMatchingHandler];
        v12->_matchingNotification = v24;

        if (!v24)
        {
          goto LABEL_13;
        }
      }

      v12 = v12;
      v11 = v12;
      goto LABEL_19;
    }
  }

  v11 = 0;
  v12 = self;
LABEL_19:

  return v11;
}

- (void)dealloc
{
  matchingNotification = self->_matchingNotification;
  if (matchingNotification)
  {
    IOObjectRelease(matchingNotification);
  }

  willTerminateNotification = self->_willTerminateNotification;
  if (willTerminateNotification)
  {
    IOObjectRelease(willTerminateNotification);
  }

  notificationPort = self->_notificationPort;
  if (notificationPort)
  {
    IONotificationPortDestroy(notificationPort);
  }

  v6.receiver = self;
  v6.super_class = ASDTIOServiceMatcher;
  [(ASDTIOServiceMatcher *)&v6 dealloc];
}

- (unsigned)addMatchingNotificationForType:(char)a3[128] callback:(void *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = IOServiceMatching([(ASDTIOServiceMatcher *)self ioServiceClassNameCStr]);
  notification = 0;
  if (IOServiceAddMatchingNotification(self->_notificationPort, a3, v7, a4, self, &notification))
  {
    v8 = 1;
  }

  else
  {
    v8 = notification == 0;
  }

  if (v8)
  {
    v9 = ASDTBaseLogType();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [(ASDTIOServiceMatcher *)self ioServiceClassName];
      [(ASDTIOServiceMatcher *)v10 addMatchingNotificationForType:a3 callback:buf, v9];
    }

    IONotificationPortDestroy(self->_notificationPort);
    result = 0;
    self->_notificationPort = 0;
  }

  else
  {
    v11 = [(ASDTIOServiceMatcher *)self matcherQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__ASDTIOServiceMatcher_addMatchingNotificationForType_callback___block_invoke;
    block[3] = &unk_278CE6610;
    block[4] = self;
    block[5] = a4;
    v15 = notification;
    dispatch_sync(v11, block);

    result = notification;
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (ASDTIOServiceMatchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initForIOServiceWithClassName:withDelegate:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_12();
  _os_log_error_impl(&dword_241659000, v0, OS_LOG_TYPE_ERROR, "%s.%@: IOMainPort failed.", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)initForIOServiceWithClassName:withDelegate:.cold.2()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0_12();
  _os_log_error_impl(&dword_241659000, v0, OS_LOG_TYPE_ERROR, "%s.%@: IONotificationPortCreate failed.", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)addMatchingNotificationForType:(uint8_t *)buf callback:(os_log_t)log .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "ASDTIOServiceMatcher";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  *(buf + 11) = 2080;
  *(buf + 3) = a2;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "%s.%@: IOServiceAddMatchingNotification(%s) failed.", buf, 0x20u);
}

@end