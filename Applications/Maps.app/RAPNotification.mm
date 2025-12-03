@interface RAPNotification
+ (BOOL)deleteNotificationWithID:(id)d error:(id *)error;
+ (BOOL)shouldDeleteNotificationWithID:(id)d;
+ (id)generateNotificationID;
+ (id)notificationCachePath;
@end

@implementation RAPNotification

+ (BOOL)deleteNotificationWithID:(id)d error:(id *)error
{
  dCopy = d;
  if ([self isValidNotificationID:dCopy])
  {
    errorDomain2 = [self filenameForNotificationID:dCopy];
    v8 = +[RAPNotification notificationCachePath];
    v9 = [v8 stringByAppendingPathComponent:errorDomain2];

    if (v9)
    {
      errorDomain = +[NSFileManager defaultManager];
      v11 = [errorDomain removeItemAtPath:v9 error:error];
    }

    else
    {
      if (!error)
      {
        v11 = 0;
        goto LABEL_9;
      }

      errorDomain = [self errorDomain];
      [NSError errorWithDomain:errorDomain code:-1 userInfo:0];
      *error = v11 = 0;
    }

LABEL_9:
    goto LABEL_10;
  }

  if (!error)
  {
    v11 = 0;
    goto LABEL_11;
  }

  errorDomain2 = [self errorDomain];
  [NSError errorWithDomain:errorDomain2 code:-2 userInfo:0];
  *error = v11 = 0;
LABEL_10:

LABEL_11:
  return v11;
}

+ (BOOL)shouldDeleteNotificationWithID:(id)d
{
  dCopy = d;
  if ([self isValidNotificationID:dCopy])
  {
    v5 = [RAPNotification filenameForNotificationID:dCopy];
    v6 = +[RAPNotification notificationCachePath];
    v7 = [v6 stringByAppendingPathComponent:v5];

    if (v7)
    {
      v8 = +[NSFileManager defaultManager];
      v9 = [v8 attributesOfItemAtPath:v7 error:0];

      if (v9)
      {
        v10 = [v9 objectForKeyedSubscript:NSFileCreationDate];
        if (v10)
        {
          v11 = +[NSDate date];
          [v11 timeIntervalSinceDate:v10];
          v13 = v12 > 63072000.0;
        }

        else
        {
          v13 = 1;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)notificationCachePath
{
  v2 = [NSFileManager alloc];
  v3 = [v2 containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.Maps"];

  if (v3)
  {
    v4 = [v3 URLByAppendingPathComponent:@"Library/Caches/"];
    v5 = +[NSFileManager defaultManager];
    v6 = [v5 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:0];

    path = 0;
    if (v6)
    {
      path = [v4 path];
    }
  }

  else
  {
    path = 0;
  }

  return path;
}

+ (id)generateNotificationID
{
  v2 = +[NSUUID UUID];
  uUIDString = [v2 UUIDString];

  return uUIDString;
}

@end