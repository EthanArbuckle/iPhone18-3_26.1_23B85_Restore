@interface CLSDarwinNotificationCenter
+ (id)defaultCenter;
- (CLSDarwinNotificationCenter)init;
- (void)addObserver:(id)a3 notificationName:(id)a4 block:(id)a5;
- (void)handleObserverRemoval;
- (void)postLocalNotificationName:(id)a3;
- (void)postNotificationName:(id)a3;
- (void)removeObserver:(id)a3 notificationName:(id)a4;
- (void)unregisterFromDarwinNotification:(id)a3;
@end

@implementation CLSDarwinNotificationCenter

+ (id)defaultCenter
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FA1308;
  block[3] = &unk_278A17960;
  block[4] = a1;
  if (qword_280B2A300 != -1)
  {
    dispatch_once(&qword_280B2A300, block);
  }

  v2 = qword_280B2A308;

  return v2;
}

- (CLSDarwinNotificationCenter)init
{
  v24.receiver = self;
  v24.super_class = CLSDarwinNotificationCenter;
  v2 = [(CLSDarwinNotificationCenter *)&v24 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);

    v5 = dispatch_queue_create("CLSDarwinNotificationCenterQ", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v9 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v7, v8);
    notificationsByName = v2->_notificationsByName;
    v2->_notificationsByName = v9;

    v13 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x277CCAB00], v11, v12);
    notificationsByObserver = v2->_notificationsByObserver;
    v2->_notificationsByObserver = v13;

    v17 = objc_msgSend_strongToStrongObjectsMapTable(MEMORY[0x277CCAB00], v15, v16);
    tokenByName = v2->_tokenByName;
    v2->_tokenByName = v17;

    v21 = objc_msgSend_strongToWeakObjectsMapTable(MEMORY[0x277CCAB00], v19, v20);
    observerByHash = v2->_observerByHash;
    v2->_observerByHash = v21;
  }

  return v2;
}

- (void)unregisterFromDarwinNotification:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6 = objc_msgSend_objectForKey_(self->_tokenByName, v5, v4);
  v9 = v6;
  if (v6)
  {
    v10 = objc_msgSend_intValue(v6, v7, v8);
    if (notify_is_valid_token(v10))
    {
      v12 = notify_cancel(v10);
      if (qword_280B2A720 != -1)
      {
        dispatch_once(&qword_280B2A720, &unk_284A07B28);
      }

      v13 = CLSLogNotifications;
      if (v12)
      {
        if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_ERROR))
        {
          v15 = 138412546;
          v16 = v4;
          v17 = 1024;
          v18 = v12;
        }
      }

      else if (os_log_type_enabled(CLSLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138412290;
        v16 = v4;
      }
    }

    objc_msgSend_removeObjectForKey_(self->_tokenByName, v11, v4);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)handleObserverRemoval
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FA163C;
  block[3] = &unk_278A18210;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)addObserver:(id)a3 notificationName:(id)a4 block:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    __assert_rtn("[CLSDarwinNotificationCenter addObserver:notificationName:block:]", "CLSDarwinNotificationCenter.m", 161, "observer != nil");
  }

  if (!v9)
  {
    __assert_rtn("[CLSDarwinNotificationCenter addObserver:notificationName:block:]", "CLSDarwinNotificationCenter.m", 162, "name != nil");
  }

  if (!v10)
  {
    __assert_rtn("[CLSDarwinNotificationCenter addObserver:notificationName:block:]", "CLSDarwinNotificationCenter.m", 163, "block != nil");
  }

  queue = self->_queue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_236FA1978;
  v15[3] = &unk_278A18358;
  v15[4] = self;
  v16 = v9;
  v17 = v8;
  v18 = v10;
  v12 = v10;
  v13 = v8;
  v14 = v9;
  dispatch_async(queue, v15);
}

- (void)postNotificationName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_236FA1FE0;
    block[3] = &unk_278A18210;
    v8 = v4;
    dispatch_async(queue, block);
  }
}

- (void)postLocalNotificationName:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_236FA21CC;
    v7[3] = &unk_278A18380;
    v7[4] = self;
    v8 = v4;
    dispatch_async(queue, v7);
  }
}

- (void)removeObserver:(id)a3 notificationName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[CLSDarwinNotificationCenter removeObserver:notificationName:]", "CLSDarwinNotificationCenter.m", 269, "observer != nil");
  }

  v10 = v7;
  v11 = objc_msgSend_hash(v6, v8, v9);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_236FA24B4;
  block[3] = &unk_278A181A0;
  v15 = v10;
  v16 = v11;
  block[4] = self;
  v13 = v10;
  dispatch_async(queue, block);
}

@end