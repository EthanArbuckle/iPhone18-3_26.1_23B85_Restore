@interface ATXScheduledPinnedTimeEvent
- (ATXScheduledPinnedTimeEvent)initWithCoder:(id)coder;
- (ATXScheduledPinnedTimeEvent)initWithPinnedTimeEvent:(id)event granularity:(int64_t)granularity dateComponents:(id)components fuzzyTime:(int64_t)time fuzzyTimeRangeStart:(id)start fuzzyTimeRangeEnd:(id)end;
- (ATXScheduledPinnedTimeEvent)initWithPinnedTimeEvent:(id)event granularity:(int64_t)granularity dateComponents:(id)components fuzzyTime:(int64_t)time fuzzyTimeRangeStart:(id)start fuzzyTimeRangeEnd:(id)end uuid:(id)uuid eventIdentifier:(id)self0;
- (id)copyWithEventIdentifier:(id)identifier;
- (id)copyWithGranularity:(int64_t)granularity dateComponents:(id)components fuzzyTime:(int64_t)time fuzzyTimeRangeStart:(id)start fuzzyTimeRangeEnd:(id)end;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXScheduledPinnedTimeEvent

- (ATXScheduledPinnedTimeEvent)initWithPinnedTimeEvent:(id)event granularity:(int64_t)granularity dateComponents:(id)components fuzzyTime:(int64_t)time fuzzyTimeRangeStart:(id)start fuzzyTimeRangeEnd:(id)end
{
  v14 = MEMORY[0x1E696AFB0];
  endCopy = end;
  startCopy = start;
  componentsCopy = components;
  eventCopy = event;
  uUID = [v14 UUID];
  v20 = [(ATXScheduledPinnedTimeEvent *)self initWithPinnedTimeEvent:eventCopy granularity:granularity dateComponents:componentsCopy fuzzyTime:time fuzzyTimeRangeStart:startCopy fuzzyTimeRangeEnd:endCopy uuid:uUID eventIdentifier:0];

  return v20;
}

- (ATXScheduledPinnedTimeEvent)initWithPinnedTimeEvent:(id)event granularity:(int64_t)granularity dateComponents:(id)components fuzzyTime:(int64_t)time fuzzyTimeRangeStart:(id)start fuzzyTimeRangeEnd:(id)end uuid:(id)uuid eventIdentifier:(id)self0
{
  eventCopy = event;
  componentsCopy = components;
  startCopy = start;
  endCopy = end;
  uuidCopy = uuid;
  identifierCopy = identifier;
  v31.receiver = self;
  v31.super_class = ATXScheduledPinnedTimeEvent;
  v20 = [(ATXScheduledPinnedTimeEvent *)&v31 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_uuid, uuid);
    objc_storeStrong(&v21->_pinnedTimeEvent, event);
    v21->_granularity = granularity;
    v22 = [componentsCopy copy];
    dateComponents = v21->_dateComponents;
    v21->_dateComponents = v22;

    v21->_fuzzyTime = time;
    objc_storeStrong(&v21->_fuzzyTimeRangeStart, start);
    objc_storeStrong(&v21->_fuzzyTimeRangeEnd, end);
    v24 = [identifierCopy copy];
    eventIdentifier = v21->_eventIdentifier;
    v21->_eventIdentifier = v24;

    v26 = v21;
  }

  return v21;
}

- (ATXScheduledPinnedTimeEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pinnedTimeEvent"];
  v7 = [coderCopy decodeIntegerForKey:@"granularity"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateComponents"];
  v9 = [coderCopy decodeIntegerForKey:@"fuzzyTime"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fuzzyTimeRangeStart"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fuzzyTimeRangeEnd"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventIdentifier"];

  v13 = [(ATXScheduledPinnedTimeEvent *)self initWithPinnedTimeEvent:v6 granularity:v7 dateComponents:v8 fuzzyTime:v9 fuzzyTimeRangeStart:v10 fuzzyTimeRangeEnd:v11 uuid:v5 eventIdentifier:v12];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"uuid"];
  [coderCopy encodeObject:self->_pinnedTimeEvent forKey:@"pinnedTimeEvent"];
  [coderCopy encodeInteger:self->_granularity forKey:@"granularity"];
  [coderCopy encodeObject:self->_dateComponents forKey:@"dateComponents"];
  [coderCopy encodeInteger:self->_fuzzyTime forKey:@"fuzzyTime"];
  [coderCopy encodeObject:self->_fuzzyTimeRangeStart forKey:@"fuzzyTimeRangeStart"];
  [coderCopy encodeObject:self->_fuzzyTimeRangeEnd forKey:@"fuzzyTimeRangeEnd"];
  [coderCopy encodeObject:self->_eventIdentifier forKey:@"eventIdentifier"];
}

- (id)copyWithEventIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [objc_alloc(objc_opt_class()) initWithPinnedTimeEvent:self->_pinnedTimeEvent granularity:self->_granularity dateComponents:self->_dateComponents fuzzyTime:self->_fuzzyTime fuzzyTimeRangeStart:self->_fuzzyTimeRangeStart fuzzyTimeRangeEnd:self->_fuzzyTimeRangeEnd uuid:self->_uuid eventIdentifier:identifierCopy];

  return v5;
}

- (id)copyWithGranularity:(int64_t)granularity dateComponents:(id)components fuzzyTime:(int64_t)time fuzzyTimeRangeStart:(id)start fuzzyTimeRangeEnd:(id)end
{
  endCopy = end;
  startCopy = start;
  componentsCopy = components;
  v15 = [objc_alloc(objc_opt_class()) initWithPinnedTimeEvent:self->_pinnedTimeEvent granularity:granularity dateComponents:componentsCopy fuzzyTime:time fuzzyTimeRangeStart:startCopy fuzzyTimeRangeEnd:endCopy uuid:self->_uuid eventIdentifier:self->_eventIdentifier];

  return v15;
}

@end