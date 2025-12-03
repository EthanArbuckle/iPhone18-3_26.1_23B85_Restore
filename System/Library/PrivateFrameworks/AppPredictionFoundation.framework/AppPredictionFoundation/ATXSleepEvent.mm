@interface ATXSleepEvent
- (ATXSleepEvent)initWithSleepStart:(id)start wakeUp:(id)up;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXSleepEvent:(id)event;
- (double)duration;
- (id)description;
- (unint64_t)hash;
@end

@implementation ATXSleepEvent

- (ATXSleepEvent)initWithSleepStart:(id)start wakeUp:(id)up
{
  startCopy = start;
  upCopy = up;
  v12.receiver = self;
  v12.super_class = ATXSleepEvent;
  v9 = [(ATXSleepEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sleepStartTime, start);
    objc_storeStrong(&v10->_wakeUpTime, up);
  }

  return v10;
}

- (double)duration
{
  wakeUpTime = [(ATXSleepEvent *)self wakeUpTime];
  sleepStartTime = [(ATXSleepEvent *)self sleepStartTime];
  [wakeUpTime timeIntervalSinceDate:sleepStartTime];
  v6 = v5;

  return v6;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSleepEvent *)self isEqualToATXSleepEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXSleepEvent:(id)event
{
  eventCopy = event;
  v5 = self->_sleepStartTime;
  v6 = v5;
  if (v5 == eventCopy[1])
  {
  }

  else
  {
    v7 = [(NSDate *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_wakeUpTime;
  v10 = v9;
  if (v9 == eventCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSDate *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

- (unint64_t)hash
{
  sleepStartTime = [(ATXSleepEvent *)self sleepStartTime];
  v4 = [sleepStartTime hash];

  wakeUpTime = [(ATXSleepEvent *)self wakeUpTime];
  v6 = [wakeUpTime hash] - v4 + 32 * v4;

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  sleepStartTime = [(ATXSleepEvent *)self sleepStartTime];
  wakeUpTime = [(ATXSleepEvent *)self wakeUpTime];
  [(ATXSleepEvent *)self duration];
  v7 = [v3 stringWithFormat:@"<ATXSleepEvent %@ -> %@ (%.1f hours)>", sleepStartTime, wakeUpTime, v6 / 3600.0];

  return v7;
}

@end