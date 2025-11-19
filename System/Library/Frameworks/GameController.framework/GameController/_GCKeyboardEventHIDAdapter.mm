@interface _GCKeyboardEventHIDAdapter
- (_GCKeyboardEventHIDAdapter)init;
- (_GCKeyboardEventHIDAdapter)initWithSource:(id)a3 service:(id)a4;
- (id)observeKeyboardEvents:(id)a3;
- (void)dealloc;
@end

@implementation _GCKeyboardEventHIDAdapter

- (_GCKeyboardEventHIDAdapter)initWithSource:(id)a3 service:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = _GCKeyboardEventHIDAdapter;
  v9 = [(_GCKeyboardEventHIDAdapter *)&v19 init];
  if (v9)
  {
    v10 = [v8 registryID];
    v11 = [v10 unsignedLongLongValue];

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __53___GCKeyboardEventHIDAdapter_initWithSource_service___block_invoke;
    v18[3] = &__block_descriptor_48_e23_v16__0____IOHIDEvent__8lu40l8;
    v18[4] = v11;
    v18[5] = v9;
    v12 = _Block_copy(v18);
    v13 = objc_opt_new();
    observers = v9->_observers;
    v9->_observers = v13;

    objc_storeStrong(&v9->_HIDEventSource, a3);
    v15 = [v7 observeHIDEvents:v12 forService:v8];
    HIDEventObservation = v9->_HIDEventObservation;
    v9->_HIDEventObservation = v15;
  }

  return v9;
}

- (_GCKeyboardEventHIDAdapter)init
{
  [(_GCKeyboardEventHIDAdapter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  HIDEventObservation = self->_HIDEventObservation;
  self->_HIDEventObservation = 0;

  HIDEventSource = self->_HIDEventSource;
  self->_HIDEventSource = 0;

  v5.receiver = self;
  v5.super_class = _GCKeyboardEventHIDAdapter;
  [(_GCKeyboardEventHIDAdapter *)&v5 dealloc];
}

- (id)observeKeyboardEvents:(id)a3
{
  v4 = [a3 copy];
  v5 = [(_GCKeyboardEventHIDAdapter *)self observers];
  v6 = _Block_copy(v4);
  v7 = [v5 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    do
    {
      v8 = [(_GCKeyboardEventHIDAdapter *)self observers];
      v9 = [v8 mutableCopy];

      v10 = _Block_copy(v4);
      [v9 addObject:v10];

      [(_GCKeyboardEventHIDAdapter *)self setObservers:v9];
      v11 = [(_GCKeyboardEventHIDAdapter *)self observers];
      v12 = _Block_copy(v4);
      v13 = [v11 containsObject:v12];
    }

    while (!v13);
  }

  v14 = [_GCObservation alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52___GCKeyboardEventHIDAdapter_observeKeyboardEvents___block_invoke;
  v18[3] = &unk_1E8418BB8;
  v18[4] = self;
  v19 = v4;
  v15 = v4;
  v16 = [(_GCObservation *)v14 initWithCleanupHandler:v18];

  return v16;
}

@end