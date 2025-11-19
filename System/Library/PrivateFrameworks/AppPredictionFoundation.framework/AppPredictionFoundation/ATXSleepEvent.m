@interface ATXSleepEvent
- (ATXSleepEvent)initWithSleepStart:(id)a3 wakeUp:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXSleepEvent:(id)a3;
- (double)duration;
- (id)description;
- (unint64_t)hash;
@end

@implementation ATXSleepEvent

- (ATXSleepEvent)initWithSleepStart:(id)a3 wakeUp:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ATXSleepEvent;
  v9 = [(ATXSleepEvent *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sleepStartTime, a3);
    objc_storeStrong(&v10->_wakeUpTime, a4);
  }

  return v10;
}

- (double)duration
{
  v3 = [(ATXSleepEvent *)self wakeUpTime];
  v4 = [(ATXSleepEvent *)self sleepStartTime];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5;

  return v6;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSleepEvent *)self isEqualToATXSleepEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXSleepEvent:(id)a3
{
  v4 = a3;
  v5 = self->_sleepStartTime;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v9 == v4[2])
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
  v3 = [(ATXSleepEvent *)self sleepStartTime];
  v4 = [v3 hash];

  v5 = [(ATXSleepEvent *)self wakeUpTime];
  v6 = [v5 hash] - v4 + 32 * v4;

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ATXSleepEvent *)self sleepStartTime];
  v5 = [(ATXSleepEvent *)self wakeUpTime];
  [(ATXSleepEvent *)self duration];
  v7 = [v3 stringWithFormat:@"<ATXSleepEvent %@ -> %@ (%.1f hours)>", v4, v5, v6 / 3600.0];

  return v7;
}

@end