@interface _GCCollectionEventHIDAdapter
- (_GCCollectionEventHIDAdapter)init;
- (_GCCollectionEventHIDAdapter)initWithRootParser:(id)a3 source:(id)a4 service:(id)a5;
- (id)observeCollectionEvents:(id)a3;
- (void)dealloc;
@end

@implementation _GCCollectionEventHIDAdapter

- (_GCCollectionEventHIDAdapter)initWithRootParser:(id)a3 source:(id)a4 service:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v25.receiver = self;
  v25.super_class = _GCCollectionEventHIDAdapter;
  v12 = [(_GCCollectionEventHIDAdapter *)&v25 init];
  if (v12)
  {
    v13 = [v11 registryID];
    v14 = [v13 unsignedLongLongValue];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66___GCCollectionEventHIDAdapter_initWithRootParser_source_service___block_invoke;
    aBlock[3] = &unk_1E841A2F8;
    v23 = v14;
    v22 = v9;
    v24 = v12;
    v15 = _Block_copy(aBlock);
    objc_storeStrong(&v12->_parser, a3);
    v16 = objc_opt_new();
    observers = v12->_observers;
    v12->_observers = v16;

    objc_storeStrong(&v12->_HIDEventSource, a4);
    v18 = [v10 observeHIDEvents:v15 forService:v11];
    HIDEventObservation = v12->_HIDEventObservation;
    v12->_HIDEventObservation = v18;
  }

  return v12;
}

- (_GCCollectionEventHIDAdapter)init
{
  [(_GCCollectionEventHIDAdapter *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  HIDEventObservation = self->_HIDEventObservation;
  self->_HIDEventObservation = 0;

  HIDEventSource = self->_HIDEventSource;
  self->_HIDEventSource = 0;

  v5.receiver = self;
  v5.super_class = _GCCollectionEventHIDAdapter;
  [(_GCCollectionEventHIDAdapter *)&v5 dealloc];
}

- (id)observeCollectionEvents:(id)a3
{
  v4 = [a3 copy];
  v5 = [(_GCCollectionEventHIDAdapter *)self observers];
  v6 = _Block_copy(v4);
  v7 = [v5 containsObject:v6];

  if ((v7 & 1) == 0)
  {
    do
    {
      v8 = [(_GCCollectionEventHIDAdapter *)self observers];
      v9 = [v8 mutableCopy];

      v10 = _Block_copy(v4);
      [v9 addObject:v10];

      [(_GCCollectionEventHIDAdapter *)self setObservers:v9];
      v11 = [(_GCCollectionEventHIDAdapter *)self observers];
      v12 = _Block_copy(v4);
      v13 = [v11 containsObject:v12];
    }

    while (!v13);
  }

  v14 = [_GCObservation alloc];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56___GCCollectionEventHIDAdapter_observeCollectionEvents___block_invoke;
  v18[3] = &unk_1E8418BB8;
  v18[4] = self;
  v19 = v4;
  v15 = v4;
  v16 = [(_GCObservation *)v14 initWithCleanupHandler:v18];

  return v16;
}

@end