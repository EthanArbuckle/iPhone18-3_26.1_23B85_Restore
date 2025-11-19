@interface _GCDevicePhysicalInputComponent
- (_GCDevicePhysicalInputComponent)init;
- (_GCDevicePhysicalInputComponent)initWithIdentifier:(id)a3 defaultPhysicalInput:(id)a4;
- (_GCDevicePhysicalInputComponent)initWithIdentifier:(id)a3 physicalInputs:(id)a4;
- (id)_initWithIdentifier:(void *)a3 physicalInputGroup:;
- (id)capture;
- (id)defaultPhysicalInput;
- (id)device;
- (void)handleCollectionEvent:(id)a3;
- (void)handleGamepadEvent:(id)a3;
- (void)setCollectionEventSource:(id)a3;
- (void)setGamepadEventSource:(id)a3;
@end

@implementation _GCDevicePhysicalInputComponent

- (_GCDevicePhysicalInputComponent)initWithIdentifier:(id)a3 defaultPhysicalInput:(id)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [_GCDevicePhysicalInputComponent initWithIdentifier:a2 defaultPhysicalInput:self];
  }

  v13[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10 = [(_GCDevicePhysicalInputComponent *)self initWithIdentifier:v7 physicalInputs:v9];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (_GCDevicePhysicalInputComponent)init
{
  [(_GCDevicePhysicalInputComponent *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)handleGamepadEvent:(id)a3
{
  v4 = a3;
  v5 = [(_GCDevicePhysicalInputGroup *)self->_defaultPhysicalInputGroup queue];
  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62___GCDevicePhysicalInputComponent_PubSub__handleGamepadEvent___block_invoke;
    v6[3] = &unk_1E8418C50;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)handleCollectionEvent:(id)a3
{
  v4 = a3;
  v5 = [(_GCDevicePhysicalInputGroup *)self->_defaultPhysicalInputGroup queue];
  if (v5)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65___GCDevicePhysicalInputComponent_PubSub__handleCollectionEvent___block_invoke;
    v6[3] = &unk_1E8418C50;
    v6[4] = self;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

- (void)setGamepadEventSource:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if (([(_GCDevicePhysicalInputGroup *)self->_defaultPhysicalInputGroup isSnapshot]& 1) == 0)
  {
    gamepadEventObservation = self->_gamepadEventObservation;
    self->_gamepadEventObservation = 0;

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65___GCDevicePhysicalInputComponent_PubSub__setGamepadEventSource___block_invoke;
    v8[3] = &unk_1E841A588;
    objc_copyWeak(&v9, &location);
    v6 = [v4 observeGamepadEvents:v8];
    v7 = self->_gamepadEventObservation;
    self->_gamepadEventObservation = v6;

    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

- (void)setCollectionEventSource:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  if (([(_GCDevicePhysicalInputGroup *)self->_defaultPhysicalInputGroup isSnapshot]& 1) == 0)
  {
    collectionEventObservation = self->_collectionEventObservation;
    self->_collectionEventObservation = 0;

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __68___GCDevicePhysicalInputComponent_PubSub__setCollectionEventSource___block_invoke;
    v8[3] = &unk_1E841A5B0;
    objc_copyWeak(&v9, &location);
    v6 = [v4 observeCollectionEvents:v8];
    v7 = self->_collectionEventObservation;
    self->_collectionEventObservation = v6;

    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

- (id)_initWithIdentifier:(void *)a3 physicalInputGroup:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    if (!v5)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:sel__initWithIdentifier_physicalInputGroup_ object:a1 file:@"_GCDevicePhysicalInputComponent.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %s", "identifier != nil"}];
    }

    v11.receiver = a1;
    v11.super_class = _GCDevicePhysicalInputComponent;
    a1 = objc_msgSendSuper2(&v11, sel_init);
    v7 = [v5 copyWithZone:0];
    v8 = a1[4];
    a1[4] = v7;

    objc_storeStrong(a1 + 1, a3);
    [(_GCDevicePhysicalInputGroup *)a1[1] setDataSource:a1];
  }

  return a1;
}

- (_GCDevicePhysicalInputComponent)initWithIdentifier:(id)a3 physicalInputs:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[_GCDevicePhysicalInputGroup alloc] initWithPhysicalInputs:v6];

  v9 = [(_GCDevicePhysicalInputComponent *)&self->super.isa _initWithIdentifier:v7 physicalInputGroup:v8];
  return v9;
}

- (id)defaultPhysicalInput
{
  if (a1)
  {
    a1 = [(_GCDevicePhysicalInputGroup *)a1[1] defaultPhysicalInput];
    v2 = vars8;
  }

  return a1;
}

- (id)capture
{
  v3 = [_GCDevicePhysicalInputComponent alloc];
  v4 = [(_GCDevicePhysicalInputComponent *)self identifier];
  v5 = [(_GCDevicePhysicalInputGroup *)self->_defaultPhysicalInputGroup capture];
  v6 = [(_GCDevicePhysicalInputComponent *)&v3->super.isa _initWithIdentifier:v4 physicalInputGroup:v5];

  return v6;
}

- (id)device
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 5);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)initWithIdentifier:(uint64_t)a1 defaultPhysicalInput:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCDevicePhysicalInputComponent.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %s", "physicalInput != nil"}];
}

@end