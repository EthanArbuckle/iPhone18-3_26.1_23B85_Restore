@interface _GCGamepadEventKeyboardEventAdapter
- (_GCGamepadEventKeyboardEventAdapter)init;
- (_GCGamepadEventKeyboardEventAdapter)initWithConfiguration:(id)a3 source:(id)a4;
- (id)observeGamepadEvents:(id)a3;
- (void)dealloc;
@end

@implementation _GCGamepadEventKeyboardEventAdapter

- (_GCGamepadEventKeyboardEventAdapter)initWithConfiguration:(id)a3 source:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = _GCGamepadEventKeyboardEventAdapter;
  v9 = [(_GCGamepadEventKeyboardEventAdapter *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_config, a3);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __68___GCGamepadEventKeyboardEventAdapter_initWithConfiguration_source___block_invoke;
    v16[3] = &__block_descriptor_40_e28_v16__0____GCKeyboardEvent__8lu32l8;
    v16[4] = v10;
    v11 = [v8 observeKeyboardEvents:v16];
    observation = v10->_observation;
    v10->_observation = v11;

    v13 = objc_opt_new();
    observers = v10->_observers;
    v10->_observers = v13;
  }

  return v10;
}

- (_GCGamepadEventKeyboardEventAdapter)init
{
  [(_GCGamepadEventKeyboardEventAdapter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  observation = self->_observation;
  self->_observation = 0;

  v4.receiver = self;
  v4.super_class = _GCGamepadEventKeyboardEventAdapter;
  [(_GCGamepadEventKeyboardEventAdapter *)&v4 dealloc];
}

- (id)observeGamepadEvents:(id)a3
{
  v4 = [a3 copy];
  v5 = [(_GCGamepadEventKeyboardEventAdapter *)self observers];
  v6 = _Block_copy(v4);
  v7 = [v5 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    do
    {
      v8 = [(_GCGamepadEventKeyboardEventAdapter *)self observers];
      v9 = [v8 mutableCopy];

      v10 = _Block_copy(v4);
      [v9 addObject:v10];

      [(_GCGamepadEventKeyboardEventAdapter *)self setObservers:v9];
      v11 = [(_GCGamepadEventKeyboardEventAdapter *)self observers];
      v12 = _Block_copy(v4);
      v13 = [v11 containsObject:v12];
    }

    while (!v13);
  }

  v14 = [_GCObservation alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60___GCGamepadEventKeyboardEventAdapter_observeGamepadEvents___block_invoke;
  v18[3] = &unk_1E8418BB8;
  v18[4] = self;
  v19 = v4;
  v15 = v4;
  v16 = [(_GCObservation *)v14 initWithCleanupHandler:v18];

  return v16;
}

@end