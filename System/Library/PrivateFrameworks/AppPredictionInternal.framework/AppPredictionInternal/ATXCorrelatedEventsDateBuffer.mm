@interface ATXCorrelatedEventsDateBuffer
- (ATXCorrelatedEventsDateBuffer)initWithBufferSeconds:(double)seconds andBufferType:(int64_t)type;
- (id)endDateWithBufferForEvent:(id)event;
- (id)startDateWithBufferForEvent:(id)event;
@end

@implementation ATXCorrelatedEventsDateBuffer

- (ATXCorrelatedEventsDateBuffer)initWithBufferSeconds:(double)seconds andBufferType:(int64_t)type
{
  selfCopy = self;
  if (type < 3)
  {
    v11.receiver = self;
    v11.super_class = ATXCorrelatedEventsDateBuffer;
    v9 = [(ATXCorrelatedEventsDateBuffer *)&v11 init];
    if (v9)
    {
      v9->_bufferSeconds = seconds;
      v9->_bufferType = type;
    }

    selfCopy = v9;
    v6 = selfCopy;
  }

  else
  {
    v5 = __atxlog_handle_default();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [ATXCorrelatedEventsDateBuffer initWithBufferSeconds:v5 andBufferType:?];
    }

    v6 = 0;
  }

  return v6;
}

- (id)startDateWithBufferForEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    [(ATXCorrelatedEventsDateBuffer *)a2 startDateWithBufferForEvent:?];
  }

  v6 = MEMORY[0x277CBEAA8];
  v7 = -self->_bufferSeconds;
  if ((self->_bufferType | 2) == 2)
  {
    [eventCopy startDate];
  }

  else
  {
    [eventCopy endDate];
  }
  v8 = ;
  v9 = [v6 dateWithTimeInterval:v8 sinceDate:v7];

  return v9;
}

- (id)endDateWithBufferForEvent:(id)event
{
  eventCopy = event;
  if (!eventCopy)
  {
    [(ATXCorrelatedEventsDateBuffer *)a2 endDateWithBufferForEvent:?];
  }

  v6 = MEMORY[0x277CBEAA8];
  bufferSeconds = self->_bufferSeconds;
  if ((self->_bufferType - 1) > 1)
  {
    [eventCopy startDate];
  }

  else
  {
    [eventCopy endDate];
  }
  v8 = ;
  v9 = [v6 dateWithTimeInterval:v8 sinceDate:bufferSeconds];

  return v9;
}

- (void)startDateWithBufferForEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXCorrelatedEventsDateBuffer.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"event"}];
}

- (void)endDateWithBufferForEvent:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXCorrelatedEventsDateBuffer.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"event"}];
}

@end