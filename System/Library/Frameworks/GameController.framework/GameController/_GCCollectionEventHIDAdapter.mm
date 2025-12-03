@interface _GCCollectionEventHIDAdapter
- (_GCCollectionEventHIDAdapter)init;
- (_GCCollectionEventHIDAdapter)initWithRootParser:(id)parser source:(id)source service:(id)service;
- (id)observeCollectionEvents:(id)events;
- (void)dealloc;
@end

@implementation _GCCollectionEventHIDAdapter

- (_GCCollectionEventHIDAdapter)initWithRootParser:(id)parser source:(id)source service:(id)service
{
  parserCopy = parser;
  sourceCopy = source;
  serviceCopy = service;
  v25.receiver = self;
  v25.super_class = _GCCollectionEventHIDAdapter;
  v12 = [(_GCCollectionEventHIDAdapter *)&v25 init];
  if (v12)
  {
    registryID = [serviceCopy registryID];
    unsignedLongLongValue = [registryID unsignedLongLongValue];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __66___GCCollectionEventHIDAdapter_initWithRootParser_source_service___block_invoke;
    aBlock[3] = &unk_1E841A2F8;
    v23 = unsignedLongLongValue;
    v22 = parserCopy;
    v24 = v12;
    v15 = _Block_copy(aBlock);
    objc_storeStrong(&v12->_parser, parser);
    v16 = objc_opt_new();
    observers = v12->_observers;
    v12->_observers = v16;

    objc_storeStrong(&v12->_HIDEventSource, source);
    v18 = [sourceCopy observeHIDEvents:v15 forService:serviceCopy];
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

- (id)observeCollectionEvents:(id)events
{
  v4 = [events copy];
  observers = [(_GCCollectionEventHIDAdapter *)self observers];
  v6 = _Block_copy(v4);
  v7 = [observers containsObject:v6];

  if ((v7 & 1) == 0)
  {
    do
    {
      observers2 = [(_GCCollectionEventHIDAdapter *)self observers];
      v9 = [observers2 mutableCopy];

      v10 = _Block_copy(v4);
      [v9 addObject:v10];

      [(_GCCollectionEventHIDAdapter *)self setObservers:v9];
      observers3 = [(_GCCollectionEventHIDAdapter *)self observers];
      v12 = _Block_copy(v4);
      v13 = [observers3 containsObject:v12];
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