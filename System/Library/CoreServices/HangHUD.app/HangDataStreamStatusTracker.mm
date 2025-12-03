@interface HangDataStreamStatusTracker
+ (id)sharedInstance;
- (BOOL)isHangEndedWithDuration:(double)duration updateInterval:(double)interval hangID:(id)d;
- (HangDataStreamStatusTracker)init;
@end

@implementation HangDataStreamStatusTracker

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100002BFC;
  block[3] = &unk_100030840;
  block[4] = self;
  if (qword_10003E6D0 != -1)
  {
    dispatch_once(&qword_10003E6D0, block);
  }

  v2 = qword_10003E6C8;

  return v2;
}

- (HangDataStreamStatusTracker)init
{
  v6.receiver = self;
  v6.super_class = HangDataStreamStatusTracker;
  v2 = [(HangDataStreamStatusTracker *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    hangHUDStatusDict = v2->_hangHUDStatusDict;
    v2->_hangHUDStatusDict = v3;
  }

  return v2;
}

- (BOOL)isHangEndedWithDuration:(double)duration updateInterval:(double)interval hangID:(id)d
{
  dCopy = d;
  v9 = [(NSMutableDictionary *)self->_hangHUDStatusDict objectForKey:dCopy];

  if (!v9)
  {
    hangHUDStatusDict = self->_hangHUDStatusDict;
    v11 = objc_alloc_init(HangDataStreamStatus);
    [(NSMutableDictionary *)hangHUDStatusDict setObject:v11 forKey:dCopy];
  }

  v12 = [(NSMutableDictionary *)self->_hangHUDStatusDict objectForKeyedSubscript:dCopy];
  [v12 previousDurationSinceLastUpdateMs];
  v14 = v13;
  v15 = sub_10000A9AC();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [v12 previousDurationSinceLastUpdateMs];
    v21 = 134219522;
    durationCopy = duration;
    v23 = 2048;
    v24 = v20;
    v25 = 1024;
    countsOfMeetingEndingConditions = [v12 countsOfMeetingEndingConditions];
    v27 = 1024;
    v28 = duration > interval;
    v29 = 1024;
    v30 = v14 < duration;
    v31 = 2048;
    intervalCopy = interval;
    v33 = 2112;
    v34 = dCopy;
    _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "isHangEndedWithDuration %f, previous_durationSinceLastUpdateMs:%f, counter:%i, is_latency_high:%i, is_latency_increasing:%i, hudUpdateInterval:%f, hangID:%@", &v21, 0x3Cu);
  }

  if (duration <= interval || v14 >= duration)
  {
    [v12 initStatus];
  }

  else
  {
    [v12 setCountsOfMeetingEndingConditions:{objc_msgSend(v12, "countsOfMeetingEndingConditions") + 1}];
    [v12 setPreviousDurationSinceLastUpdateMs:duration];
  }

  countsOfMeetingEndingConditions2 = [v12 countsOfMeetingEndingConditions];
  v17 = sub_10000A9AC();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
  if (countsOfMeetingEndingConditions2 < 3)
  {
    if (v18)
    {
      sub_100018448(dCopy, v17);
    }
  }

  else
  {
    if (v18)
    {
      sub_1000184C0(dCopy, v17);
    }

    [v12 initStatus];
  }

  return countsOfMeetingEndingConditions2 > 2;
}

@end