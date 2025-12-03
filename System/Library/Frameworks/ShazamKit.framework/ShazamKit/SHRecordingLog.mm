@interface SHRecordingLog
+ (void)powerlogCallingProcessBundleID:(id)d startDate:(id)date endDate:(id)endDate;
- (SHRecordingLog)initWithBundleID:(id)d;
- (void)attachedTapForClient:(int64_t)client;
- (void)detachedTapForClient:(int64_t)client;
@end

@implementation SHRecordingLog

- (SHRecordingLog)initWithBundleID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = SHRecordingLog;
  v6 = [(SHRecordingLog *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, d);
  }

  return v7;
}

- (void)attachedTapForClient:(int64_t)client
{
  v4 = vdupq_n_s64(1uLL);
  v4.i64[0] = client == 2;
  *&self->_assistantTapCount = vaddq_s64(*&self->_assistantTapCount, v4);
  if ([(SHRecordingLog *)self totalTapCount]== 1)
  {
    v5 = +[NSDate date];
    startedRecordingDate = self->_startedRecordingDate;
    self->_startedRecordingDate = v5;

    endedRecordingDate = self->_endedRecordingDate;
    self->_endedRecordingDate = 0;
  }
}

- (void)detachedTapForClient:(int64_t)client
{
  if (client == 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = 0;
  }

  v5.i64[1] = -1;
  v5.i64[0] = v4;
  *&self->_assistantTapCount = vaddq_s64(*&self->_assistantTapCount, v5);
  if (![(SHRecordingLog *)self totalTapCount])
  {
    v6 = +[NSDate date];
    endedRecordingDate = self->_endedRecordingDate;
    self->_endedRecordingDate = v6;

    v8 = objc_opt_class();
    bundleID = [(SHRecordingLog *)self bundleID];
    startedRecordingDate = [(SHRecordingLog *)self startedRecordingDate];
    endedRecordingDate = [(SHRecordingLog *)self endedRecordingDate];
    [v8 powerlogCallingProcessBundleID:bundleID startDate:startedRecordingDate endDate:endedRecordingDate];
  }
}

+ (void)powerlogCallingProcessBundleID:(id)d startDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  dCopy = d;
  v10 = +[NSMutableDictionary dictionary];
  [v10 setValue:dCopy forKey:@"BundleID"];

  [v10 setValue:dateCopy forKey:@"timestamp"];
  [v10 setValue:endDateCopy forKey:@"timestampEnd"];

  v11 = sh_log_object();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Powerlogging %@", &v12, 0xCu);
  }

  PLLogRegisteredEvent();
}

@end