@interface RCRecordingStartTimeInfo
+ (RCRecordingStartTimeInfo)infoWithCurrentDateAndTime;
- (RCRecordingStartTimeInfo)initWithDateRecordingStartTime:(id)time initWithMachRecordingStartTime:(unint64_t)startTime;
@end

@implementation RCRecordingStartTimeInfo

+ (RCRecordingStartTimeInfo)infoWithCurrentDateAndTime
{
  v2 = [self alloc];
  v3 = +[NSDate date];
  v4 = [v2 initWithDateRecordingStartTime:v3 initWithMachRecordingStartTime:mach_absolute_time()];

  return v4;
}

- (RCRecordingStartTimeInfo)initWithDateRecordingStartTime:(id)time initWithMachRecordingStartTime:(unint64_t)startTime
{
  timeCopy = time;
  v11.receiver = self;
  v11.super_class = RCRecordingStartTimeInfo;
  v8 = [(RCRecordingStartTimeInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dateRecordingStartTime, time);
    v9->_machRecordingStartTime = startTime;
  }

  return v9;
}

@end