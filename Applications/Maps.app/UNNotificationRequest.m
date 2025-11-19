@interface UNNotificationRequest
- (BOOL)shouldShowIfAppInForeground;
- (NSNumber)announcementDestinations;
- (NSNumber)announcementId;
- (NSNumber)announcementType;
- (id)contextValueForKey:(id)a3;
- (int64_t)type;
@end

@implementation UNNotificationRequest

- (BOOL)shouldShowIfAppInForeground
{
  v3 = [(UNNotificationRequest *)self type];
  result = 0;
  if (v3 != 1)
  {
    if (v3 != 3)
    {
      return 1;
    }

    v4 = [(UNNotificationRequest *)self announcementDestinations];
    v5 = [v4 integerValue];

    if ((v5 & 2) == 0)
    {
      return 1;
    }
  }

  return result;
}

- (NSNumber)announcementDestinations
{
  v2 = [(UNNotificationRequest *)self contextValueForKey:@"AnnouncementDestinations"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &off_1016E6D58;
  }

  v5 = v4;

  return v4;
}

- (NSNumber)announcementType
{
  v2 = [(UNNotificationRequest *)self contextValueForKey:@"AnnouncementType"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &off_1016E6D70;
  }

  v5 = v4;

  return v4;
}

- (NSNumber)announcementId
{
  v2 = [(UNNotificationRequest *)self contextValueForKey:@"AnnouncementID"];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &off_1016E6D58;
  }

  v5 = v4;

  return v4;
}

- (int64_t)type
{
  v2 = [(UNNotificationRequest *)self content];
  v3 = [v2 userInfo];

  if (v3)
  {
    v4 = [v3 objectForKeyedSubscript:@"MapsNotificationType"];
    v5 = [v4 unsignedIntValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)contextValueForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UNNotificationRequest *)self content];
    v6 = [v5 userInfo];

    if (v6)
    {
      v7 = [(UNNotificationRequest *)self content];
      v8 = [v7 userInfo];
      v9 = [v8 objectForKeyedSubscript:v4];

      goto LABEL_10;
    }

    v10 = sub_10079857C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = v4;
      v11 = "Request userInfo empty - no value for key %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_DEBUG;
      v14 = 12;
      goto LABEL_8;
    }
  }

  else
  {
    v10 = sub_10079857C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      v11 = "Requested userInfo for nil key";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 2;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v12, v13, v11, &v16, v14);
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

@end