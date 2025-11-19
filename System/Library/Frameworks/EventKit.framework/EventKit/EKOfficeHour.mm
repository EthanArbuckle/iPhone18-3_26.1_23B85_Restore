@interface EKOfficeHour
- (EKOfficeHour)initWithEnabled:(BOOL)a3 weekday:(int64_t)a4 startTime:(id)a5 endTime:(id)a6 timeZone:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation EKOfficeHour

- (EKOfficeHour)initWithEnabled:(BOOL)a3 weekday:(int64_t)a4 startTime:(id)a5 endTime:(id)a6 timeZone:(id)a7
{
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = EKOfficeHour;
  v16 = [(EKOfficeHour *)&v19 init];
  v17 = v16;
  if (v16)
  {
    v16->_enabled = a3;
    v16->_weekday = a4;
    objc_storeStrong(&v16->_startTime, a5);
    objc_storeStrong(&v17->_endTime, a6);
    objc_storeStrong(&v17->_timeZone, a7);
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
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