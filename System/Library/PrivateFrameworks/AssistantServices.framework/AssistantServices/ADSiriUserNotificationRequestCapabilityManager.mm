@interface ADSiriUserNotificationRequestCapabilityManager
+ (Class)_classForPlatform:(int64_t)platform;
@end

@implementation ADSiriUserNotificationRequestCapabilityManager

+ (Class)_classForPlatform:(int64_t)platform
{
  IsValid = AFSiriAnnouncementPlatformGetIsValid();
  if ((IsValid & 1) == 0)
  {
    v5 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
LABEL_7:
      IsValid = objc_opt_class();
      goto LABEL_8;
    }

LABEL_12:
    v7 = 136315394;
    v8 = "+[ADSiriUserNotificationRequestCapabilityManager _classForPlatform:]";
    v9 = 2048;
    platformCopy = platform;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s platform %li is not valid, using headphones provider.", &v7, 0x16u);
    goto LABEL_7;
  }

  if (platform <= 5)
  {
    if (((1 << platform) & 0x1A) != 0)
    {
      goto LABEL_7;
    }

    v5 = AFSiriLogContextConnection;
    if (!os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_8:

  return IsValid;
}

@end