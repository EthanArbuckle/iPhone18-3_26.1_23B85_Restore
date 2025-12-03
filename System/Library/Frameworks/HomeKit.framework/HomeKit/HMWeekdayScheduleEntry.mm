@interface HMWeekdayScheduleEntry
- (HMWeekdayScheduleEntry)initWithWeekdays:(unint64_t)weekdays startTime:(id)time endTime:(id)endTime;
@end

@implementation HMWeekdayScheduleEntry

- (HMWeekdayScheduleEntry)initWithWeekdays:(unint64_t)weekdays startTime:(id)time endTime:(id)endTime
{
  timeCopy = time;
  endTimeCopy = endTime;
  v14.receiver = self;
  v14.super_class = HMWeekdayScheduleEntry;
  v11 = [(HMWeekdayScheduleEntry *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_weekdays = weekdays;
    objc_storeStrong(&v11->_startTime, time);
    objc_storeStrong(&v12->_endTime, endTime);
  }

  return v12;
}

@end