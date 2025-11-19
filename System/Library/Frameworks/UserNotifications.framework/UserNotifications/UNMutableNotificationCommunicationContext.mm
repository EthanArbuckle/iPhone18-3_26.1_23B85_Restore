@interface UNMutableNotificationCommunicationContext
@end

@implementation UNMutableNotificationCommunicationContext

intptr_t __101___UNMutableNotificationCommunicationContext_UserNotifications_INIntent__mutableContextFromINIntent___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [a2 _identifier];
  v5 = [v3 URLWithString:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);

  return dispatch_semaphore_signal(v8);
}

@end