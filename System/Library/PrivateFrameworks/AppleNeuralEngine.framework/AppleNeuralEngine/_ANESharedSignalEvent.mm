@interface _ANESharedSignalEvent
- (_ANESharedSignalEvent)initWithCoder:(id)a3;
- (_ANESharedSignalEvent)initWithValue:(unint64_t)a3 symbolIndex:(unsigned int)a4 eventType:(int64_t)a5 sharedEvent:(id)a6 agentMask:(unint64_t)a7;
- (id)description;
- (id)waitEvent;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _ANESharedSignalEvent

- (_ANESharedSignalEvent)initWithValue:(unint64_t)a3 symbolIndex:(unsigned int)a4 eventType:(int64_t)a5 sharedEvent:(id)a6 agentMask:(unint64_t)a7
{
  v13 = a6;
  v17.receiver = self;
  v17.super_class = _ANESharedSignalEvent;
  v14 = [(_ANESharedSignalEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_symbolIndex = a4;
    v14->_agentMask = a7;
    v14->_eventType = a5;
    v14->_value = a3;
    objc_storeStrong(&v14->_sharedEvent, a6);
  }

  return v15;
}

- (id)waitEvent
{
  v3 = [(_ANESharedSignalEvent *)self value];
  v4 = [(_ANESharedSignalEvent *)self sharedEvent];
  v5 = [_ANESharedWaitEvent waitEventWithValue:v3 sharedEvent:v4 eventType:0];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_ANESharedSignalEvent *)self value];
  v7 = [(_ANESharedSignalEvent *)self symbolIndex];
  v8 = [(_ANESharedSignalEvent *)self eventType];
  v9 = [(_ANESharedSignalEvent *)self sharedEvent];
  v10 = [v3 stringWithFormat:@"%@: { value=%llu : symbolIndex=%u : eventType=%lu : sharedEvent=%@ agentMask=%llu } ", v5, v6, v7, v8, v9, -[_ANESharedSignalEvent agentMask](self, "agentMask")];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[_ANESharedSignalEvent value](self forKey:{"value"), @"value"}];
  [v4 encodeInteger:-[_ANESharedSignalEvent symbolIndex](self forKey:{"symbolIndex"), @"symbolIndex"}];
  [v4 encodeInteger:-[_ANESharedSignalEvent eventType](self forKey:{"eventType"), @"eventType"}];
  v5 = [(_ANESharedSignalEvent *)self sharedEvent];
  [v4 encodeObject:v5 forKey:@"sharedEvent"];
}

- (_ANESharedSignalEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"value"];
  v6 = [v4 decodeIntegerForKey:@"symbolIndex"];
  v7 = [v4 decodeIntegerForKey:@"eventType"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharedEvent"];
  v9 = [v4 decodeIntegerForKey:@"agentMask"];

  v10 = [(_ANESharedSignalEvent *)self initWithValue:v5 symbolIndex:v6 eventType:v7 sharedEvent:v8 agentMask:v9];
  return v10;
}

@end