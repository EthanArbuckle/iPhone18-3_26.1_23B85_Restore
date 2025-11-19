@interface ATXCarPlayConnectedEvent
+ (id)new;
- (ATXCarPlayConnectedEvent)initWithStartTime:(id)a3 endTime:(id)a4 connected:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXCarPlayConnectedEvent:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXCarPlayConnectedEvent

+ (id)new
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"ATXCarPlayConnectedEvent.m" lineNumber:20 description:{@"new called: %s", "+[ATXCarPlayConnectedEvent new]"}];

  return 0;
}

- (ATXCarPlayConnectedEvent)initWithStartTime:(id)a3 endTime:(id)a4 connected:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = ATXCarPlayConnectedEvent;
  v11 = [(ATXCarPlayConnectedEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startTime, a3);
    objc_storeStrong(&v12->_endTime, a4);
    v12->_connected = a5;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXCarPlayConnectedEvent *)self isEqualToATXCarPlayConnectedEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXCarPlayConnectedEvent:(id)a3
{
  v4 = a3;
  if (self->_connected != *(v4 + 8))
  {
    goto LABEL_4;
  }

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
LABEL_4:
      v8 = 0;
      goto LABEL_10;
    }
  }

  v9 = self->_endTime;
  v10 = v9;
  if (v9 == v4[3])
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

  v4 = [(ATXCarPlayConnectedEvent *)self startTime];
  v5 = [v4 hash] + v3;

  v6 = [(ATXCarPlayConnectedEvent *)self endTime];
  v7 = [v6 hash] - v5 + 32 * v5;

  return v7;
}

@end