@interface ATXScheduledPinnedTimeEvent
- (ATXScheduledPinnedTimeEvent)initWithCoder:(id)a3;
- (ATXScheduledPinnedTimeEvent)initWithPinnedTimeEvent:(id)a3 granularity:(int64_t)a4 dateComponents:(id)a5 fuzzyTime:(int64_t)a6 fuzzyTimeRangeStart:(id)a7 fuzzyTimeRangeEnd:(id)a8;
- (ATXScheduledPinnedTimeEvent)initWithPinnedTimeEvent:(id)a3 granularity:(int64_t)a4 dateComponents:(id)a5 fuzzyTime:(int64_t)a6 fuzzyTimeRangeStart:(id)a7 fuzzyTimeRangeEnd:(id)a8 uuid:(id)a9 eventIdentifier:(id)a10;
- (id)copyWithEventIdentifier:(id)a3;
- (id)copyWithGranularity:(int64_t)a3 dateComponents:(id)a4 fuzzyTime:(int64_t)a5 fuzzyTimeRangeStart:(id)a6 fuzzyTimeRangeEnd:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXScheduledPinnedTimeEvent

- (ATXScheduledPinnedTimeEvent)initWithPinnedTimeEvent:(id)a3 granularity:(int64_t)a4 dateComponents:(id)a5 fuzzyTime:(int64_t)a6 fuzzyTimeRangeStart:(id)a7 fuzzyTimeRangeEnd:(id)a8
{
  v14 = MEMORY[0x1E696AFB0];
  v15 = a8;
  v16 = a7;
  v17 = a5;
  v18 = a3;
  v19 = [v14 UUID];
  v20 = [(ATXScheduledPinnedTimeEvent *)self initWithPinnedTimeEvent:v18 granularity:a4 dateComponents:v17 fuzzyTime:a6 fuzzyTimeRangeStart:v16 fuzzyTimeRangeEnd:v15 uuid:v19 eventIdentifier:0];

  return v20;
}

- (ATXScheduledPinnedTimeEvent)initWithPinnedTimeEvent:(id)a3 granularity:(int64_t)a4 dateComponents:(id)a5 fuzzyTime:(int64_t)a6 fuzzyTimeRangeStart:(id)a7 fuzzyTimeRangeEnd:(id)a8 uuid:(id)a9 eventIdentifier:(id)a10
{
  v30 = a3;
  v16 = a5;
  v29 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  v31.receiver = self;
  v31.super_class = ATXScheduledPinnedTimeEvent;
  v20 = [(ATXScheduledPinnedTimeEvent *)&v31 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_uuid, a9);
    objc_storeStrong(&v21->_pinnedTimeEvent, a3);
    v21->_granularity = a4;
    v22 = [v16 copy];
    dateComponents = v21->_dateComponents;
    v21->_dateComponents = v22;

    v21->_fuzzyTime = a6;
    objc_storeStrong(&v21->_fuzzyTimeRangeStart, a7);
    objc_storeStrong(&v21->_fuzzyTimeRangeEnd, a8);
    v24 = [v19 copy];
    eventIdentifier = v21->_eventIdentifier;
    v21->_eventIdentifier = v24;

    v26 = v21;
  }

  return v21;
}

- (ATXScheduledPinnedTimeEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pinnedTimeEvent"];
  v7 = [v4 decodeIntegerForKey:@"granularity"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateComponents"];
  v9 = [v4 decodeIntegerForKey:@"fuzzyTime"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fuzzyTimeRangeStart"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fuzzyTimeRangeEnd"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventIdentifier"];

  v13 = [(ATXScheduledPinnedTimeEvent *)self initWithPinnedTimeEvent:v6 granularity:v7 dateComponents:v8 fuzzyTime:v9 fuzzyTimeRangeStart:v10 fuzzyTimeRangeEnd:v11 uuid:v5 eventIdentifier:v12];
  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"uuid"];
  [v5 encodeObject:self->_pinnedTimeEvent forKey:@"pinnedTimeEvent"];
  [v5 encodeInteger:self->_granularity forKey:@"granularity"];
  [v5 encodeObject:self->_dateComponents forKey:@"dateComponents"];
  [v5 encodeInteger:self->_fuzzyTime forKey:@"fuzzyTime"];
  [v5 encodeObject:self->_fuzzyTimeRangeStart forKey:@"fuzzyTimeRangeStart"];
  [v5 encodeObject:self->_fuzzyTimeRangeEnd forKey:@"fuzzyTimeRangeEnd"];
  [v5 encodeObject:self->_eventIdentifier forKey:@"eventIdentifier"];
}

- (id)copyWithEventIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithPinnedTimeEvent:self->_pinnedTimeEvent granularity:self->_granularity dateComponents:self->_dateComponents fuzzyTime:self->_fuzzyTime fuzzyTimeRangeStart:self->_fuzzyTimeRangeStart fuzzyTimeRangeEnd:self->_fuzzyTimeRangeEnd uuid:self->_uuid eventIdentifier:v4];

  return v5;
}

- (id)copyWithGranularity:(int64_t)a3 dateComponents:(id)a4 fuzzyTime:(int64_t)a5 fuzzyTimeRangeStart:(id)a6 fuzzyTimeRangeEnd:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = [objc_alloc(objc_opt_class()) initWithPinnedTimeEvent:self->_pinnedTimeEvent granularity:a3 dateComponents:v14 fuzzyTime:a5 fuzzyTimeRangeStart:v13 fuzzyTimeRangeEnd:v12 uuid:self->_uuid eventIdentifier:self->_eventIdentifier];

  return v15;
}

@end