@interface NSObject
+ (void)NPHRequestIdleTimeNotification;
+ (void)_NPHIdleTimeNotification:(id)a3;
+ (void)performBlockAtIdle:(id)a3;
- (void)nph_debounce:(SEL)a3 delay:(double)a4;
@end

@implementation NSObject

+ (void)performBlockAtIdle:(id)a3
{
  v4 = a3;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "+[NSObject(NPHIdleTime) performBlockAtIdle:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_5CD0;
  block[3] = &unk_1C860;
  block[4] = a1;
  if (qword_22B20 != -1)
  {
    dispatch_once(&qword_22B20, block);
  }

  v6 = qword_22B28;
  v7 = [v4 copy];

  [v6 addObject:v7];
  [a1 NPHRequestIdleTimeNotification];
}

+ (void)NPHRequestIdleTimeNotification
{
  v2 = nph_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "+[NSObject(NPHIdleTime) NPHRequestIdleTimeNotification]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  v3 = [NSNotification notificationWithName:@"NPHIdleNotification" object:0];
  v4 = +[NSNotificationQueue defaultQueue];
  [v4 enqueueNotification:v3 postingStyle:1];
}

+ (void)_NPHIdleTimeNotification:(id)a3
{
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "+[NSObject(NPHIdleTime) _NPHIdleTimeNotification:]";
    v12 = 2048;
    v13 = COERCE_DOUBLE([qword_22B28 count]);
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%s sIdleBlocks.count:%lu", &v10, 0x16u);
  }

  v5 = [qword_22B28 firstObject];
  if (v5)
  {
    v6 = +[NSDate date];
    v5[2](v5);
    [v6 timeIntervalSinceNow];
    v8 = v7 * -1000.0;
    if (v7 * -1000.0 > 100.0)
    {
      v9 = nph_general_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315394;
        v11 = "+[NSObject(NPHIdleTime) _NPHIdleTimeNotification:]";
        v12 = 2048;
        v13 = v8;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "******* %s BLOCKING MAIN THREAD: %f", &v10, 0x16u);
      }
    }

    [qword_22B28 removeObjectAtIndex:0];
    if ([qword_22B28 count])
    {
      [a1 NPHRequestIdleTimeNotification];
    }
  }
}

- (void)nph_debounce:(SEL)a3 delay:(double)a4
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:a3 object:0];

  [self performSelector:a3 withObject:0 afterDelay:a4];
}

@end