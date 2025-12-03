@interface ATXChargerPluggedInEvent
- (ATXChargerPluggedInEvent)initWithStartTime:(id)time endTime:(id)endTime connected:(BOOL)connected adapterType:(id)type;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXChargerPluggedInEvent:(id)event;
- (unint64_t)hash;
@end

@implementation ATXChargerPluggedInEvent

- (ATXChargerPluggedInEvent)initWithStartTime:(id)time endTime:(id)endTime connected:(BOOL)connected adapterType:(id)type
{
  timeCopy = time;
  endTimeCopy = endTime;
  typeCopy = type;
  v17.receiver = self;
  v17.super_class = ATXChargerPluggedInEvent;
  v14 = [(ATXChargerPluggedInEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startTime, time);
    objc_storeStrong(&v15->_endTime, endTime);
    v15->_connected = connected;
    objc_storeStrong(&v15->_adapterType, type);
  }

  return v15;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXChargerPluggedInEvent *)self isEqualToATXChargerPluggedInEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXChargerPluggedInEvent:(id)event
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
      goto LABEL_12;
    }
  }

  v8 = self->_endTime;
  v9 = v8;
  if (v8 == eventCopy[3])
  {
  }

  else
  {
    v10 = [(NSDate *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (self->_connected != *(eventCopy + 8))
  {
LABEL_12:
    v13 = 0;
    goto LABEL_15;
  }

  v11 = self->_adapterType;
  v12 = v11;
  if (v11 == eventCopy[4])
  {
    v13 = 1;
  }

  else
  {
    v13 = [(NSNumber *)v11 isEqual:?];
  }

LABEL_15:
  return v13;
}

- (unint64_t)hash
{
  startTime = [(ATXChargerPluggedInEvent *)self startTime];
  v4 = [startTime hash];

  endTime = [(ATXChargerPluggedInEvent *)self endTime];
  v6 = [endTime hash] - v4 + 32 * v4;

  v7 = 31 * v6 + [(ATXChargerPluggedInEvent *)self connected];
  adapterType = [(ATXChargerPluggedInEvent *)self adapterType];
  v9 = [adapterType hash] - v7 + 32 * v7;

  return v9;
}

@end