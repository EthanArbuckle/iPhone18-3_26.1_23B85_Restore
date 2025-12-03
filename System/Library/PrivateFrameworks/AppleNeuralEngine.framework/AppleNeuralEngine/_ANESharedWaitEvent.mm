@interface _ANESharedWaitEvent
+ (id)waitEventWithValue:(unint64_t)value sharedEvent:(id)event;
+ (id)waitEventWithValue:(unint64_t)value sharedEvent:(id)event eventType:(unint64_t)type;
- (_ANESharedWaitEvent)initWithValue:(unint64_t)value sharedEvent:(id)event eventType:(unint64_t)type;
- (id)description;
@end

@implementation _ANESharedWaitEvent

- (_ANESharedWaitEvent)initWithValue:(unint64_t)value sharedEvent:(id)event eventType:(unint64_t)type
{
  eventCopy = event;
  v13.receiver = self;
  v13.super_class = _ANESharedWaitEvent;
  v10 = [(_ANESharedWaitEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_value = value;
    objc_storeStrong(&v10->_sharedEvent, event);
    v11->_eventType = type;
  }

  return v11;
}

+ (id)waitEventWithValue:(unint64_t)value sharedEvent:(id)event
{
  eventCopy = event;
  v7 = [[self alloc] initWithValue:value sharedEvent:eventCopy eventType:0];

  return v7;
}

+ (id)waitEventWithValue:(unint64_t)value sharedEvent:(id)event eventType:(unint64_t)type
{
  eventCopy = event;
  v9 = [[self alloc] initWithValue:value sharedEvent:eventCopy eventType:type];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  value = [(_ANESharedWaitEvent *)self value];
  sharedEvent = [(_ANESharedWaitEvent *)self sharedEvent];
  v8 = [v3 stringWithFormat:@"%@: { value=%llu : sharedEvent=%@ } ", v5, value, sharedEvent];

  return v8;
}

@end