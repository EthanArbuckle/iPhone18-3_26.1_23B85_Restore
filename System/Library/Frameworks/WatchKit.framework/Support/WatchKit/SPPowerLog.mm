@interface SPPowerLog
+ (id)sharedInstance;
- (SPPowerLog)init;
- (id)newEventFromEvent:(id)event usingLogEvent:(id)logEvent;
- (void)cancelLogUpdateTimer;
- (void)logEvent:(id)event withName:(id)name;
- (void)startLogUpdateTimer;
- (void)updatePowerLogs;
@end

@implementation SPPowerLog

+ (id)sharedInstance
{
  if (qword_100051CC0 != -1)
  {
    sub_100028204();
  }

  v3 = qword_100051CC8;

  return v3;
}

- (SPPowerLog)init
{
  v8.receiver = self;
  v8.super_class = SPPowerLog;
  v2 = [(SPPowerLog *)&v8 init];
  v3 = [NSMutableDictionary dictionaryWithCapacity:0];
  eventsByBundleID = v2->_eventsByBundleID;
  v2->_eventsByBundleID = v3;

  v5 = dispatch_queue_create("com.apple.watchkit.powerlog.queue", 0);
  logQueue = v2->_logQueue;
  v2->_logQueue = v5;

  return v2;
}

- (void)cancelLogUpdateTimer
{
  logUpdateTimer = self->_logUpdateTimer;
  if (logUpdateTimer)
  {
    dispatch_source_cancel(logUpdateTimer);
    v4 = self->_logUpdateTimer;
    self->_logUpdateTimer = 0;
  }
}

- (void)startLogUpdateTimer
{
  logQueue = [(SPPowerLog *)self logQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000023BC;
  block[3] = &unk_100044778;
  block[4] = self;
  dispatch_async(logQueue, block);
}

- (void)logEvent:(id)event withName:(id)name
{
  eventCopy = event;
  logQueue = [(SPPowerLog *)self logQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000025C4;
  v8[3] = &unk_1000447A0;
  v9 = eventCopy;
  selfCopy = self;
  v7 = eventCopy;
  dispatch_sync(logQueue, v8);
}

- (id)newEventFromEvent:(id)event usingLogEvent:(id)logEvent
{
  eventCopy = event;
  logEventCopy = logEvent;
  v7 = [eventCopy mutableCopy];
  if (v7)
  {
    v8 = v7;
    v9 = [eventCopy objectForKeyedSubscript:@"count"];
    unsignedIntegerValue = [v9 unsignedIntegerValue];

    v11 = [logEventCopy objectForKeyedSubscript:@"length"];
    unsignedIntegerValue2 = [v11 unsignedIntegerValue];

    v13 = [eventCopy objectForKeyedSubscript:@"length"];
    unsignedIntegerValue3 = [v13 unsignedIntegerValue];

    v15 = [NSNumber numberWithUnsignedInteger:&unsignedIntegerValue2[unsignedIntegerValue3]];
    [v8 setObject:v15 forKeyedSubscript:@"length"];

    v16 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue + 1];
    [v8 setObject:v16 forKeyedSubscript:@"count"];
  }

  else
  {
    v8 = [logEventCopy mutableCopy];
    [v8 setObject:&off_10004AC38 forKeyedSubscript:@"count"];
  }

  return v8;
}

- (void)updatePowerLogs
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_eventsByBundleID;
  v2 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v28 count:16];
  if (v2)
  {
    v3 = v2;
    v15 = *v22;
    do
    {
      v4 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v5 = [(NSMutableDictionary *)self->_eventsByBundleID objectForKeyedSubscript:*(*(&v21 + 1) + 8 * v4)];
        if (PLShouldLogRegisteredEvent())
        {
          v6 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
          v17 = 0u;
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v7 = v5;
          v8 = [v7 countByEnumeratingWithState:&v17 objects:v27 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v18;
            do
            {
              v11 = 0;
              do
              {
                if (*v18 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                v12 = [v7 objectForKeyedSubscript:*(*(&v17 + 1) + 8 * v11)];
                [v6 addObject:v12];

                v11 = v11 + 1;
              }

              while (v9 != v11);
              v9 = [v7 countByEnumeratingWithState:&v17 objects:v27 count:16];
            }

            while (v9);
          }

          v25 = @"1";
          v26 = v6;
          v13 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          PLLogRegisteredEvent();
        }

        v4 = v4 + 1;
      }

      while (v4 != v3);
      v3 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v28 count:16];
    }

    while (v3);
  }

  [(NSMutableDictionary *)self->_eventsByBundleID removeAllObjects];
}

@end