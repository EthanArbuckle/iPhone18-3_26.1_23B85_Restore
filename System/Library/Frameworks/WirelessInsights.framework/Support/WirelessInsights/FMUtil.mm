@interface FMUtil
+ (double)meanOfSample:(id)a3;
+ (double)probabilityOfNextPickInRange:(double)a3 aroundMean:(double)a4 ofSample:(id)a5;
+ (id)JSONStringFromArray:(id)a3;
+ (id)JSONStringFromDict:(id)a3;
+ (id)JSONStringFromObject:(id)a3;
+ (id)dateFromTimestamp:(unint64_t)a3 andCurrentTimestamp:(unint64_t)a4 andCurrentTime:(id)a5;
+ (int64_t)int64SHA256HashFor:(id)a3;
+ (signed)NSDate:(id)a3 toTimeOfDayInTimeZone:(id)a4;
+ (signed)getDayOfWeekFromDate:(id)a3;
+ (signed)getTimeOfDayFromDate:(id)a3;
+ (void)removeFirstElementsForCapacity:(unint64_t)a3 fromArray:(id)a4;
+ (void)setError:(id *)a3 code:(int64_t)a4 message:(id)a5;
+ (void)waitForDeviceUnlockAndRunBlock:(id)a3;
@end

@implementation FMUtil

+ (void)waitForDeviceUnlockAndRunBlock:(id)a3
{
  v3 = a3;
  v4 = dispatch_queue_create("com.apple.wirelessinsightsd.FederatedMobility.FMUtil.DeviceUnlock", 0);
  v5 = dispatch_semaphore_create(0);
  v8 = -1;
  out_token = -1;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10002A1D0;
  handler[3] = &unk_1002AB2F8;
  handler[4] = v5;
  notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v4, handler);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002A224;
  v6[3] = &unk_1002AB2F8;
  v6[4] = v5;
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v8, v4, v6);
  while ((v3[2](v3) & 1) == 0)
  {
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (out_token != -1)
  {
    notify_cancel(out_token);
  }

  if (v8 != -1)
  {
    notify_cancel(v8);
  }

  if (v4)
  {
    dispatch_release(v4);
  }

  if (v5)
  {
    dispatch_release(v5);
  }
}

+ (void)removeFirstElementsForCapacity:(unint64_t)a3 fromArray:(id)a4
{
  v5 = a4;
  if ([v5 count] > a3)
  {
    [v5 removeObjectsInRange:{0, objc_msgSend(v5, "count") - a3}];
  }
}

+ (double)meanOfSample:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    v6 = 0.0;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * i) doubleValue];
        v6 = v6 + v8;
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  v9 = [v3 count];
  return v6 / v9;
}

+ (double)probabilityOfNextPickInRange:(double)a3 aroundMean:(double)a4 ofSample:(id)a5
{
  v7 = a5;
  v8 = 0.0;
  if ([v7 count] >= 2)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        v12 = 0;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v19 + 1) + 8 * v12) doubleValue];
          v8 = v8 + (a4 - v13) * (a4 - v13);
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v14 = sqrt(v8 * (1.0 / ([v9 count] - 1)));
    [FMUtil pNormOf:a3 + a4 mean:a4 stdDev:v14];
    v16 = v15;
    [FMUtil pNormOf:a4 - a3 mean:a4 stdDev:v14];
    v8 = v16 - v17;
  }

  return v8;
}

+ (id)JSONStringFromArray:(id)a3
{
  v3 = [FMUtil JSONStringFromObject:a3];

  return v3;
}

+ (id)JSONStringFromDict:(id)a3
{
  v3 = [FMUtil JSONStringFromObject:a3];

  return v3;
}

+ (id)dateFromTimestamp:(unint64_t)a3 andCurrentTimestamp:(unint64_t)a4 andCurrentTime:(id)a5
{
  v7 = a5;
  v8 = a4 >= a3;
  v9 = a4 - a3;
  if (v8)
  {
    v10 = [[NSDate alloc] initWithTimeInterval:v7 sinceDate:v9 / -1000000000.0];
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_ERROR))
    {
      sub_1001FBBA8();
    }

    v10 = 0;
  }

  return v10;
}

+ (signed)getDayOfWeekFromDate:(id)a3
{
  v3 = a3;
  v4 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierISO8601];
  if (v4)
  {
    v5 = +[NSTimeZone localTimeZone];
    if (!v5)
    {
      if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
      {
        sub_1001FBC94();
      }

      LOWORD(v8) = -1;
      goto LABEL_17;
    }

    [v4 setTimeZone:v5];
    v6 = [v4 components:512 fromDate:v3];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 weekday];
      if (v8 < 0x8000)
      {
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v9 = *(qword_1002DBE98 + 136);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1001FBBE8(v8, v9);
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FBC60();
    }

    LOWORD(v8) = -1;
    goto LABEL_16;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FBCC8();
  }

  LOWORD(v8) = -1;
LABEL_18:

  return v8;
}

+ (signed)getTimeOfDayFromDate:(id)a3
{
  v3 = a3;
  v4 = +[NSTimeZone localTimeZone];
  if (v4)
  {
    v5 = [FMUtil NSDate:v3 toTimeOfDayInTimeZone:v4];
  }

  else
  {
    if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FBCFC();
    }

    v5 = -1;
  }

  return v5;
}

+ (signed)NSDate:(id)a3 toTimeOfDayInTimeZone:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierISO8601];
  v8 = v7;
  if (v7)
  {
    [v7 setTimeZone:v6];
    v9 = [v8 components:96 fromDate:v5];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 hour];
      v12 = [v10 minute] + 60 * v11;
      if (v12 < 0x8000)
      {
LABEL_12:

        goto LABEL_13;
      }

      v13 = *(qword_1002DBE98 + 136);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_1001FBD30(v12, v13);
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FBC60();
    }

    LOWORD(v12) = -1;
    goto LABEL_12;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FBCC8();
  }

  LOWORD(v12) = -1;
LABEL_13:

  return v12;
}

+ (int64_t)int64SHA256HashFor:(id)a3
{
  v3 = [a3 dataUsingEncoding:4];
  v4 = [NSMutableData dataWithLength:32];
  CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), objc_msgSend(v4, "mutableBytes"));
  v7 = 0;
  [v4 getBytes:&v7 length:8];
  v5 = v7;

  return v5;
}

+ (id)JSONStringFromObject:(id)a3
{
  v3 = a3;
  v11 = 0;
  v4 = [NSJSONSerialization dataWithJSONObject:v3 options:0 error:&v11];
  v5 = v11;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v9 = v5;
    v7 = *(qword_1002DBE98 + 136);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1001FBE5C(v3, v9, v7);
    }

    v8 = 0;
  }

  else
  {
    v8 = [[NSString alloc] initWithData:v4 encoding:4];
    v9 = 0;
  }

  return v8;
}

+ (void)setError:(id *)a3 code:(int64_t)a4 message:(id)a5
{
  v7 = a5;
  v9 = NSLocalizedDescriptionKey;
  v10 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  *a3 = [NSError errorWithDomain:@"FMUtil" code:a4 userInfo:v8];
}

@end