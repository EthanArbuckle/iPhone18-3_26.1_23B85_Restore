@interface ATXInternalActionPredictionUpdatedNotification
- (ATXInternalActionPredictionUpdatedNotification)init;
- (void)registerForNotificationsWithUpdateBlock:(id)block;
@end

@implementation ATXInternalActionPredictionUpdatedNotification

- (ATXInternalActionPredictionUpdatedNotification)init
{
  v6.receiver = self;
  v6.super_class = ATXInternalActionPredictionUpdatedNotification;
  v2 = [(ATXInternalActionPredictionUpdatedNotification *)&v6 init];
  if (v2)
  {
    v3 = [[_ATXInternalNotification alloc] initWithNotificationName:@"com.apple.duetexpertd._ATXInternalInstallNotification.ActionPredictionCacheUpdated"];
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
  v7[2] = __90__ATXInternalActionPredictionUpdatedNotification_registerForNotificationsWithUpdateBlock___block_invoke;
  v7[3] = &unk_27859ACB8;
  v8 = blockCopy;
  v6 = blockCopy;
  [(_ATXInternalNotification *)note registerForNotifications:v7];
}

@end