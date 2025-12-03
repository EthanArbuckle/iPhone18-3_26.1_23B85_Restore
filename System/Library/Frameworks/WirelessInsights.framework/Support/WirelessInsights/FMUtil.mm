@interface FMUtil
+ (double)meanOfSample:(id)sample;
+ (double)probabilityOfNextPickInRange:(double)range aroundMean:(double)mean ofSample:(id)sample;
+ (id)JSONStringFromArray:(id)array;
+ (id)JSONStringFromDict:(id)dict;
+ (id)JSONStringFromObject:(id)object;
+ (id)dateFromTimestamp:(unint64_t)timestamp andCurrentTimestamp:(unint64_t)currentTimestamp andCurrentTime:(id)time;
+ (int64_t)int64SHA256HashFor:(id)for;
+ (signed)NSDate:(id)date toTimeOfDayInTimeZone:(id)zone;
+ (signed)getDayOfWeekFromDate:(id)date;
+ (signed)getTimeOfDayFromDate:(id)date;
+ (void)removeFirstElementsForCapacity:(unint64_t)capacity fromArray:(id)array;
+ (void)setError:(id *)error code:(int64_t)code message:(id)message;
+ (void)waitForDeviceUnlockAndRunBlock:(id)block;
@end

@implementation FMUtil

+ (void)waitForDeviceUnlockAndRunBlock:(id)block
{
  blockCopy = block;
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
  while ((blockCopy[2](blockCopy) & 1) == 0)
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

+ (void)removeFirstElementsForCapacity:(unint64_t)capacity fromArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy count] > capacity)
  {
    [arrayCopy removeObjectsInRange:{0, objc_msgSend(arrayCopy, "count") - capacity}];
  }
}

+ (double)meanOfSample:(id)sample
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sampleCopy = sample;
  v4 = [sampleCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(sampleCopy);
        }

        [*(*(&v11 + 1) + 8 * i) doubleValue];
        v6 = v6 + v8;
      }

      v4 = [sampleCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 0.0;
  }

  v9 = [sampleCopy count];
  return v6 / v9;
}

+ (double)probabilityOfNextPickInRange:(double)range aroundMean:(double)mean ofSample:(id)sample
{
  sampleCopy = sample;
  v8 = 0.0;
  if ([sampleCopy count] >= 2)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = sampleCopy;
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
          v8 = v8 + (mean - v13) * (mean - v13);
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v14 = sqrt(v8 * (1.0 / ([v9 count] - 1)));
    [FMUtil pNormOf:range + mean mean:mean stdDev:v14];
    v16 = v15;
    [FMUtil pNormOf:mean - range mean:mean stdDev:v14];
    v8 = v16 - v17;
  }

  return v8;
}

+ (id)JSONStringFromArray:(id)array
{
  v3 = [FMUtil JSONStringFromObject:array];

  return v3;
}

+ (id)JSONStringFromDict:(id)dict
{
  v3 = [FMUtil JSONStringFromObject:dict];

  return v3;
}

+ (id)dateFromTimestamp:(unint64_t)timestamp andCurrentTimestamp:(unint64_t)currentTimestamp andCurrentTime:(id)time
{
  timeCopy = time;
  v8 = currentTimestamp >= timestamp;
  v9 = currentTimestamp - timestamp;
  if (v8)
  {
    v10 = [[NSDate alloc] initWithTimeInterval:timeCopy sinceDate:v9 / -1000000000.0];
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

+ (signed)getDayOfWeekFromDate:(id)date
{
  dateCopy = date;
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

      LOWORD(weekday) = -1;
      goto LABEL_17;
    }

    [v4 setTimeZone:v5];
    v6 = [v4 components:512 fromDate:dateCopy];
    v7 = v6;
    if (v6)
    {
      weekday = [v6 weekday];
      if (weekday < 0x8000)
      {
LABEL_16:

LABEL_17:
        goto LABEL_18;
      }

      v9 = *(qword_1002DBE98 + 136);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        sub_1001FBBE8(weekday, v9);
      }
    }

    else if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
    {
      sub_1001FBC60();
    }

    LOWORD(weekday) = -1;
    goto LABEL_16;
  }

  if (os_log_type_enabled(*(qword_1002DBE98 + 136), OS_LOG_TYPE_DEBUG))
  {
    sub_1001FBCC8();
  }

  LOWORD(weekday) = -1;
LABEL_18:

  return weekday;
}

+ (signed)getTimeOfDayFromDate:(id)date
{
  dateCopy = date;
  v4 = +[NSTimeZone localTimeZone];
  if (v4)
  {
    v5 = [FMUtil NSDate:dateCopy toTimeOfDayInTimeZone:v4];
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

+ (signed)NSDate:(id)date toTimeOfDayInTimeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  v7 = [NSCalendar calendarWithIdentifier:NSCalendarIdentifierISO8601];
  v8 = v7;
  if (v7)
  {
    [v7 setTimeZone:zoneCopy];
    v9 = [v8 components:96 fromDate:dateCopy];
    v10 = v9;
    if (v9)
    {
      hour = [v9 hour];
      v12 = [v10 minute] + 60 * hour;
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

+ (int64_t)int64SHA256HashFor:(id)for
{
  v3 = [for dataUsingEncoding:4];
  v4 = [NSMutableData dataWithLength:32];
  CC_SHA256([v3 bytes], objc_msgSend(v3, "length"), objc_msgSend(v4, "mutableBytes"));
  v7 = 0;
  [v4 getBytes:&v7 length:8];
  v5 = v7;

  return v5;
}

+ (id)JSONStringFromObject:(id)object
{
  objectCopy = object;
  v11 = 0;
  v4 = [NSJSONSerialization dataWithJSONObject:objectCopy options:0 error:&v11];
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
      sub_1001FBE5C(objectCopy, v9, v7);
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

+ (void)setError:(id *)error code:(int64_t)code message:(id)message
{
  messageCopy = message;
  v9 = NSLocalizedDescriptionKey;
  v10 = messageCopy;
  v8 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  *error = [NSError errorWithDomain:@"FMUtil" code:code userInfo:v8];
}

@end