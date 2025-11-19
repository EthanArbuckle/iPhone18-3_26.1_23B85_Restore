@interface HMMutableCameraUserNotificationSettings
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableCameraUserNotificationSettings

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(HMCameraUserNotificationSettings);
  [(HMCameraUserNotificationSettings *)v4 setVersion:[(HMCameraUserNotificationSettings *)self version]];
  [(HMCameraUserNotificationSettings *)v4 setAccessModeChangeNotificationEnabled:[(HMCameraUserNotificationSettings *)self isAccessModeChangeNotificationEnabled]];
  [(HMCameraUserNotificationSettings *)v4 setReachabilityEventNotificationEnabled:[(HMCameraUserNotificationSettings *)self isReachabilityEventNotificationEnabled]];
  [(HMCameraUserNotificationSettings *)v4 setSmartBulletinBoardNotificationEnabled:[(HMCameraUserNotificationSettings *)self isSmartBulletinBoardNotificationEnabled]];
  v5 = [(HMCameraUserNotificationSettings *)self smartBulletinBoardNotificationCondition];
  [(HMCameraUserNotificationSettings *)v4 setSmartBulletinBoardNotificationCondition:v5];

  return v4;
}

@end