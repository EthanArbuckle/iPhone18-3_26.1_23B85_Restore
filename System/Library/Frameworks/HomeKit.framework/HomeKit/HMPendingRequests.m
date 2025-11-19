@interface HMPendingRequests
- (HMPendingRequests)init;
- (id)_retrieveRequestOfType:(int64_t)a3 forIdentifier:(id)a4 remove:(BOOL)a5;
- (id)removeAccessoryDescriptionForIdentifier:(id)a3;
- (id)removeAccessoryForIdentifier:(id)a3;
- (id)removeActionForIdentifier:(id)a3;
- (id)removeApplicationDataForIdentifier:(id)a3;
- (id)removeEventForIdentifier:(id)a3;
- (id)removeEventsForIdentifier:(id)a3;
- (id)removeMediaSystemBuilderForIdentifier:(id)a3;
- (id)removeRequestOfType:(int64_t)a3 forIdentifier:(id)a4;
- (id)removeTriggerForIdentifier:(id)a3;
- (id)retrieveAccessoryDescriptionForIdentifier:(id)a3;
- (id)retrieveRequestOfType:(int64_t)a3 forIdentifier:(id)a4;
- (id)uuidForAccessoryDescriptionUUID:(id)a3;
- (void)_addRequest:(id)a3 ofType:(int64_t)a4 forIdentifier:(id)a5;
- (void)addAccessory:(id)a3 andCompletionBlock:(id)a4 forIdentifier:(id)a5;
- (void)addAccessoryDescription:(id)a3 progressBlock:(id)a4 andCompletionBlock:(id)a5 forIdentifier:(id)a6;
- (void)addAction:(id)a3 andCompletionBlock:(id)a4 forIdentifier:(id)a5;
- (void)addApplicationData:(id)a3 andCompletionBlock:(id)a4 forIdentifier:(id)a5;
- (void)addEvent:(id)a3 andCompletionBlock:(id)a4 forIdentifier:(id)a5;
- (void)addEvents:(id)a3 andCompletionBlock:(id)a4 forIdentifier:(id)a5;
- (void)addMediaSystemBuilder:(id)a3 andCompletionBlock:(id)a4 forIdentifier:(id)a5;
- (void)addRequest:(id)a3 ofType:(int64_t)a4 forIdentifier:(id)a5;
- (void)addTrigger:(id)a3 andCompletionBlock:(id)a4 forIdentifier:(id)a5;
@end

@implementation HMPendingRequests

- (HMPendingRequests)init
{
  v8.receiver = self;
  v8.super_class = HMPendingRequests;
  v2 = [(HMPendingRequests *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF70] array];
    contextLists = v2->_contextLists;
    v2->_contextLists = v3;

    for (i = 0; i != 10; ++i)
    {
      v6 = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableArray *)v2->_contextLists setObject:v6 atIndexedSubscript:i];
    }
  }

  return v2;
}

- (id)removeMediaSystemBuilderForIdentifier:(id)a3
{
  v3 = [(HMPendingRequests *)self removeRequestOfType:9 forIdentifier:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addMediaSystemBuilder:(id)a3 andCompletionBlock:(id)a4 forIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(HMPendingRequests *)self addRequest:a3 ofType:9 forIdentifier:v8];
  [(HMPendingRequests *)self addRequest:v9 ofType:0 forIdentifier:v8];
}

- (id)removeTriggerForIdentifier:(id)a3
{
  v3 = [(HMPendingRequests *)self removeRequestOfType:2 forIdentifier:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addTrigger:(id)a3 andCompletionBlock:(id)a4 forIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(HMPendingRequests *)self addRequest:a3 ofType:2 forIdentifier:v8];
  [(HMPendingRequests *)self addRequest:v9 ofType:0 forIdentifier:v8];
}

- (id)removeAccessoryDescriptionForIdentifier:(id)a3
{
  v3 = [(HMPendingRequests *)self removeRequestOfType:8 forIdentifier:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)uuidForAccessoryDescriptionUUID:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__44336;
  v17 = __Block_byref_object_dispose__44337;
  v18 = 0;
  os_unfair_lock_lock_with_options();
  v5 = [(HMPendingRequests *)self contextLists];
  v6 = [v5 objectAtIndexedSubscript:8];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__HMPendingRequests_uuidForAccessoryDescriptionUUID___block_invoke;
  v10[3] = &unk_1E754BE68;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

  os_unfair_lock_unlock(&self->_lock);
  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __53__HMPendingRequests_uuidForAccessoryDescriptionUUID___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v16 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v16;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v9)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = [v12 accessoryUUID];
    v15 = [v14 isEqual:*(a1 + 32)];

    if (v15)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v8);
      *a4 = 1;
    }
  }
}

- (void)addAccessoryDescription:(id)a3 progressBlock:(id)a4 andCompletionBlock:(id)a5 forIdentifier:(id)a6
{
  v12 = a4;
  v10 = a5;
  v11 = a6;
  [(HMPendingRequests *)self addRequest:a3 ofType:8 forIdentifier:v11];
  if (v12)
  {
    [(HMPendingRequests *)self addRequest:v12 ofType:7 forIdentifier:v11];
  }

  if (v10)
  {
    [(HMPendingRequests *)self addRequest:v10 ofType:0 forIdentifier:v11];
  }
}

- (id)removeAccessoryForIdentifier:(id)a3
{
  v3 = [(HMPendingRequests *)self removeRequestOfType:1 forIdentifier:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addAccessory:(id)a3 andCompletionBlock:(id)a4 forIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(HMPendingRequests *)self addRequest:a3 ofType:1 forIdentifier:v8];
  [(HMPendingRequests *)self addRequest:v9 ofType:0 forIdentifier:v8];
}

- (id)removeApplicationDataForIdentifier:(id)a3
{
  v3 = [(HMPendingRequests *)self removeRequestOfType:6 forIdentifier:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addApplicationData:(id)a3 andCompletionBlock:(id)a4 forIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(HMPendingRequests *)self addRequest:a3 ofType:6 forIdentifier:v8];
  [(HMPendingRequests *)self addRequest:v9 ofType:0 forIdentifier:v8];
}

- (id)removeEventsForIdentifier:(id)a3
{
  v3 = [(HMPendingRequests *)self removeRequestOfType:5 forIdentifier:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addEvents:(id)a3 andCompletionBlock:(id)a4 forIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(HMPendingRequests *)self addRequest:a3 ofType:5 forIdentifier:v8];
  [(HMPendingRequests *)self addRequest:v9 ofType:0 forIdentifier:v8];
}

- (id)removeEventForIdentifier:(id)a3
{
  v3 = [(HMPendingRequests *)self removeRequestOfType:4 forIdentifier:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addEvent:(id)a3 andCompletionBlock:(id)a4 forIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(HMPendingRequests *)self addRequest:a3 ofType:4 forIdentifier:v8];
  [(HMPendingRequests *)self addRequest:v9 ofType:0 forIdentifier:v8];
}

- (id)removeActionForIdentifier:(id)a3
{
  v3 = [(HMPendingRequests *)self removeRequestOfType:3 forIdentifier:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addAction:(id)a3 andCompletionBlock:(id)a4 forIdentifier:(id)a5
{
  v8 = a5;
  v9 = a4;
  [(HMPendingRequests *)self addRequest:a3 ofType:3 forIdentifier:v8];
  [(HMPendingRequests *)self addRequest:v9 ofType:0 forIdentifier:v8];
}

- (id)retrieveAccessoryDescriptionForIdentifier:(id)a3
{
  v3 = [(HMPendingRequests *)self retrieveRequestOfType:8 forIdentifier:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (id)retrieveRequestOfType:(int64_t)a3 forIdentifier:(id)a4
{
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [(HMPendingRequests *)self _retrieveRequestOfType:a3 forIdentifier:v6 remove:0];
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)removeRequestOfType:(int64_t)a3 forIdentifier:(id)a4
{
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [(HMPendingRequests *)self _retrieveRequestOfType:a3 forIdentifier:v6 remove:1];
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)addRequest:(id)a3 ofType:(int64_t)a4 forIdentifier:(id)a5
{
  v9 = a3;
  v8 = a5;
  os_unfair_lock_lock_with_options();
  [(HMPendingRequests *)self _addRequest:v9 ofType:a4 forIdentifier:v8];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)_retrieveRequestOfType:(int64_t)a3 forIdentifier:(id)a4 remove:(BOOL)a5
{
  v5 = a5;
  v8 = a4;
  if (a3 > 9)
  {
    v11 = 0;
  }

  else
  {
    v9 = [(HMPendingRequests *)self contextLists];
    v10 = [v9 objectAtIndexedSubscript:a3];

    if (v10)
    {
      v11 = [v10 objectForKeyedSubscript:v8];
      if (v11 && v5)
      {
        [v10 removeObjectForKey:v8];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)_addRequest:(id)a3 ofType:(int64_t)a4 forIdentifier:(id)a5
{
  v11 = a3;
  v8 = a5;
  if (a4 <= 9)
  {
    v9 = [(HMPendingRequests *)self contextLists];
    v10 = [v9 objectAtIndexedSubscript:a4];

    if (v11 && v10)
    {
      [v10 setObject:v11 forKeyedSubscript:v8];
    }
  }
}

@end