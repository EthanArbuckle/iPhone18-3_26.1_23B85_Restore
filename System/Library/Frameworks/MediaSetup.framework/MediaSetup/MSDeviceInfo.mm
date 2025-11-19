@interface MSDeviceInfo
+ (BOOL)deviceCanManageMultiUser;
+ (BOOL)deviceSupportsMultipleUsers;
@end

@implementation MSDeviceInfo

+ (BOOL)deviceSupportsMultipleUsers
{
  if ([objc_opt_class() isDeviceAppleTV])
  {
    return 1;
  }

  v3 = objc_opt_class();

  return [v3 isDeviceAudioAccessory];
}

+ (BOOL)deviceCanManageMultiUser
{
  if ([objc_opt_class() deviceSupportsMultipleUsers] & 1) != 0 || (objc_msgSend(objc_opt_class(), "isDeviceiPhone"))
  {
    return 1;
  }

  v3 = objc_opt_class();

  return [v3 isDeviceiPad];
}

@end