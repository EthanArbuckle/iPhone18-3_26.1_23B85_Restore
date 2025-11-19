@interface HTProcessLaunchExitRecord
+ (id)getProcessExitsAndLaunchesDuringHang:(unint64_t)a3 endTime:(unint64_t)a4;
+ (void)fetchProcessRecords;
- (HTProcessLaunchExitRecord)initWithCoder:(id)a3;
- (HTProcessLaunchExitRecord)initWithInfo:(id)a3 pid:(int)a4 spawnTimestamp:(unint64_t)a5 exitTimestamp:(unint64_t)a6 exitReasonCode:(unint64_t)a7 exitReasonNamespace:(unsigned __int8)a8 jetsam_priority:(unsigned __int16)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HTProcessLaunchExitRecord

- (HTProcessLaunchExitRecord)initWithInfo:(id)a3 pid:(int)a4 spawnTimestamp:(unint64_t)a5 exitTimestamp:(unint64_t)a6 exitReasonCode:(unint64_t)a7 exitReasonNamespace:(unsigned __int8)a8 jetsam_priority:(unsigned __int16)a9
{
  v16 = a3;
  v20.receiver = self;
  v20.super_class = HTProcessLaunchExitRecord;
  v17 = [(HTProcessLaunchExitRecord *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_processName, a3);
    v18->_pid = a4;
    v18->_spawnTimestamp = a5;
    v18->_exitTimestamp = a6;
    v18->_exitReasonCode = a7;
    v18->_exitReasonNamespace = a8;
    v18->_jetsam_priority = a9;
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  processName = self->_processName;
  v5 = a3;
  [v5 encodeObject:processName forKey:@"processName"];
  [v5 encodeInt64:self->_pid forKey:@"pid"];
  [v5 encodeInt64:self->_spawnTimestamp forKey:@"spawnTimestamp"];
  [v5 encodeInt64:self->_exitTimestamp forKey:@"exitTimestamp"];
  [v5 encodeInt64:self->_exitReasonCode forKey:@"exitReasonCode"];
  [v5 encodeInt:self->_exitReasonNamespace forKey:@"exitReasonNamespace"];
  [v5 encodeInt:self->_jetsam_priority forKey:@"jetsamPriority"];
}

- (HTProcessLaunchExitRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processName"];
  v6 = [v4 decodeInt64ForKey:@"pid"];
  v7 = [v4 decodeInt64ForKey:@"spawnTimestamp"];
  v8 = [v4 decodeInt64ForKey:@"exitTimestamp"];
  v9 = [v4 decodeInt64ForKey:@"exitReasonCode"];
  v10 = [v4 decodeIntForKey:@"exitReasonNamespace"];
  v11 = [v4 decodeIntForKey:@"jetsamPriority"];

  LOWORD(v14) = v11;
  v12 = [(HTProcessLaunchExitRecord *)self initWithInfo:v5 pid:v6 spawnTimestamp:v7 exitTimestamp:v8 exitReasonCode:v9 exitReasonNamespace:v10 jetsam_priority:v14];

  return v12;
}

+ (void)fetchProcessRecords
{
  if (qword_10003E6E8 != -1)
  {
    sub_10001854C();
  }

  v2 = _launch_service_stats_copy_impl();
  if (v2)
  {
    v3 = sub_100002F0C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = strerror(v2);
      sub_100018560(v4, buf, v2, v3);
    }
  }

  else
  {
    v5 = sub_100002F0C();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v11 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "launch_service_stats_copy() returned %u records", buf, 8u);
    }

    v3 = objc_alloc_init(NSMutableArray);
    [qword_10003E6F0 addObjectsFromArray:v3];
    v6 = os_transaction_create();
    [qword_10003E6F0 setTransaction:v6];

    v7 = +[HTPrefs sharedPrefs];
    v8 = dispatch_time(0, 1000000 * [v7 runloopHangTimeoutDurationMSec] + 30000000000);

    v9 = [qword_10003E6F0 timer];
    dispatch_source_set_timer(v9, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3E8uLL);
  }
}

+ (id)getProcessExitsAndLaunchesDuringHang:(unint64_t)a3 endTime:(unint64_t)a4
{
  v45 = objc_alloc_init(NSMutableArray);
  v43 = objc_alloc_init(NSMutableArray);
  v44 = objc_alloc_init(NSMutableArray);
  v5 = sub_100002F0C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    v61 = sub_100017A6C(a3);
    v62 = 2048;
    v63 = sub_100017A6C(a4);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "getProcessExitsAndLaunchesDuringHang: called with windown [%.0f - %.0f]ms", buf, 0x16u);
  }

  +[HTProcessLaunchExitRecord fetchProcessRecords];
  v47 = +[NSDate now];
  v46 = mach_absolute_time();
  v6 = &OBJC_METACLASS___HangHUDClient;
  if ([qword_10003E6F0 count])
  {
    v7 = 0;
    v8 = 1;
    v9 = &OBJC_METACLASS___HangHUDClient;
    v10 = &SBSIsSystemApertureAvailable_ptr;
    do
    {
      v11 = [v6[44].cache objectAtIndex:v7];
      if ([v11 exitTimestamp] >= a3)
      {
        v12 = 0;
      }

      else
      {
        v12 = a3 - [v11 exitTimestamp];
      }

      v13 = [&v9[11] sharedPrefs];
      v14 = sub_100017B08([v13 runloopHangTimeoutDurationMSec] + 30000);

      if (v14 >= v12)
      {
        v74[0] = @"processName";
        v57 = [v11 processName];
        v75[0] = v57;
        v74[1] = @"processID";
        v55 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v11 pid]);
        v75[1] = v55;
        v74[2] = @"spawnTimestamp";
        v23 = [v6[44].cache dateFormatter];
        v53 = sub_100002A70([v11 spawnTimestamp], v47, v46);
        v54 = v23;
        v52 = [v23 stringFromDate:?];
        v75[2] = v52;
        v74[3] = @"exitTimestamp";
        v24 = [v6[44].cache dateFormatter];
        v50 = sub_100002A70([v11 exitTimestamp], v47, v46);
        v51 = v24;
        v49 = [v24 stringFromDate:?];
        v75[3] = v49;
        v74[4] = @"relativeSpawnTimeToHangStart";
        v25 = [v11 spawnTimestamp];
        v26 = v10[164];
        v27 = [v11 spawnTimestamp];
        if (v25 <= a3)
        {
          [v26 stringWithFormat:@"-%.3lfs", sub_100017AB4(a3 - v27)];
        }

        else
        {
          [v26 stringWithFormat:@"%.3lfs", sub_100017AB4(v27 - a3)];
        }
        v28 = ;
        v75[4] = v28;
        v74[5] = @"relativeExitTimeToHangStart";
        v29 = [v11 exitTimestamp];
        v30 = v10[164];
        v31 = [v11 exitTimestamp];
        if (v29 <= a3)
        {
          [v30 stringWithFormat:@"-%.3lfs", sub_100017AB4(a3 - v31)];
        }

        else
        {
          [v30 stringWithFormat:@"%.3lfs", sub_100017AB4(v31 - a3)];
        }
        v32 = ;
        v33 = a3;
        v75[5] = v32;
        v74[6] = @"processUptime";
        v34 = [v10[164] stringWithFormat:@"%.3lfs", sub_100017AB4(objc_msgSend(v11, "exitTimestamp") - objc_msgSend(v11, "spawnTimestamp"))];
        v75[6] = v34;
        v74[7] = @"exitReasonCode";
        v35 = sub_10000EE34([v11 exitReasonNamespace], objc_msgSend(v11, "exitReasonCode"));
        v75[7] = v35;
        v74[8] = @"exitReasonNamespace";
        v36 = sub_10000D880([v11 exitReasonNamespace]);
        v75[8] = v36;
        v74[9] = @"jetsamPriority";
        v37 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v11 jetsam_priority]);
        v75[9] = v37;
        v15 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:10];

        a3 = v33;
        if ([v11 exitTimestamp] < v33 || (v38 = objc_msgSend(v11, "exitTimestamp"), v39 = v43, v38 >= a4))
        {
          if ([v11 exitTimestamp] >= a4)
          {
            v39 = v44;
          }

          else
          {
            v39 = v45;
          }
        }

        [v39 addObject:v15];
        v6 = &OBJC_METACLASS___HangHUDClient;
        v9 = &OBJC_METACLASS___HangHUDClient;
        v10 = &SBSIsSystemApertureAvailable_ptr;
      }

      else
      {
        v15 = sub_100002F0C();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v56 = [&v9[11] sharedPrefs];
          v16 = sub_100017B08([v56 runloopHangTimeoutDurationMSec] + 30000);
          v17 = [v11 processName];
          v18 = [v11 pid];
          v19 = a3;
          v20 = [v11 exitTimestamp];
          v21 = [v11 exitReasonCode];
          v22 = [v11 exitReasonNamespace];
          *buf = 134219522;
          v61 = *&v12;
          v62 = 2048;
          v63 = *&v16;
          v10 = &SBSIsSystemApertureAvailable_ptr;
          v64 = 2112;
          v65 = v17;
          v66 = 1024;
          v67 = v18;
          v6 = &OBJC_METACLASS___HangHUDClient;
          v68 = 2048;
          v69 = v20;
          a3 = v19;
          v70 = 2048;
          v71 = v21;
          v72 = 1024;
          v73 = v22;
          _os_log_debug_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "excluding process exit record, timediff (%llu) > %llu, processName %@, pid %d, exitTimestamp %llu, exitReasonCode %llu, exitReasonNamespace %u", buf, 0x40u);

          v9 = &OBJC_METACLASS___HangHUDClient;
        }
      }

      v7 = v8;
    }

    while ([v6[44].cache count] > v8++);
  }

  v58[0] = @"exitedDuringHang";
  v58[1] = @"exitedBeforeHang";
  v59[0] = v43;
  v59[1] = v45;
  v58[2] = @"exitedAfterHang";
  v59[2] = v44;
  v41 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:3];

  return v41;
}

@end