@interface _GCDevicePhysicalInputComponent
- (_GCDevicePhysicalInputComponent)init;
- (_GCDevicePhysicalInputComponent)initWithIdentifier:(id)identifier defaultPhysicalInput:(id)input;
- (_GCDevicePhysicalInputComponent)initWithIdentifier:(id)identifier physicalInputs:(id)inputs;
- (id)_initWithIdentifier:(void *)identifier physicalInputGroup:;
- (id)capture;
- (id)defaultPhysicalInput;
- (id)device;
- (void)handleCollectionEvent:(id)event;
- (void)handleGamepadEvent:(id)event;
- (void)setCollectionEventSource:(id)source;
- (void)setGamepadEventSource:(id)source;
@end

@implementation _GCDevicePhysicalInputComponent

- (_GCDevicePhysicalInputComponent)initWithIdentifier:(id)identifier defaultPhysicalInput:(id)input
{
  v13[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  inputCopy = input;
  if (!inputCopy)
  {
    [_GCDevicePhysicalInputComponent initWithIdentifier:a2 defaultPhysicalInput:self];
  }

  v13[0] = inputCopy;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
  v10 = [(_GCDevicePhysicalInputComponent *)self initWithIdentifier:identifierCopy physicalInputs:v9];

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (_GCDevicePhysicalInputComponent)init
{
  [(_GCDevicePhysicalInputComponent *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)handleGamepadEvent:(id)event
{
  eventCopy = event;
  queue = [(_GCDevicePhysicalInputGroup *)self->_defaultPhysicalInputGroup queue];
  if (queue)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62___GCDevicePhysicalInputComponent_PubSub__handleGamepadEvent___block_invoke;
    v6[3] = &unk_1E8418C50;
    v6[4] = self;
    v7 = eventCopy;
    dispatch_async(queue, v6);
  }
}

- (void)handleCollectionEvent:(id)event
{
  eventCopy = event;
  queue = [(_GCDevicePhysicalInputGroup *)self->_defaultPhysicalInputGroup queue];
  if (queue)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __65___GCDevicePhysicalInputComponent_PubSub__handleCollectionEvent___block_invoke;
    v6[3] = &unk_1E8418C50;
    v6[4] = self;
    v7 = eventCopy;
    dispatch_async(queue, v6);
  }
}

- (void)setGamepadEventSource:(id)source
{
  sourceCopy = source;
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
    v6 = [sourceCopy observeGamepadEvents:v8];
    v7 = self->_gamepadEventObservation;
    self->_gamepadEventObservation = v6;

    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

- (void)setCollectionEventSource:(id)source
{
  sourceCopy = source;
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
    v6 = [sourceCopy observeCollectionEvents:v8];
    v7 = self->_collectionEventObservation;
    self->_collectionEventObservation = v6;

    objc_destroyWeak(&v9);
  }

  objc_destroyWeak(&location);
}

- (id)_initWithIdentifier:(void *)identifier physicalInputGroup:
{
  v5 = a2;
  identifierCopy = identifier;
  if (self)
  {
    if (!v5)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithIdentifier_physicalInputGroup_ object:self file:@"_GCDevicePhysicalInputComponent.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %s", "identifier != nil"}];
    }

    v11.receiver = self;
    v11.super_class = _GCDevicePhysicalInputComponent;
    self = objc_msgSendSuper2(&v11, sel_init);
    v7 = [v5 copyWithZone:0];
    v8 = self[4];
    self[4] = v7;

    objc_storeStrong(self + 1, identifier);
    [(_GCDevicePhysicalInputGroup *)self[1] setDataSource:self];
  }

  return self;
}

- (_GCDevicePhysicalInputComponent)initWithIdentifier:(id)identifier physicalInputs:(id)inputs
{
  inputsCopy = inputs;
  identifierCopy = identifier;
  v8 = [[_GCDevicePhysicalInputGroup alloc] initWithPhysicalInputs:inputsCopy];

  v9 = [(_GCDevicePhysicalInputComponent *)&self->super.isa _initWithIdentifier:identifierCopy physicalInputGroup:v8];
  return v9;
}

- (id)defaultPhysicalInput
{
  if (self)
  {
    self = [(_GCDevicePhysicalInputGroup *)self[1] defaultPhysicalInput];
    v2 = vars8;
  }

  return self;
}

- (id)capture
{
  v3 = [_GCDevicePhysicalInputComponent alloc];
  identifier = [(_GCDevicePhysicalInputComponent *)self identifier];
  capture = [(_GCDevicePhysicalInputGroup *)self->_defaultPhysicalInputGroup capture];
  v6 = [(_GCDevicePhysicalInputComponent *)&v3->super.isa _initWithIdentifier:identifier physicalInputGroup:capture];

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