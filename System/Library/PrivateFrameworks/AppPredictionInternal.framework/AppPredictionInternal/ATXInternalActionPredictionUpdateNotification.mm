@interface ATXInternalActionPredictionUpdateNotification
+ (void)postNotificationWithCacheRefreshTTL:(double)l reason:(unint64_t)reason;
- (ATXInternalActionPredictionUpdateNotification)init;
- (void)registerForNotificationsWithUpdateBlock:(id)block;
@end

@implementation ATXInternalActionPredictionUpdateNotification

- (ATXInternalActionPredictionUpdateNotification)init
{
  v6.receiver = self;
  v6.super_class = ATXInternalActionPredictionUpdateNotification;
  v2 = [(ATXInternalActionPredictionUpdateNotification *)&v6 init];
  if (v2)
  {
    v3 = [[_ATXInternalNotification alloc] initWithNotificationName:@"com.apple.duetexpertd._ATXInternalInstallNotification.ActionPredictionUpdateCache"];
    note = v2->_note;
    v2->_note = v3;
  }

  return v2;
}

- (void)registerForNotificationsWithUpdateBlock:(id)block
{
  blockCopy = block;
  note = self->_note;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__ATXInternalActionPredictionUpdateNotification_registerForNotificationsWithUpdateBlock___block_invoke;
  v7[3] = &unk_27859AE80;
  v8 = blockCopy;
  v6 = blockCopy;
  [(_ATXInternalNotification *)note registerForNotifications:v7];
}

void __89__ATXInternalActionPredictionUpdateNotification_registerForNotificationsWithUpdateBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 objectForKeyedSubscript:@"ttl"];
  v4 = [v3 objectForKeyedSubscript:@"reason"];

  v5 = *(a1 + 32);
  [v7 doubleValue];
  (*(v5 + 16))(v5, [v4 unsignedIntegerValue], v6);
}

+ (void)postNotificationWithCacheRefreshTTL:(double)l reason:(unint64_t)reason
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"ttl";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:l];
  v9[1] = @"reason";
  v10[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  [_ATXInternalNotification postData:v7 forNotificationNamed:@"com.apple.duetexpertd._ATXInternalInstallNotification.ActionPredictionUpdateCache"];

  v8 = *MEMORY[0x277D85DE8];
}

@end