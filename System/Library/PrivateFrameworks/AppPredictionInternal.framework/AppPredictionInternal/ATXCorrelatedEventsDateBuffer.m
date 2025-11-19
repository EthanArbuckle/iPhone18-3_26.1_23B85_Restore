@interface ATXCorrelatedEventsDateBuffer
- (ATXCorrelatedEventsDateBuffer)initWithBufferSeconds:(double)a3 andBufferType:(int64_t)a4;
- (id)endDateWithBufferForEvent:(id)a3;
- (id)startDateWithBufferForEvent:(id)a3;
@end

@implementation ATXCorrelatedEventsDateBuffer

- (ATXCorrelatedEventsDateBuffer)initWithBufferSeconds:(double)a3 andBufferType:(int64_t)a4
{
  v4 = self;
  if (a4 < 3)
  {
    v11.receiver = self;
    v11.super_class = ATXCorrelatedEventsDateBuffer;
    v9 = [(ATXCorrelatedEventsDateBuffer *)&v11 init];
    if (v9)
    {
      v9->_bufferSeconds = a3;
      v9->_bufferType = a4;
    }

    v4 = v9;
    v6 = v4;
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

- (id)startDateWithBufferForEvent:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(ATXCorrelatedEventsDateBuffer *)a2 startDateWithBufferForEvent:?];
  }

  v6 = MEMORY[0x277CBEAA8];
  v7 = -self->_bufferSeconds;
  if ((self->_bufferType | 2) == 2)
  {
    [v5 startDate];
  }

  else
  {
    [v5 endDate];
  }
  v8 = ;
  v9 = [v6 dateWithTimeInterval:v8 sinceDate:v7];

  return v9;
}

- (id)endDateWithBufferForEvent:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(ATXCorrelatedEventsDateBuffer *)a2 endDateWithBufferForEvent:?];
  }

  v6 = MEMORY[0x277CBEAA8];
  bufferSeconds = self->_bufferSeconds;
  if ((self->_bufferType - 1) > 1)
  {
    [v5 startDate];
  }

  else
  {
    [v5 endDate];
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