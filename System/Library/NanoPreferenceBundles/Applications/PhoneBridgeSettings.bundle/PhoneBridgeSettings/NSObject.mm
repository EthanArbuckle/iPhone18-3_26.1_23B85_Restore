@interface NSObject
+ (void)NPHRequestIdleTimeNotification;
+ (void)_NPHIdleTimeNotification:(id)notification;
+ (void)performBlockAtIdle:(id)idle;
- (void)nph_debounce:(SEL)nph_debounce delay:(double)delay;
@end

@implementation NSObject

+ (void)performBlockAtIdle:(id)idle
{
  idleCopy = idle;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "+[NSObject(NPHIdleTime) performBlockAtIdle:]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1EDC;
  block[3] = &unk_83E0;
  block[4] = self;
  if (qword_C680 != -1)
  {
    dispatch_once(&qword_C680, block);
  }

  v6 = qword_C688;
  v7 = [idleCopy copy];

  [v6 addObject:v7];
  [self NPHRequestIdleTimeNotification];
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

+ (void)_NPHIdleTimeNotification:(id)notification
{
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "+[NSObject(NPHIdleTime) _NPHIdleTimeNotification:]";
    v12 = 2048;
    v13 = COERCE_DOUBLE([qword_C688 count]);
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%s sIdleBlocks.count:%lu", &v10, 0x16u);
  }

  firstObject = [qword_C688 firstObject];
  if (firstObject)
  {
    v6 = +[NSDate date];
    firstObject[2](firstObject);
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

    [qword_C688 removeObjectAtIndex:0];
    if ([qword_C688 count])
    {
      [self NPHRequestIdleTimeNotification];
    }
  }
}

- (void)nph_debounce:(SEL)nph_debounce delay:(double)delay
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:nph_debounce object:0];

  [self performSelector:nph_debounce withObject:0 afterDelay:delay];
}

@end