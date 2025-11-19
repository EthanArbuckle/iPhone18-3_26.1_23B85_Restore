@interface ATXInternalInstallNotification
@end

@implementation ATXInternalInstallNotification

void __76___ATXInternalInstallNotification_registerForNotificationsWithInstallBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [_ATXInternalInstallNotification _installedAppsWithDatesFromNotificationData:a2];
  (*(v2 + 16))(v2, v3);
}

@end