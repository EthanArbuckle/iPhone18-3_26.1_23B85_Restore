@interface RAPNotification
+ (BOOL)deleteNotificationWithID:(id)a3 error:(id *)a4;
+ (BOOL)shouldDeleteNotificationWithID:(id)a3;
+ (id)generateNotificationID;
+ (id)notificationCachePath;
@end

@implementation RAPNotification

+ (BOOL)deleteNotificationWithID:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([a1 isValidNotificationID:v6])
  {
    v7 = [a1 filenameForNotificationID:v6];
    v8 = +[RAPNotification notificationCachePath];
    v9 = [v8 stringByAppendingPathComponent:v7];

    if (v9)
    {
      v10 = +[NSFileManager defaultManager];
      v11 = [v10 removeItemAtPath:v9 error:a4];
    }

    else
    {
      if (!a4)
      {
        v11 = 0;
        goto LABEL_9;
      }

      v10 = [a1 errorDomain];
      [NSError errorWithDomain:v10 code:-1 userInfo:0];
      *a4 = v11 = 0;
    }

LABEL_9:
    goto LABEL_10;
  }

  if (!a4)
  {
    v11 = 0;
    goto LABEL_11;
  }

  v7 = [a1 errorDomain];
  [NSError errorWithDomain:v7 code:-2 userInfo:0];
  *a4 = v11 = 0;
LABEL_10:

LABEL_11:
  return v11;
}

+ (BOOL)shouldDeleteNotificationWithID:(id)a3
{
  v4 = a3;
  if ([a1 isValidNotificationID:v4])
  {
    v5 = [RAPNotification filenameForNotificationID:v4];
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

    v7 = 0;
    if (v6)
    {
      v7 = [v4 path];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)generateNotificationID
{
  v2 = +[NSUUID UUID];
  v3 = [v2 UUIDString];

  return v3;
}

@end