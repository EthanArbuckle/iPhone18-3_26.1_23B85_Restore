@interface _GCDevicePhysicalInputGroup
- (_GCDevicePhysicalInputGroup)capture;
- (_GCDevicePhysicalInputGroup)init;
- (_GCDevicePhysicalInputGroup)initWithPhysicalInputs:(id)inputs;
- (id)dataSource;
- (id)defaultPhysicalInput;
- (id)physicalInputQueue:(id)queue;
- (id)physicalInputWithAttributes:(id)attributes;
- (id)physicalInputs;
- (id)queue;
- (id)setDataSource:(id *)result;
- (uint64_t)isSnapshot;
- (uint64_t)transactionQueueDepth;
- (void)_locked_setClientQueue:(int)queue override:;
- (void)dealloc;
- (void)handleCollectionEvent:(void *)event;
- (void)handleGamepadEvent:(void *)event;
- (void)physicalInput:(id)input setQueue:(id)queue;
- (void)physicalInputPoll:(id)poll forLatest:(BOOL)latest;
- (void)physicalInputTransactionQueueDepthDidChange:(id)change;
- (void)setDeviceDispatchQueue:(void *)queue;
@end

@implementation _GCDevicePhysicalInputGroup

- (_GCDevicePhysicalInputGroup)initWithPhysicalInputs:(id)inputs
{
  v34[1] = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  if (!inputsCopy)
  {
    [(_GCDevicePhysicalInputGroup *)a2 initWithPhysicalInputs:?];
  }

  if (![inputsCopy count])
  {
    [(_GCDevicePhysicalInputGroup *)a2 initWithPhysicalInputs:?];
  }

  v31.receiver = self;
  v31.super_class = _GCDevicePhysicalInputGroup;
  v5 = [(_GCDevicePhysicalInputGroup *)&v31 init];
  if ([inputsCopy count] == 1)
  {
    firstObject = [inputsCopy firstObject];
    [firstObject setDataSource:v5];

    v7 = [MEMORY[0x1E695DFD8] set];
    v33 = v7;
    firstObject2 = [inputsCopy firstObject];
    v34[0] = firstObject2;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    physicalInputs = v5->_physicalInputs;
    v5->_physicalInputs = v9;
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(inputsCopy, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = inputsCopy;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          attributes = [(_GCDevicePhysicalInputBase *)v16 attributes];
          v18 = [v7 objectForKey:attributes];

          if (v18)
          {
            [_GCDevicePhysicalInputGroup initWithPhysicalInputs:];
          }

          [v7 setObject:v16 forKey:attributes];
          [v16 setDataSource:v5];
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v13);
    }

    v19 = [v7 copy];
    firstObject2 = v5->_physicalInputs;
    v5->_physicalInputs = v19;
  }

  v20 = v5->_physicalInputs;
  v21 = [MEMORY[0x1E695DFD8] set];
  v22 = [(NSDictionary *)v20 objectForKey:v21];
  defaultPhysicalInput = v5->_defaultPhysicalInput;
  v5->_defaultPhysicalInput = v22;

  if (!v5->_defaultPhysicalInput)
  {
    [_GCDevicePhysicalInputGroup initWithPhysicalInputs:];
  }

  objc_opt_class();
  v5->_isSnapshot = (objc_opt_isKindOfClass() & 1) == 0;

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_GCDevicePhysicalInputGroup)init
{
  [(_GCDevicePhysicalInputGroup *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  [(NSDictionary *)self->_physicalInputs enumerateKeysAndObjectsUsingBlock:&__block_literal_global_17];
  v3.receiver = self;
  v3.super_class = _GCDevicePhysicalInputGroup;
  [(_GCDevicePhysicalInputGroup *)&v3 dealloc];
}

- (id)physicalInputWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (attributesCopy && [attributesCopy count])
  {
    v6 = [(NSDictionary *)self->_physicalInputs objectForKey:v5];
  }

  else
  {
    v6 = self->_defaultPhysicalInput;
  }

  v7 = v6;

  return v7;
}

- (void)setDeviceDispatchQueue:(void *)queue
{
  v4 = a2;
  if (queue)
  {
    queueCopy = queue;
    objc_sync_enter(queueCopy);
    if ((queueCopy[41] & 1) == 0)
    {
      [(_GCDevicePhysicalInputGroup *)queueCopy _locked_setClientQueue:v4 override:0];
    }

    objc_sync_exit(queueCopy);
  }
}

- (uint64_t)transactionQueueDepth
{
  if (!self || (*(self + 40) & 1) != 0)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(self + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52___GCDevicePhysicalInputGroup_transactionQueueDepth__block_invoke;
  v4[3] = &unk_1E841A080;
  v4[4] = &v5;
  [v1 enumerateKeysAndObjectsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)physicalInputQueue:(id)queue
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v4 = selfCopy->_clientQueue;
  objc_sync_exit(selfCopy);

  return v4;
}

- (void)physicalInput:(id)input setQueue:(id)queue
{
  inputCopy = input;
  queueCopy = queue;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(_GCDevicePhysicalInputGroup *)selfCopy _locked_setClientQueue:queueCopy override:1];
  objc_sync_exit(selfCopy);
}

- (id)physicalInputs
{
  if (self)
  {
    v1 = MEMORY[0x1E695DFD8];
    allValues = [*(self + 8) allValues];
    v3 = [v1 setWithArray:allValues];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)queue
{
  if (!self || (self[40] & 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v2 = selfCopy[4];
    objc_sync_exit(selfCopy);
  }

  return v2;
}

- (void)_locked_setClientQueue:(int)queue override:
{
  v6 = a2;
  if (self && (*(self + 40) & 1) == 0)
  {
    if (queue)
    {
      *(self + 41) = 1;
    }

    if (*(self + 24) != v6)
    {
      v11 = v6;
      [*(self + 8) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_109];
      objc_storeStrong((self + 24), a2);
      v7 = *(self + 24);
      if (v7)
      {
        v8 = dispatch_queue_create_with_target_V2("GCDevicePhysicalInput", 0, v7);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(self + 32);
      *(self + 32) = v8;

      [*(self + 8) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_115];
      WeakRetained = objc_loadWeakRetained((self + 48));
      [WeakRetained physicalInputGroupQueueDidChange:self];

      v6 = v11;
    }
  }
}

- (id)dataSource
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 6);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)physicalInputTransactionQueueDepthDidChange:(id)change
{
  selfCopy = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_dataSource);
  }

  selfCopy2 = self;
  [(_GCDevicePhysicalInputGroup *)self physicalInputGroupPreferredTransactionQueueDepthDidChange:selfCopy];
}

- (void)physicalInputPoll:(id)poll forLatest:(BOOL)latest
{
  selfCopy = self;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_dataSource);
  }

  selfCopy2 = self;
  [(_GCDevicePhysicalInputGroup *)self physicalInputGroupPoll:selfCopy forLatest:0];
}

- (id)defaultPhysicalInput
{
  if (result)
  {
    return objc_getProperty(result, a2, 16, 1);
  }

  return result;
}

- (id)setDataSource:(id *)result
{
  if (result)
  {
    return objc_storeWeak(result + 6, a2);
  }

  return result;
}

- (uint64_t)isSnapshot
{
  if (self)
  {
    v1 = *(self + 40);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (_GCDevicePhysicalInputGroup)capture
{
  if (self)
  {
    v2 = *(self + 16);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      allValues = [*(self + 8) allValues];
      allValues2 = [allValues gc_arrayByTransformingElementsUsingBlock:&__block_literal_global_192];

      v5 = [_GCDevicePhysicalInputGroup alloc];
    }

    else
    {
      v6 = [_GCDevicePhysicalInputGroup alloc];
      allValues2 = [*(self + 8) allValues];
      v5 = v6;
    }

    v7 = [(_GCDevicePhysicalInputGroup *)v5 initWithPhysicalInputs:allValues2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)handleGamepadEvent:(void *)event
{
  v3 = a2;
  if (event)
  {
    OUTLINED_FUNCTION_0_17();
    v5 = 3221225472;
    v6 = __65___GCDevicePhysicalInputGroup_EventHandling__handleGamepadEvent___block_invoke;
    v7 = &unk_1E841A0C8;
    v8 = v3;
    [event enumerateKeysAndObjectsUsingBlock:v4];
  }
}

- (void)handleCollectionEvent:(void *)event
{
  v3 = a2;
  if (event)
  {
    OUTLINED_FUNCTION_0_17();
    v5 = 3221225472;
    v6 = __68___GCDevicePhysicalInputGroup_EventHandling__handleCollectionEvent___block_invoke;
    v7 = &unk_1E841A0C8;
    v8 = v3;
    [event enumerateKeysAndObjectsUsingBlock:v4];
  }
}

- (void)initWithPhysicalInputs:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCDevicePhysicalInputGroup.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %s", "physicalInputs != nil"}];
}

- (void)initWithPhysicalInputs:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_GCDevicePhysicalInputGroup.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %s", "physicalInputs.count > 0"}];
}

- (void)initWithPhysicalInputs:.cold.3()
{
  OUTLINED_FUNCTION_0_5();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"_GCDevicePhysicalInputGroup.m" lineNumber:52 description:{@"Multiple physical inputs with attributes %@: %@", v1, v0}];
}

- (void)initWithPhysicalInputs:.cold.4()
{
  OUTLINED_FUNCTION_0_5();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"_GCDevicePhysicalInputGroup.m" lineNumber:59 description:@"Missing default physical input"];

  *v0 = *v1;
}

@end