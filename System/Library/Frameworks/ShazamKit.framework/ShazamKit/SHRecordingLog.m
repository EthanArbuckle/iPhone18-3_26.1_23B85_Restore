@interface SHRecordingLog
+ (void)powerlogCallingProcessBundleID:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (SHRecordingLog)initWithBundleID:(id)a3;
- (void)attachedTapForClient:(int64_t)a3;
- (void)detachedTapForClient:(int64_t)a3;
@end

@implementation SHRecordingLog

- (SHRecordingLog)initWithBundleID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SHRecordingLog;
  v6 = [(SHRecordingLog *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, a3);
  }

  return v7;
}

- (void)attachedTapForClient:(int64_t)a3
{
  v4 = vdupq_n_s64(1uLL);
  v4.i64[0] = a3 == 2;
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

- (void)detachedTapForClient:(int64_t)a3
{
  if (a3 == 2)
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
    v11 = [(SHRecordingLog *)self bundleID];
    v9 = [(SHRecordingLog *)self startedRecordingDate];
    v10 = [(SHRecordingLog *)self endedRecordingDate];
    [v8 powerlogCallingProcessBundleID:v11 startDate:v9 endDate:v10];
  }
}

+ (void)powerlogCallingProcessBundleID:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[NSMutableDictionary dictionary];
  [v10 setValue:v9 forKey:@"BundleID"];

  [v10 setValue:v8 forKey:@"timestamp"];
  [v10 setValue:v7 forKey:@"timestampEnd"];

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