@interface _GCMotionEventHIDAdapter
- (_GCMotionEventHIDAdapter)init;
- (_GCMotionEventHIDAdapter)initWithSource:(id)source service:(id)service;
- (id)observeMotionEvents:(id)events;
- (void)dealloc;
@end

@implementation _GCMotionEventHIDAdapter

- (_GCMotionEventHIDAdapter)initWithSource:(id)source service:(id)service
{
  sourceCopy = source;
  serviceCopy = service;
  v19.receiver = self;
  v19.super_class = _GCMotionEventHIDAdapter;
  v9 = [(_GCMotionEventHIDAdapter *)&v19 init];
  if (v9)
  {
    registryID = [serviceCopy registryID];
    unsignedLongLongValue = [registryID unsignedLongLongValue];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51___GCMotionEventHIDAdapter_initWithSource_service___block_invoke;
    v18[3] = &__block_descriptor_48_e23_v16__0____IOHIDEvent__8lu40l8;
    v18[4] = unsignedLongLongValue;
    v18[5] = v9;
    v12 = _Block_copy(v18);
    v13 = objc_opt_new();
    observers = v9->_observers;
    v9->_observers = v13;

    objc_storeStrong(&v9->_HIDEventSource, source);
    v15 = [sourceCopy observeHIDEvents:v12 forService:serviceCopy];
    HIDEventObservation = v9->_HIDEventObservation;
    v9->_HIDEventObservation = v15;
  }

  return v9;
}

- (_GCMotionEventHIDAdapter)init
{
  [(_GCMotionEventHIDAdapter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  HIDEventObservation = self->_HIDEventObservation;
  self->_HIDEventObservation = 0;

  HIDEventSource = self->_HIDEventSource;
  self->_HIDEventSource = 0;

  v5.receiver = self;
  v5.super_class = _GCMotionEventHIDAdapter;
  [(_GCMotionEventHIDAdapter *)&v5 dealloc];
}

- (id)observeMotionEvents:(id)events
{
  v4 = [events copy];
  observers = [(_GCMotionEventHIDAdapter *)self observers];
  v6 = _Block_copy(v4);
  v7 = [observers containsObject:v6];

  if ((v7 & 1) == 0)
  {
    do
    {
      observers2 = [(_GCMotionEventHIDAdapter *)self observers];
      v9 = [observers2 mutableCopy];

      v10 = _Block_copy(v4);
      [v9 addObject:v10];

      [(_GCMotionEventHIDAdapter *)self setObservers:v9];
      observers3 = [(_GCMotionEventHIDAdapter *)self observers];
      v12 = _Block_copy(v4);
      v13 = [observers3 containsObject:v12];
    }

    while (!v13);
  }

  v14 = [_GCObservation alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __48___GCMotionEventHIDAdapter_observeMotionEvents___block_invoke;
  v18[3] = &unk_1E8418BB8;
  v18[4] = self;
  v19 = v4;
  v15 = v4;
  v16 = [(_GCObservation *)v14 initWithCleanupHandler:v18];

  return v16;
}

@end