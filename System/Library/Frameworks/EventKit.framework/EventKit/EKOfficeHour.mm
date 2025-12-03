@interface EKOfficeHour
- (EKOfficeHour)initWithEnabled:(BOOL)enabled weekday:(int64_t)weekday startTime:(id)time endTime:(id)endTime timeZone:(id)zone;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation EKOfficeHour

- (EKOfficeHour)initWithEnabled:(BOOL)enabled weekday:(int64_t)weekday startTime:(id)time endTime:(id)endTime timeZone:(id)zone
{
  timeCopy = time;
  endTimeCopy = endTime;
  zoneCopy = zone;
  v19.receiver = self;
  v19.super_class = EKOfficeHour;
  v16 = [(EKOfficeHour *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_enabled = enabled;
    v16->_weekday = weekday;
    objc_storeStrong(&v16->_startTime, time);
    objc_storeStrong(&v17->_endTime, endTime);
    objc_storeStrong(&v17->_timeZone, zone);
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [EKOfficeHour alloc];
  enabled = self->_enabled;
  weekday = self->_weekday;
  startTime = self->_startTime;
  endTime = self->_endTime;
  timeZone = self->_timeZone;

  return [(EKOfficeHour *)v4 initWithEnabled:enabled weekday:weekday startTime:startTime endTime:endTime timeZone:timeZone];
}

@end