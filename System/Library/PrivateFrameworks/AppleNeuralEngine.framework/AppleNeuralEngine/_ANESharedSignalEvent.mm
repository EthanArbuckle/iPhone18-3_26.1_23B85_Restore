@interface _ANESharedSignalEvent
- (_ANESharedSignalEvent)initWithCoder:(id)coder;
- (_ANESharedSignalEvent)initWithValue:(unint64_t)value symbolIndex:(unsigned int)index eventType:(int64_t)type sharedEvent:(id)event agentMask:(unint64_t)mask;
- (id)description;
- (id)waitEvent;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _ANESharedSignalEvent

- (_ANESharedSignalEvent)initWithValue:(unint64_t)value symbolIndex:(unsigned int)index eventType:(int64_t)type sharedEvent:(id)event agentMask:(unint64_t)mask
{
  eventCopy = event;
  v17.receiver = self;
  v17.super_class = _ANESharedSignalEvent;
  v14 = [(_ANESharedSignalEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_symbolIndex = index;
    v14->_agentMask = mask;
    v14->_eventType = type;
    v14->_value = value;
    objc_storeStrong(&v14->_sharedEvent, event);
  }

  return v15;
}

- (id)waitEvent
{
  value = [(_ANESharedSignalEvent *)self value];
  sharedEvent = [(_ANESharedSignalEvent *)self sharedEvent];
  v5 = [_ANESharedWaitEvent waitEventWithValue:value sharedEvent:sharedEvent eventType:0];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  value = [(_ANESharedSignalEvent *)self value];
  symbolIndex = [(_ANESharedSignalEvent *)self symbolIndex];
  eventType = [(_ANESharedSignalEvent *)self eventType];
  sharedEvent = [(_ANESharedSignalEvent *)self sharedEvent];
  v10 = [v3 stringWithFormat:@"%@: { value=%llu : symbolIndex=%u : eventType=%lu : sharedEvent=%@ agentMask=%llu } ", v5, value, symbolIndex, eventType, sharedEvent, -[_ANESharedSignalEvent agentMask](self, "agentMask")];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[_ANESharedSignalEvent value](self forKey:{"value"), @"value"}];
  [coderCopy encodeInteger:-[_ANESharedSignalEvent symbolIndex](self forKey:{"symbolIndex"), @"symbolIndex"}];
  [coderCopy encodeInteger:-[_ANESharedSignalEvent eventType](self forKey:{"eventType"), @"eventType"}];
  sharedEvent = [(_ANESharedSignalEvent *)self sharedEvent];
  [coderCopy encodeObject:sharedEvent forKey:@"sharedEvent"];
}

- (_ANESharedSignalEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"value"];
  v6 = [coderCopy decodeIntegerForKey:@"symbolIndex"];
  v7 = [coderCopy decodeIntegerForKey:@"eventType"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharedEvent"];
  v9 = [coderCopy decodeIntegerForKey:@"agentMask"];

  v10 = [(_ANESharedSignalEvent *)self initWithValue:v5 symbolIndex:v6 eventType:v7 sharedEvent:v8 agentMask:v9];
  return v10;
}

@end