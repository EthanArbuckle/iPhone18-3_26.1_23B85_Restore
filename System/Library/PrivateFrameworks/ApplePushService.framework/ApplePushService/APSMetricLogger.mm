@interface APSMetricLogger
+ (id)defaultLogger;
+ (unsigned)dualChannelStateFrom:(id)a3 isPiggyBacking:(BOOL)a4;
+ (void)filterSent:(id)a3 connectionType:(int64_t)a4;
- (APSMetricLogger)initWithDomain:(id)a3;
- (void)logMetric:(id)a3;
- (void)logMetricWithFailures:(id)a3;
@end

@implementation APSMetricLogger

- (APSMetricLogger)initWithDomain:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APSMetricLogger;
  v6 = [(APSMetricLogger *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_domain, a3);
  }

  return v7;
}

+ (id)defaultLogger
{
  v2 = [[a1 alloc] initWithDomain:@"com.apple.APSD"];

  return v2;
}

- (void)logMetric:(id)a3
{
  v4 = a3;
  v5 = [(APSMetricLogger *)self domain];
  v6 = [v4 name];
  v7 = [NSString stringWithFormat:@"%@.%@", v5, v6];

  v8 = +[APSLog courier];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v4 name];
    v10 = [v4 dictionaryRepresentation];
    *buf = 138412546;
    v14 = v9;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending %@ event to CA: %@", buf, 0x16u);
  }

  v12 = v4;
  v11 = v4;
  AnalyticsSendEventLazy();
}

- (void)logMetricWithFailures:(id)a3
{
  v4 = a3;
  [(APSMetricLogger *)self logMetric:v4];
  v5 = [v4 failureMetric];

  v6 = +[APSLog courier];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 name];
    v8 = [v5 dictionaryRepresentation];
    *buf = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending %@ event to CA: %@", buf, 0x16u);
  }

  v9 = [(APSMetricLogger *)self domain];
  v10 = [v5 name];
  v11 = [NSString stringWithFormat:@"%@.%@", v9, v10];

  v13 = v5;
  v12 = v5;
  AnalyticsSendExplodingEventLazy();
}

+ (void)filterSent:(id)a3 connectionType:(int64_t)a4
{
  v5 = a3;
  v6 = [NSString stringWithFormat:@"%@.%@", @"com.apple.APSD", kAPSPushFilterSentMetricName];
  v7 = +[NSMutableDictionary dictionary];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v5 topicGroupChange]);
  if (v8)
  {
    CFDictionarySetValue(v7, @"changeType", v8);
  }

  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 reason]);
  if (v9)
  {
    CFDictionarySetValue(v7, @"reason", v9);
  }

  v10 = [NSNumber numberWithInteger:a4];
  if (v10)
  {
    CFDictionarySetValue(v7, @"connectionType", v10);
  }

  v11 = [v5 triggeringTopic];
  if (v11)
  {
    CFDictionarySetValue(v7, @"triggeringTopic", v11);
  }

  v12 = +[APSLog courier];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending filter event to CA: %@", buf, 0xCu);
  }

  AnalyticsSendEvent();
}

+ (unsigned)dualChannelStateFrom:(id)a3 isPiggyBacking:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if ([v5 isConnectedOnInterface:0] && !objc_msgSend(v6, "isConnectedOnInterface:", 1))
    {
      v7 = 2;
    }

    else if (([v6 isConnectedOnInterface:0] & 1) != 0 || (objc_msgSend(v6, "isConnectedOnInterface:", 1) & 1) == 0)
    {
      if ([v6 countConnectedInterfaces] >= 2 && v4)
      {
        v7 = 4;
      }

      else if ([v6 countConnectedInterfaces] < 2 || v4)
      {
        v7 = 1;
      }

      else
      {
        v7 = 5;
      }
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end