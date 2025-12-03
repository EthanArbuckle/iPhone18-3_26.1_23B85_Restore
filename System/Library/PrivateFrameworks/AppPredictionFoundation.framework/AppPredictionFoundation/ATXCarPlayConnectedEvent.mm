@interface ATXCarPlayConnectedEvent
+ (id)new;
- (ATXCarPlayConnectedEvent)initWithStartTime:(id)time endTime:(id)endTime connected:(BOOL)connected;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXCarPlayConnectedEvent:(id)event;
- (unint64_t)hash;
@end

@implementation ATXCarPlayConnectedEvent

+ (id)new
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ATXCarPlayConnectedEvent.m" lineNumber:20 description:{@"new called: %s", "+[ATXCarPlayConnectedEvent new]"}];

  return 0;
}

- (ATXCarPlayConnectedEvent)initWithStartTime:(id)time endTime:(id)endTime connected:(BOOL)connected
{
  timeCopy = time;
  endTimeCopy = endTime;
  v14.receiver = self;
  v14.super_class = ATXCarPlayConnectedEvent;
  v11 = [(ATXCarPlayConnectedEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startTime, time);
    objc_storeStrong(&v12->_endTime, endTime);
    v12->_connected = connected;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXCarPlayConnectedEvent *)self isEqualToATXCarPlayConnectedEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXCarPlayConnectedEvent:(id)event
{
  eventCopy = event;
  if (self->_connected != *(eventCopy + 8))
  {
    goto LABEL_4;
  }

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
LABEL_4:
      v8 = 0;
      goto LABEL_10;
    }
  }

  v9 = self->_endTime;
  v10 = v9;
  if (v9 == eventCopy[3])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSDate *)v9 isEqual:?];
  }

LABEL_10:
  return v8;
}

- (unint64_t)hash
{
  if ([(ATXCarPlayConnectedEvent *)self connected])
  {
    v3 = 31;
  }

  else
  {
    v3 = 0;
  }

  startTime = [(ATXCarPlayConnectedEvent *)self startTime];
  v5 = [startTime hash] + v3;

  endTime = [(ATXCarPlayConnectedEvent *)self endTime];
  v7 = [endTime hash] - v5 + 32 * v5;

  return v7;
}

@end