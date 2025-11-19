@interface ATXNotificationsDedupeTracker
+ (ATXNotificationsDedupeTracker)sharedInstance;
- (ATXNotificationsDedupeTracker)init;
- (BOOL)addNotificationId:(id)a3;
- (void)insertEvent:(int64_t)a3 notificationID:(id)a4;
@end

@implementation ATXNotificationsDedupeTracker

+ (ATXNotificationsDedupeTracker)sharedInstance
{
  if (sharedInstance_onceToken_14 != -1)
  {
    +[ATXNotificationsDedupeTracker sharedInstance];
  }

  v3 = sharedInstance_instance_5;

  return v3;
}

uint64_t __47__ATXNotificationsDedupeTracker_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_instance_5;
  sharedInstance_instance_5 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (ATXNotificationsDedupeTracker)init
{
  v12.receiver = self;
  v12.super_class = ATXNotificationsDedupeTracker;
  v2 = [(ATXNotificationsDedupeTracker *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(v5, v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = objc_opt_new();
    recordsTable = v2->_recordsTable;
    v2->_recordsTable = v9;
  }

  return v2;
}

- (BOOL)addNotificationId:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__ATXNotificationsDedupeTracker_addNotificationId___block_invoke;
  block[3] = &unk_2785987E0;
  v9 = v4;
  v10 = self;
  v11 = &v12;
  v6 = v4;
  dispatch_sync(queue, block);
  LOBYTE(queue) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return queue;
}

uint64_t __51__ATXNotificationsDedupeTracker_addNotificationId___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) length];
  if (result)
  {
    result = [*(*(a1 + 40) + 16) containsObject:*(a1 + 32)];
    if ((result & 1) == 0)
    {
      result = [*(*(a1 + 40) + 16) addObject:*(a1 + 32)];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }
  }

  return result;
}

- (void)insertEvent:(int64_t)a3 notificationID:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__ATXNotificationsDedupeTracker_insertEvent_notificationID___block_invoke;
  block[3] = &unk_278599E28;
  v11 = self;
  v12 = a3;
  v10 = v6;
  v8 = v6;
  dispatch_async(queue, block);
}

void *__60__ATXNotificationsDedupeTracker_insertEvent_notificationID___block_invoke(void *result)
{
  v1 = result[6];
  v2 = v1 > 0xD;
  v3 = (1 << v1) & 0x202E;
  if (!v2 && v3 != 0)
  {
    if (result[4])
    {
      return [*(result[5] + 16) removeObject:?];
    }
  }

  return result;
}

@end