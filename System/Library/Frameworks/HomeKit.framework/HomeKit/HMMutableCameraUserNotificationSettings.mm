@interface HMMutableCameraUserNotificationSettings
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableCameraUserNotificationSettings

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(HMCameraUserNotificationSettings);
  [(HMCameraUserNotificationSettings *)v4 setVersion:[(HMCameraUserNotificationSettings *)self version]];
  [(HMCameraUserNotificationSettings *)v4 setAccessModeChangeNotificationEnabled:[(HMCameraUserNotificationSettings *)self isAccessModeChangeNotificationEnabled]];
  [(HMCameraUserNotificationSettings *)v4 setReachabilityEventNotificationEnabled:[(HMCameraUserNotificationSettings *)self isReachabilityEventNotificationEnabled]];
  [(HMCameraUserNotificationSettings *)v4 setSmartBulletinBoardNotificationEnabled:[(HMCameraUserNotificationSettings *)self isSmartBulletinBoardNotificationEnabled]];
  smartBulletinBoardNotificationCondition = [(HMCameraUserNotificationSettings *)self smartBulletinBoardNotificationCondition];
  [(HMCameraUserNotificationSettings *)v4 setSmartBulletinBoardNotificationCondition:smartBulletinBoardNotificationCondition];

  return v4;
}

@end