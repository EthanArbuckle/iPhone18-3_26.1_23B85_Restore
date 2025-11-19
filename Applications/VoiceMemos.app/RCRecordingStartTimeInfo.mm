@interface RCRecordingStartTimeInfo
+ (RCRecordingStartTimeInfo)infoWithCurrentDateAndTime;
- (RCRecordingStartTimeInfo)initWithDateRecordingStartTime:(id)a3 initWithMachRecordingStartTime:(unint64_t)a4;
@end

@implementation RCRecordingStartTimeInfo

+ (RCRecordingStartTimeInfo)infoWithCurrentDateAndTime
{
  v2 = [a1 alloc];
  v3 = +[NSDate date];
  v4 = [v2 initWithDateRecordingStartTime:v3 initWithMachRecordingStartTime:mach_absolute_time()];

  return v4;
}

- (RCRecordingStartTimeInfo)initWithDateRecordingStartTime:(id)a3 initWithMachRecordingStartTime:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = RCRecordingStartTimeInfo;
  v8 = [(RCRecordingStartTimeInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dateRecordingStartTime, a3);
    v9->_machRecordingStartTime = a4;
  }

  return v9;
}

@end