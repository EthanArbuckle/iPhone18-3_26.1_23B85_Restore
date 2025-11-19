@interface ATXEvent
+ (void)joinLaunchEvents:(id)a3 withVisits:(id)a4 block:(id)a5;
- (ATXEvent)initWithEvent:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEvent:(id)a3;
- (unint64_t)hash;
@end

@implementation ATXEvent

- (ATXEvent)initWithEvent:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v15.receiver = self;
  v15.super_class = ATXEvent;
  v13 = [(ATXEvent *)&v15 init];
  if (v13)
  {
    if (v10)
    {
      if (v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [ATXEvent initWithEvent:a2 startDate:v13 endDate:?];
      if (v11)
      {
LABEL_4:
        if (v12)
        {
LABEL_5:
          objc_storeStrong(&v13->_event, a3);
          objc_storeStrong(&v13->_startDate, a4);
          objc_storeStrong(&v13->_endDate, a5);
          goto LABEL_6;
        }

LABEL_9:
        [ATXEvent initWithEvent:a2 startDate:v13 endDate:?];
        goto LABEL_5;
      }
    }

    [ATXEvent initWithEvent:a2 startDate:v13 endDate:?];
    if (v12)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_6:

  return v13;
}

+ (void)joinLaunchEvents:(id)a3 withVisits:(id)a4 block:(id)a5
{
  v28 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 count];
  v10 = v28;
  if (v9)
  {
    v11 = 0;
    v12 = 0;
    while (1)
    {
      if (v12 >= [v10 count])
      {
        goto LABEL_10;
      }

      v13 = [v28 objectAtIndexedSubscript:v12];
      v14 = [v7 objectAtIndexedSubscript:v11];
      v15 = [v13 startDate];
      [v15 timeIntervalSinceReferenceDate];
      v17 = v16;
      v18 = [v14 startDate];
      [v18 timeIntervalSinceReferenceDate];
      v20 = v19;

      if (v17 < v20)
      {
        goto LABEL_8;
      }

      v21 = [v13 startDate];
      [v21 timeIntervalSinceReferenceDate];
      v23 = v22;
      v24 = [v14 endDate];
      [v24 timeIntervalSinceReferenceDate];
      v26 = v25;

      if (v23 <= v26)
      {
        break;
      }

      ++v11;
LABEL_9:

      v27 = [v7 count];
      v10 = v28;
      if (v11 >= v27)
      {
        goto LABEL_10;
      }
    }

    v8[2](v8, v13, v14);
LABEL_8:
    ++v12;
    goto LABEL_9;
  }

LABEL_10:
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXEvent *)self isEqualToEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToEvent:(id)a3
{
  v4 = a3;
  v5 = [(ATXEvent *)self event];
  v6 = [v4 event];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [(ATXEvent *)self event];
    v8 = [v4 event];
    if ([v7 isEqual:v8])
    {
      v9 = [(ATXEvent *)self startDate];
      v10 = [v4 startDate];
      if ([v9 isEqualToDate:v10])
      {
        v11 = [(ATXEvent *)self endDate];
        v12 = [v4 endDate];
        v13 = [v11 isEqualToDate:v12];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSSecureCoding *)self->_event hash];
  v4 = [(NSDate *)self->_startDate hash]- v3 + 32 * v3;
  return [(NSDate *)self->_endDate hash]- v4 + 32 * v4;
}

- (void)initWithEvent:(uint64_t)a1 startDate:(uint64_t)a2 endDate:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXEvent.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"event"}];
}

- (void)initWithEvent:(uint64_t)a1 startDate:(uint64_t)a2 endDate:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXEvent.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"startDate"}];
}

- (void)initWithEvent:(uint64_t)a1 startDate:(uint64_t)a2 endDate:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXEvent.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"endDate"}];
}

@end