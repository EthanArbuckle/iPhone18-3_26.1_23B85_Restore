@interface UNMutableNotificationSettings
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UNMutableNotificationSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UNNotificationSettings allocWithZone:a3];
  LOBYTE(v6) = self->super._providesAppNotificationSettings;
  return [(UNNotificationSettings *)v4 initWithAuthorizationStatus:self->super._authorizationStatus soundSetting:self->super._soundSetting badgeSetting:self->super._badgeSetting alertSetting:self->super._alertSetting notificationCenterSetting:self->super._notificationCenterSetting lockScreenSetting:self->super._lockScreenSetting carPlaySetting:self->super._carPlaySetting remoteNotificationsSetting:self->super._remoteNotificationsSetting announcementSetting:self->super._announcementSetting criticalAlertSetting:self->super._criticalAlertSetting timeSensitiveSetting:self->super._timeSensitiveSetting scheduledDeliverySetting:self->super._scheduledDeliverySetting directMessagesSetting:self->super._directMessagesSetting summarizationSetting:self->super._summarizationSetting prioritizationSetting:self->super._prioritizationSetting alertStyle:self->super._alertStyle showPreviewsSetting:self->super._showPreviewsSetting groupingSetting:self->super._groupingSetting providesAppNotificationSettings:v6];
}

@end