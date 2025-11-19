@interface SHMatchResultUserNotificationPayload
+ (id)notificationFromLegacyUserInfoFormat:(id)a3;
+ (id)payloadFromNotificationContentUserInfo:(id)a3;
+ (id)userInfoPayloadForMediaItem:(id)a3 bundleIdentifier:(id)a4;
@end

@implementation SHMatchResultUserNotificationPayload

+ (id)payloadFromNotificationContentUserInfo:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"com.apple.ShazamNotifications.user-info.payload"];
  if (v4)
  {
    v11 = 0;
    v5 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v4 error:&v11];
    v6 = v11;
    if (v5)
    {
      v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"com.apple.ShazamNotifications.user-info.media-item"];
      v8 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"com.apple.ShazamNotifications.user-info.attribution"];
      v9 = objc_alloc_init(SHMatchResultUserNotificationPayload);
      [(SHMatchResultUserNotificationPayload *)v9 setMediaItem:v7];
      [(SHMatchResultUserNotificationPayload *)v9 setBundleIdentifier:v8];
    }

    else
    {
      v7 = sh_log_object();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = v4;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unable to unarchive notification payload data %@ with error %@", buf, 0x16u);
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = [objc_opt_class() notificationFromLegacyUserInfoFormat:v3];
  }

  return v9;
}

+ (id)userInfoPayloadForMediaItem:(id)a3 bundleIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
  [v7 encodeObject:v6 forKey:@"com.apple.ShazamNotifications.user-info.media-item"];

  [v7 encodeObject:v5 forKey:@"com.apple.ShazamNotifications.user-info.attribution"];
  v8 = [v7 encodedData];
  v11 = @"com.apple.ShazamNotifications.user-info.payload";
  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];

  return v9;
}

+ (id)notificationFromLegacyUserInfoFormat:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"com.apple.ShazamNotifications.user-info.apple-music"];
  objc_opt_class();
  v5 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && v4)
  {
    v6 = [NSURL URLWithString:v4];
    if (v6)
    {
      v7 = v6;
      v5 = objc_alloc_init(SHMatchResultUserNotificationPayload);
      v8 = [v3 objectForKeyedSubscript:@"com.apple.ShazamNotifications.user-info.attribution"];
      [(SHMatchResultUserNotificationPayload *)v5 setBundleIdentifier:v8];

      v12 = SHMediaItemAppleMusicURL;
      v13 = v7;
      v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      v10 = [SHMediaItem mediaItemWithProperties:v9];
      [(SHMatchResultUserNotificationPayload *)v5 setMediaItem:v10];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end