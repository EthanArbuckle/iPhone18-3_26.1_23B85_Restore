@interface AVBehaviorStorage
- (AVBehaviorStorage)initWithAVKitOwner:(id)a3;
- (id)AVKitOwner;
- (id)behaviorContextOfClass:(Class)a3;
- (id)behaviorOfClass:(Class)a3;
- (id)behaviors;
- (void)addBehavior:(id)a3;
- (void)enumerateAllBehaviorContextsConformingToProtocol:(id)a3 usingBlock:(id)a4;
- (void)enumerateAllBehaviorContextsImplementingSelector:(SEL)a3 forProtocol:(id)a4 usingBlock:(id)a5;
- (void)enumerateAllBehaviorContextsUsingBlock:(id)a3;
- (void)enumerateAllBehaviorsConformingToProtocol:(id)a3 usingBlock:(id)a4;
- (void)enumerateAllBehaviorsUsingBlock:(id)a3;
- (void)removeBehavior:(id)a3;
@end

@implementation AVBehaviorStorage

- (id)AVKitOwner
{
  WeakRetained = objc_loadWeakRetained(&self->_AVKitOwner);

  return WeakRetained;
}

- (id)behaviorContextOfClass:(Class)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
  v4 = [v3 objectEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)enumerateAllBehaviorContextsImplementingSelector:(SEL)a3 forProtocol:(id)a4 usingBlock:(id)a5
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__AVBehaviorStorage_enumerateAllBehaviorContextsImplementingSelector_forProtocol_usingBlock___block_invoke;
  v10[3] = &unk_1E7209690;
  v11 = v8;
  v12 = a3;
  v9 = v8;
  [(AVBehaviorStorage *)self enumerateAllBehaviorContextsConformingToProtocol:a4 usingBlock:v10];
}

void __93__AVBehaviorStorage_enumerateAllBehaviorContextsImplementingSelector_forProtocol_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateAllBehaviorContextsConformingToProtocol:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__AVBehaviorStorage_enumerateAllBehaviorContextsConformingToProtocol_usingBlock___block_invoke;
  v10[3] = &unk_1E7209668;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)enumerateAllBehaviorContextsUsingBlock:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
  v6 = [v5 objectEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)behaviorOfClass:(Class)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
  v4 = [v3 keyEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)enumerateAllBehaviorsConformingToProtocol:(id)a3 usingBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__AVBehaviorStorage_enumerateAllBehaviorsConformingToProtocol_usingBlock___block_invoke;
  v10[3] = &unk_1E7209640;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)enumerateAllBehaviorsUsingBlock:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
  v6 = [v5 keyEnumerator];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v10++));
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)removeBehavior:(id)a3
{
  v8 = a3;
  v4 = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
  v5 = [v4 objectForKey:v8];

  if ([v5 conformsToProtocol:&unk_1EFF322D8])
  {
    v6 = v5;
    [v6 willRemoveBehavior:v8];
    v7 = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
    [v7 removeObjectForKey:v8];

    [v6 setBehavior:0];
    if ([v8 conformsToProtocol:&unk_1EFF33E20])
    {
      [v8 setBehaviorContext:0];
    }

    [v6 didRemoveBehavior:v8];
  }

  else
  {
    v6 = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
    [v6 removeObjectForKey:v8];
  }
}

- (void)addBehavior:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16 = v4;
    v5 = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
    v6 = [v5 objectForKey:v16];

    v4 = v16;
    if (!v6)
    {
      if ([v16 conformsToProtocol:&unk_1EFF33E20])
      {
        v7 = v16;
        v8 = objc_alloc([objc_opt_class() behaviorContextClass]);
        v9 = [(AVBehaviorStorage *)self AVKitOwner];
        v10 = [v8 initWithAVKitOwner:v9];

        if (v10)
        {
          v11 = v10;
          v12 = v11;
LABEL_8:
          [(AVDefaultBehaviorContext *)v12 willAddBehavior:v16];
          [v16 willMoveToContext:v11];
          v15 = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
          [v15 setObject:v11 forKey:v16];

          [(AVDefaultBehaviorContext *)v12 setBehavior:v16];
          [v7 setBehaviorContext:v11];
          [(AVDefaultBehaviorContext *)v12 didAddBehavior:v16];

          v4 = v16;
          goto LABEL_9;
        }
      }

      else
      {
        v7 = 0;
      }

      v13 = [AVDefaultBehaviorContext alloc];
      v14 = [(AVBehaviorStorage *)self AVKitOwner];
      v11 = [(AVDefaultBehaviorContext *)v13 initWithAVKitOwner:v14];

      v12 = 0;
      goto LABEL_8;
    }
  }

LABEL_9:
}

- (id)behaviors
{
  v2 = [(AVBehaviorStorage *)self behaviorsAndBehaviorContexts];
  v3 = [v2 keyEnumerator];
  v4 = [v3 allObjects];

  return v4;
}

- (AVBehaviorStorage)initWithAVKitOwner:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = AVBehaviorStorage;
  v5 = [(AVBehaviorStorage *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_AVKitOwner, v4);
    v7 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    behaviorsAndBehaviorContexts = v6->_behaviorsAndBehaviorContexts;
    v6->_behaviorsAndBehaviorContexts = v7;
  }

  return v6;
}

@end