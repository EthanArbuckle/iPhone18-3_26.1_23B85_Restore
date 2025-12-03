@interface ATXDeviceScreenLockStateEvent
- (ATXDeviceScreenLockStateEvent)initWithStartTime:(id)time endTime:(id)endTime isLocked:(BOOL)locked;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXDeviceScreenLockStateEvent:(id)event;
- (unint64_t)hash;
@end

@implementation ATXDeviceScreenLockStateEvent

- (ATXDeviceScreenLockStateEvent)initWithStartTime:(id)time endTime:(id)endTime isLocked:(BOOL)locked
{
  timeCopy = time;
  endTimeCopy = endTime;
  v14.receiver = self;
  v14.super_class = ATXDeviceScreenLockStateEvent;
  v11 = [(ATXDeviceScreenLockStateEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startTime, time);
    objc_storeStrong(&v12->_endTime, endTime);
    v12->_isLocked = locked;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXDeviceScreenLockStateEvent *)self isEqualToATXDeviceScreenLockStateEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXDeviceScreenLockStateEvent:(id)event
{
  eventCopy = event;
  v5 = self->_startTime;
  v6 = v5;
  if (v5 == eventCopy[2])
  {
  }

  else
  {
    v7 = [(NSDate *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v8 = self->_endTime;
  v9 = v8;
  if (v8 == eventCopy[3])
  {

    goto LABEL_9;
  }

  v10 = [(NSDate *)v8 isEqual:?];

  if (v10)
  {
LABEL_9:
    v11 = self->_isLocked == *(eventCopy + 8);
    goto LABEL_10;
  }

LABEL_7:
  v11 = 0;
LABEL_10:

  return v11;
}

- (unint64_t)hash
{
  startTime = [(ATXDeviceScreenLockStateEvent *)self startTime];
  v4 = [startTime hash];

  endTime = [(ATXDeviceScreenLockStateEvent *)self endTime];
  v6 = [endTime hash] - v4 + 32 * v4;

  return 31 * v6 + [(ATXDeviceScreenLockStateEvent *)self isLocked];
}

@end