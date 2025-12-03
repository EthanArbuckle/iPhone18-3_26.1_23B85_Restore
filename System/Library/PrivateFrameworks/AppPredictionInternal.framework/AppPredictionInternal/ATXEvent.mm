@interface ATXEvent
+ (void)joinLaunchEvents:(id)events withVisits:(id)visits block:(id)block;
- (ATXEvent)initWithEvent:(id)event startDate:(id)date endDate:(id)endDate;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEvent:(id)event;
- (unint64_t)hash;
@end

@implementation ATXEvent

- (ATXEvent)initWithEvent:(id)event startDate:(id)date endDate:(id)endDate
{
  eventCopy = event;
  dateCopy = date;
  endDateCopy = endDate;
  v15.receiver = self;
  v15.super_class = ATXEvent;
  v13 = [(ATXEvent *)&v15 init];
  if (v13)
  {
    if (eventCopy)
    {
      if (dateCopy)
      {
        goto LABEL_4;
      }
    }

    else
    {
      [ATXEvent initWithEvent:a2 startDate:v13 endDate:?];
      if (dateCopy)
      {
LABEL_4:
        if (endDateCopy)
        {
LABEL_5:
          objc_storeStrong(&v13->_event, event);
          objc_storeStrong(&v13->_startDate, date);
          objc_storeStrong(&v13->_endDate, endDate);
          goto LABEL_6;
        }

LABEL_9:
        [ATXEvent initWithEvent:a2 startDate:v13 endDate:?];
        goto LABEL_5;
      }
    }

    [ATXEvent initWithEvent:a2 startDate:v13 endDate:?];
    if (endDateCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_6:

  return v13;
}

+ (void)joinLaunchEvents:(id)events withVisits:(id)visits block:(id)block
{
  eventsCopy = events;
  visitsCopy = visits;
  blockCopy = block;
  v9 = [visitsCopy count];
  v10 = eventsCopy;
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

      v13 = [eventsCopy objectAtIndexedSubscript:v12];
      v14 = [visitsCopy objectAtIndexedSubscript:v11];
      startDate = [v13 startDate];
      [startDate timeIntervalSinceReferenceDate];
      v17 = v16;
      startDate2 = [v14 startDate];
      [startDate2 timeIntervalSinceReferenceDate];
      v20 = v19;

      if (v17 < v20)
      {
        goto LABEL_8;
      }

      startDate3 = [v13 startDate];
      [startDate3 timeIntervalSinceReferenceDate];
      v23 = v22;
      endDate = [v14 endDate];
      [endDate timeIntervalSinceReferenceDate];
      v26 = v25;

      if (v23 <= v26)
      {
        break;
      }

      ++v11;
LABEL_9:

      v27 = [visitsCopy count];
      v10 = eventsCopy;
      if (v11 >= v27)
      {
        goto LABEL_10;
      }
    }

    blockCopy[2](blockCopy, v13, v14);
LABEL_8:
    ++v12;
    goto LABEL_9;
  }

LABEL_10:
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXEvent *)self isEqualToEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToEvent:(id)event
{
  eventCopy = event;
  event = [(ATXEvent *)self event];
  event2 = [eventCopy event];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    event3 = [(ATXEvent *)self event];
    event4 = [eventCopy event];
    if ([event3 isEqual:event4])
    {
      startDate = [(ATXEvent *)self startDate];
      startDate2 = [eventCopy startDate];
      if ([startDate isEqualToDate:startDate2])
      {
        endDate = [(ATXEvent *)self endDate];
        endDate2 = [eventCopy endDate];
        v13 = [endDate isEqualToDate:endDate2];
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