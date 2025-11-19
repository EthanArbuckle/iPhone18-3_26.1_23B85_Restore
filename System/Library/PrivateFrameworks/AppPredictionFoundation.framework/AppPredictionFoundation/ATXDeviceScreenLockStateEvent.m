@interface ATXDeviceScreenLockStateEvent
- (ATXDeviceScreenLockStateEvent)initWithStartTime:(id)a3 endTime:(id)a4 isLocked:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXDeviceScreenLockStateEvent:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXDeviceScreenLockStateEvent

- (ATXDeviceScreenLockStateEvent)initWithStartTime:(id)a3 endTime:(id)a4 isLocked:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ATXDeviceScreenLockStateEvent;
  v11 = [(ATXDeviceScreenLockStateEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startTime, a3);
    objc_storeStrong(&v12->_endTime, a4);
    v12->_isLocked = a5;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXDeviceScreenLockStateEvent *)self isEqualToATXDeviceScreenLockStateEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXDeviceScreenLockStateEvent:(id)a3
{
  v4 = a3;
  v5 = self->_startTime;
  v6 = v5;
  if (v5 == v4[2])
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
  if (v8 == v4[3])
  {

    goto LABEL_9;
  }

  v10 = [(NSDate *)v8 isEqual:?];

  if (v10)
  {
LABEL_9:
    v11 = self->_isLocked == *(v4 + 8);
    goto LABEL_10;
  }

LABEL_7:
  v11 = 0;
LABEL_10:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(ATXDeviceScreenLockStateEvent *)self startTime];
  v4 = [v3 hash];

  v5 = [(ATXDeviceScreenLockStateEvent *)self endTime];
  v6 = [v5 hash] - v4 + 32 * v4;

  return 31 * v6 + [(ATXDeviceScreenLockStateEvent *)self isLocked];
}

@end