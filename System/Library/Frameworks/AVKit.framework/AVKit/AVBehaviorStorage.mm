@interface AVBehaviorStorage
- (AVBehaviorStorage)initWithAVKitOwner:(id)owner;
- (id)AVKitOwner;
- (id)behaviorContextOfClass:(Class)class;
- (id)behaviorOfClass:(Class)class;
- (id)behaviors;
- (void)addBehavior:(id)behavior;
- (void)enumerateAllBehaviorContextsConformingToProtocol:(id)protocol usingBlock:(id)block;
- (void)enumerateAllBehaviorContextsImplementingSelector:(SEL)selector forProtocol:(id)protocol usingBlock:(id)block;
- (void)enumerateAllBehaviorContextsUsingBlock:(id)block;
- (void)enumerateAllBehaviorsConformingToProtocol:(id)protocol usingBlock:(id)block;
- (void)enumerateAllBehaviorsUsingBlock:(id)block;
- (void)removeBehavior:(id)behavior;
@end

@implementation AVBehaviorStorage

- (id)AVKitOwner
{
  WeakRetained = objc_loadWeakRetained(&self->_AVKitOwner);

  return WeakRetained;
}

- (id)behaviorContextOfClass:(Class)class
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  behaviorsAndBehaviorContexts = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
  objectEnumerator = [behaviorsAndBehaviorContexts objectEnumerator];

  v5 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)enumerateAllBehaviorContextsImplementingSelector:(SEL)selector forProtocol:(id)protocol usingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__AVBehaviorStorage_enumerateAllBehaviorContextsImplementingSelector_forProtocol_usingBlock___block_invoke;
  v10[3] = &unk_1E7209690;
  v11 = blockCopy;
  selectorCopy = selector;
  v9 = blockCopy;
  [(AVBehaviorStorage *)self enumerateAllBehaviorContextsConformingToProtocol:protocol usingBlock:v10];
}

void __93__AVBehaviorStorage_enumerateAllBehaviorContextsImplementingSelector_forProtocol_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateAllBehaviorContextsConformingToProtocol:(id)protocol usingBlock:(id)block
{
  protocolCopy = protocol;
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__AVBehaviorStorage_enumerateAllBehaviorContextsConformingToProtocol_usingBlock___block_invoke;
  v10[3] = &unk_1E7209668;
  v11 = protocolCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = protocolCopy;
  [(AVBehaviorStorage *)self enumerateAllBehaviorContextsUsingBlock:v10];
}

void __81__AVBehaviorStorage_enumerateAllBehaviorContextsConformingToProtocol_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)enumerateAllBehaviorContextsUsingBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  behaviorsAndBehaviorContexts = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
  objectEnumerator = [behaviorsAndBehaviorContexts objectEnumerator];

  v7 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [objectEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)behaviorOfClass:(Class)class
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  behaviorsAndBehaviorContexts = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
  keyEnumerator = [behaviorsAndBehaviorContexts keyEnumerator];

  v5 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [keyEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)enumerateAllBehaviorsConformingToProtocol:(id)protocol usingBlock:(id)block
{
  protocolCopy = protocol;
  blockCopy = block;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__AVBehaviorStorage_enumerateAllBehaviorsConformingToProtocol_usingBlock___block_invoke;
  v10[3] = &unk_1E7209640;
  v11 = protocolCopy;
  v12 = blockCopy;
  v8 = blockCopy;
  v9 = protocolCopy;
  [(AVBehaviorStorage *)self enumerateAllBehaviorsUsingBlock:v10];
}

void __74__AVBehaviorStorage_enumerateAllBehaviorsConformingToProtocol_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:*(a1 + 32)])
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)enumerateAllBehaviorsUsingBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  behaviorsAndBehaviorContexts = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
  keyEnumerator = [behaviorsAndBehaviorContexts keyEnumerator];

  v7 = [keyEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [keyEnumerator countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)removeBehavior:(id)behavior
{
  behaviorCopy = behavior;
  behaviorsAndBehaviorContexts = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
  v5 = [behaviorsAndBehaviorContexts objectForKey:behaviorCopy];

  if ([v5 conformsToProtocol:&unk_1EFF322D8])
  {
    behaviorsAndBehaviorContexts3 = v5;
    [behaviorsAndBehaviorContexts3 willRemoveBehavior:behaviorCopy];
    behaviorsAndBehaviorContexts2 = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
    [behaviorsAndBehaviorContexts2 removeObjectForKey:behaviorCopy];

    [behaviorsAndBehaviorContexts3 setBehavior:0];
    if ([behaviorCopy conformsToProtocol:&unk_1EFF33E20])
    {
      [behaviorCopy setBehaviorContext:0];
    }

    [behaviorsAndBehaviorContexts3 didRemoveBehavior:behaviorCopy];
  }

  else
  {
    behaviorsAndBehaviorContexts3 = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
    [behaviorsAndBehaviorContexts3 removeObjectForKey:behaviorCopy];
  }
}

- (void)addBehavior:(id)behavior
{
  behaviorCopy = behavior;
  if (behaviorCopy)
  {
    v16 = behaviorCopy;
    behaviorsAndBehaviorContexts = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
    v6 = [behaviorsAndBehaviorContexts objectForKey:v16];

    behaviorCopy = v16;
    if (!v6)
    {
      if ([v16 conformsToProtocol:&unk_1EFF33E20])
      {
        v7 = v16;
        v8 = objc_alloc([objc_opt_class() behaviorContextClass]);
        aVKitOwner = [(AVBehaviorStorage *)self AVKitOwner];
        v10 = [v8 initWithAVKitOwner:aVKitOwner];

        if (v10)
        {
          v11 = v10;
          v12 = v11;
LABEL_8:
          [(AVDefaultBehaviorContext *)v12 willAddBehavior:v16];
          [v16 willMoveToContext:v11];
          behaviorsAndBehaviorContexts2 = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
          [behaviorsAndBehaviorContexts2 setObject:v11 forKey:v16];

          [(AVDefaultBehaviorContext *)v12 setBehavior:v16];
          [v7 setBehaviorContext:v11];
          [(AVDefaultBehaviorContext *)v12 didAddBehavior:v16];

          behaviorCopy = v16;
          goto LABEL_9;
        }
      }

      else
      {
        v7 = 0;
      }

      v13 = [AVDefaultBehaviorContext alloc];
      aVKitOwner2 = [(AVBehaviorStorage *)self AVKitOwner];
      v11 = [(AVDefaultBehaviorContext *)v13 initWithAVKitOwner:aVKitOwner2];

      v12 = 0;
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (id)behaviors
{
  behaviorsAndBehaviorContexts = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
  keyEnumerator = [behaviorsAndBehaviorContexts keyEnumerator];
  allObjects = [keyEnumerator allObjects];

  return allObjects;
}

- (AVBehaviorStorage)initWithAVKitOwner:(id)owner
{
  ownerCopy = owner;
  v10.receiver = self;
  v10.super_class = AVBehaviorStorage;
  v5 = [(AVBehaviorStorage *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_AVKitOwner, ownerCopy);
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    behaviorsAndBehaviorContexts = v6->_behaviorsAndBehaviorContexts;
    v6->_behaviorsAndBehaviorContexts = strongToStrongObjectsMapTable;
  }

  return v6;
}

@end