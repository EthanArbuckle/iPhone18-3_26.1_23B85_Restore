@interface _ANESharedWaitEvent
+ (id)waitEventWithValue:(unint64_t)a3 sharedEvent:(id)a4;
+ (id)waitEventWithValue:(unint64_t)a3 sharedEvent:(id)a4 eventType:(unint64_t)a5;
- (_ANESharedWaitEvent)initWithValue:(unint64_t)a3 sharedEvent:(id)a4 eventType:(unint64_t)a5;
- (id)description;
@end

@implementation _ANESharedWaitEvent

- (_ANESharedWaitEvent)initWithValue:(unint64_t)a3 sharedEvent:(id)a4 eventType:(unint64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = _ANESharedWaitEvent;
  v10 = [(_ANESharedWaitEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_value = a3;
    objc_storeStrong(&v10->_sharedEvent, a4);
    v11->_eventType = a5;
  }

  return v11;
}

+ (id)waitEventWithValue:(unint64_t)a3 sharedEvent:(id)a4
{
  v6 = a4;
  v7 = [[a1 alloc] initWithValue:a3 sharedEvent:v6 eventType:0];

  return v7;
}

+ (id)waitEventWithValue:(unint64_t)a3 sharedEvent:(id)a4 eventType:(unint64_t)a5
{
  v8 = a4;
  v9 = [[a1 alloc] initWithValue:a3 sharedEvent:v8 eventType:a5];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_ANESharedWaitEvent *)self value];
  v7 = [(_ANESharedWaitEvent *)self sharedEvent];
  v8 = [v3 stringWithFormat:@"%@: { value=%llu : sharedEvent=%@ } ", v5, v6, v7];

  return v8;
}

@end