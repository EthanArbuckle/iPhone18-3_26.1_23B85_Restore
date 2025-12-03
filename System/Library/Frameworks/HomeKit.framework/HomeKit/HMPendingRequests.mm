@interface HMPendingRequests
- (HMPendingRequests)init;
- (id)_retrieveRequestOfType:(int64_t)type forIdentifier:(id)identifier remove:(BOOL)remove;
- (id)removeAccessoryDescriptionForIdentifier:(id)identifier;
- (id)removeAccessoryForIdentifier:(id)identifier;
- (id)removeActionForIdentifier:(id)identifier;
- (id)removeApplicationDataForIdentifier:(id)identifier;
- (id)removeEventForIdentifier:(id)identifier;
- (id)removeEventsForIdentifier:(id)identifier;
- (id)removeMediaSystemBuilderForIdentifier:(id)identifier;
- (id)removeRequestOfType:(int64_t)type forIdentifier:(id)identifier;
- (id)removeTriggerForIdentifier:(id)identifier;
- (id)retrieveAccessoryDescriptionForIdentifier:(id)identifier;
- (id)retrieveRequestOfType:(int64_t)type forIdentifier:(id)identifier;
- (id)uuidForAccessoryDescriptionUUID:(id)d;
- (void)_addRequest:(id)request ofType:(int64_t)type forIdentifier:(id)identifier;
- (void)addAccessory:(id)accessory andCompletionBlock:(id)block forIdentifier:(id)identifier;
- (void)addAccessoryDescription:(id)description progressBlock:(id)block andCompletionBlock:(id)completionBlock forIdentifier:(id)identifier;
- (void)addAction:(id)action andCompletionBlock:(id)block forIdentifier:(id)identifier;
- (void)addApplicationData:(id)data andCompletionBlock:(id)block forIdentifier:(id)identifier;
- (void)addEvent:(id)event andCompletionBlock:(id)block forIdentifier:(id)identifier;
- (void)addEvents:(id)events andCompletionBlock:(id)block forIdentifier:(id)identifier;
- (void)addMediaSystemBuilder:(id)builder andCompletionBlock:(id)block forIdentifier:(id)identifier;
- (void)addRequest:(id)request ofType:(int64_t)type forIdentifier:(id)identifier;
- (void)addTrigger:(id)trigger andCompletionBlock:(id)block forIdentifier:(id)identifier;
@end

@implementation HMPendingRequests

- (HMPendingRequests)init
{
  v8.receiver = self;
  v8.super_class = HMPendingRequests;
  v2 = [(HMPendingRequests *)&v8 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    contextLists = v2->_contextLists;
    v2->_contextLists = array;

    for (i = 0; i != 10; ++i)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(NSMutableArray *)v2->_contextLists setObject:dictionary atIndexedSubscript:i];
    }
  }

  return v2;
}

- (id)removeMediaSystemBuilderForIdentifier:(id)identifier
{
  v3 = [(HMPendingRequests *)self removeRequestOfType:9 forIdentifier:identifier];
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

- (void)addMediaSystemBuilder:(id)builder andCompletionBlock:(id)block forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  blockCopy = block;
  [(HMPendingRequests *)self addRequest:builder ofType:9 forIdentifier:identifierCopy];
  [(HMPendingRequests *)self addRequest:blockCopy ofType:0 forIdentifier:identifierCopy];
}

- (id)removeTriggerForIdentifier:(id)identifier
{
  v3 = [(HMPendingRequests *)self removeRequestOfType:2 forIdentifier:identifier];
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

- (void)addTrigger:(id)trigger andCompletionBlock:(id)block forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  blockCopy = block;
  [(HMPendingRequests *)self addRequest:trigger ofType:2 forIdentifier:identifierCopy];
  [(HMPendingRequests *)self addRequest:blockCopy ofType:0 forIdentifier:identifierCopy];
}

- (id)removeAccessoryDescriptionForIdentifier:(id)identifier
{
  v3 = [(HMPendingRequests *)self removeRequestOfType:8 forIdentifier:identifier];
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

- (id)uuidForAccessoryDescriptionUUID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__44336;
  v17 = __Block_byref_object_dispose__44337;
  v18 = 0;
  os_unfair_lock_lock_with_options();
  contextLists = [(HMPendingRequests *)self contextLists];
  v6 = [contextLists objectAtIndexedSubscript:8];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__HMPendingRequests_uuidForAccessoryDescriptionUUID___block_invoke;
  v10[3] = &unk_1E754BE68;
  v7 = dCopy;
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

- (void)addAccessoryDescription:(id)description progressBlock:(id)block andCompletionBlock:(id)completionBlock forIdentifier:(id)identifier
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  identifierCopy = identifier;
  [(HMPendingRequests *)self addRequest:description ofType:8 forIdentifier:identifierCopy];
  if (blockCopy)
  {
    [(HMPendingRequests *)self addRequest:blockCopy ofType:7 forIdentifier:identifierCopy];
  }

  if (completionBlockCopy)
  {
    [(HMPendingRequests *)self addRequest:completionBlockCopy ofType:0 forIdentifier:identifierCopy];
  }
}

- (id)removeAccessoryForIdentifier:(id)identifier
{
  v3 = [(HMPendingRequests *)self removeRequestOfType:1 forIdentifier:identifier];
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

- (void)addAccessory:(id)accessory andCompletionBlock:(id)block forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  blockCopy = block;
  [(HMPendingRequests *)self addRequest:accessory ofType:1 forIdentifier:identifierCopy];
  [(HMPendingRequests *)self addRequest:blockCopy ofType:0 forIdentifier:identifierCopy];
}

- (id)removeApplicationDataForIdentifier:(id)identifier
{
  v3 = [(HMPendingRequests *)self removeRequestOfType:6 forIdentifier:identifier];
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

- (void)addApplicationData:(id)data andCompletionBlock:(id)block forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  blockCopy = block;
  [(HMPendingRequests *)self addRequest:data ofType:6 forIdentifier:identifierCopy];
  [(HMPendingRequests *)self addRequest:blockCopy ofType:0 forIdentifier:identifierCopy];
}

- (id)removeEventsForIdentifier:(id)identifier
{
  v3 = [(HMPendingRequests *)self removeRequestOfType:5 forIdentifier:identifier];
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

- (void)addEvents:(id)events andCompletionBlock:(id)block forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  blockCopy = block;
  [(HMPendingRequests *)self addRequest:events ofType:5 forIdentifier:identifierCopy];
  [(HMPendingRequests *)self addRequest:blockCopy ofType:0 forIdentifier:identifierCopy];
}

- (id)removeEventForIdentifier:(id)identifier
{
  v3 = [(HMPendingRequests *)self removeRequestOfType:4 forIdentifier:identifier];
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

- (void)addEvent:(id)event andCompletionBlock:(id)block forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  blockCopy = block;
  [(HMPendingRequests *)self addRequest:event ofType:4 forIdentifier:identifierCopy];
  [(HMPendingRequests *)self addRequest:blockCopy ofType:0 forIdentifier:identifierCopy];
}

- (id)removeActionForIdentifier:(id)identifier
{
  v3 = [(HMPendingRequests *)self removeRequestOfType:3 forIdentifier:identifier];
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

- (void)addAction:(id)action andCompletionBlock:(id)block forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  blockCopy = block;
  [(HMPendingRequests *)self addRequest:action ofType:3 forIdentifier:identifierCopy];
  [(HMPendingRequests *)self addRequest:blockCopy ofType:0 forIdentifier:identifierCopy];
}

- (id)retrieveAccessoryDescriptionForIdentifier:(id)identifier
{
  v3 = [(HMPendingRequests *)self retrieveRequestOfType:8 forIdentifier:identifier];
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

- (id)retrieveRequestOfType:(int64_t)type forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v7 = [(HMPendingRequests *)self _retrieveRequestOfType:type forIdentifier:identifierCopy remove:0];
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (id)removeRequestOfType:(int64_t)type forIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v7 = [(HMPendingRequests *)self _retrieveRequestOfType:type forIdentifier:identifierCopy remove:1];
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (void)addRequest:(id)request ofType:(int64_t)type forIdentifier:(id)identifier
{
  requestCopy = request;
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  [(HMPendingRequests *)self _addRequest:requestCopy ofType:type forIdentifier:identifierCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (id)_retrieveRequestOfType:(int64_t)type forIdentifier:(id)identifier remove:(BOOL)remove
{
  removeCopy = remove;
  identifierCopy = identifier;
  if (type > 9)
  {
    v11 = 0;
  }

  else
  {
    contextLists = [(HMPendingRequests *)self contextLists];
    v10 = [contextLists objectAtIndexedSubscript:type];

    if (v10)
    {
      v11 = [v10 objectForKeyedSubscript:identifierCopy];
      if (v11 && removeCopy)
      {
        [v10 removeObjectForKey:identifierCopy];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)_addRequest:(id)request ofType:(int64_t)type forIdentifier:(id)identifier
{
  requestCopy = request;
  identifierCopy = identifier;
  if (type <= 9)
  {
    contextLists = [(HMPendingRequests *)self contextLists];
    v10 = [contextLists objectAtIndexedSubscript:type];

    if (requestCopy && v10)
    {
      [v10 setObject:requestCopy forKeyedSubscript:identifierCopy];
    }
  }
}

@end