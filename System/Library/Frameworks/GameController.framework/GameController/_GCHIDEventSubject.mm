@interface _GCHIDEventSubject
- (BOOL)isPaused;
- (NSSet)pausedForReasons;
- (_GCHIDEventSubject)init;
- (id)observeHIDEvents:(id)events forService:(id)service;
- (void)publishHIDEvent:(__IOHIDEvent *)event;
- (void)setPausedForReasons:(id)reasons;
@end

@implementation _GCHIDEventSubject

- (_GCHIDEventSubject)init
{
  v10.receiver = self;
  v10.super_class = _GCHIDEventSubject;
  v2 = [(_GCHIDEventSubject *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF20]);
    handlersByService = v2->_handlersByService;
    v2->_handlersByService = v3;

    v5 = objc_opt_new();
    pausedForReasons = v2->_pausedForReasons;
    v2->_pausedForReasons = v5;

    v7 = [[_GCHIDEventSubjectAuditor alloc] initWithSubject:v2];
    auditor = v2->_auditor;
    v2->_auditor = v7;
  }

  return v2;
}

- (BOOL)isPaused
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSSet *)self->_pausedForReasons count]!= 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (NSSet)pausedForReasons
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_pausedForReasons;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPausedForReasons:(id)reasons
{
  reasonsCopy = reasons;
  if (!reasonsCopy)
  {
    reasonsCopy = objc_opt_new();
  }

  os_unfair_lock_lock(&self->_lock);
  pausedForReasons = self->_pausedForReasons;
  self->_pausedForReasons = reasonsCopy;
  v6 = reasonsCopy;

  os_unfair_lock_unlock(&self->_lock);
  [_GCHIDEventSubjectAuditor noteEventPublicationPausedForReasonsChanged:?];
}

- (void)publishHIDEvent:(__IOHIDEvent *)event
{
  v31 = *MEMORY[0x1E69E9840];
  [_GCHIDEventSubjectAuditor noteHIDEventReceived:?];
  os_unfair_lock_lock(&self->_lock);
  v5 = self->_handlersByService;
  v6 = [(NSSet *)self->_pausedForReasons count];
  os_unfair_lock_unlock(&self->_lock);
  if (!v6)
  {
    SenderID = IOHIDEventGetSenderID();
    if ((SenderID - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __38___GCHIDEventSubject_publishHIDEvent___block_invoke;
      v20[3] = &__block_descriptor_40_e34_v32__0__NSNumber_8__NSArray_16_B24l;
      v20[4] = event;
      [(NSDictionary *)v5 enumerateKeysAndObjectsUsingBlock:v20];
    }

    else
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:SenderID];
      v9 = [(NSDictionary *)v5 objectForKeyedSubscript:v8];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v10 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        do
        {
          v13 = 0;
          do
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v9);
            }

            (*(*(*(&v25 + 1) + 8 * v13++) + 16))();
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
        }

        while (v11);
      }

      v14 = [(NSDictionary *)v5 objectForKeyedSubscript:&unk_1F4E8E018];
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v22;
        do
        {
          v18 = 0;
          do
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v14);
            }

            (*(*(*(&v21 + 1) + 8 * v18++) + 16))();
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
        }

        while (v16);
      }
    }

    [_GCHIDEventSubjectAuditor noteHIDEventPublished:?];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)observeHIDEvents:(id)events forService:(id)service
{
  eventsCopy = events;
  serviceCopy = service;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy_;
  v24[4] = __Block_byref_object_dispose_;
  v25 = [eventsCopy copy];
  os_unfair_lock_lock(&self->_lock);
  v8 = [(NSDictionary *)self->_handlersByService mutableCopy];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __50___GCHIDEventSubject_observeHIDEvents_forService___block_invoke;
  aBlock[3] = &unk_1E8419008;
  v9 = v8;
  v22 = v9;
  v23 = v24;
  v10 = _Block_copy(aBlock);
  v11 = v10;
  if (serviceCopy)
  {
    registryID = [serviceCopy registryID];
    v13 = registryID;
    if (registryID)
    {
      v14 = registryID;
    }

    else
    {
      v14 = &unk_1F4E8E018;
    }

    (v11)[2](v11, v14, eventsCopy);
  }

  else
  {
    (*(v10 + 2))(v10, &unk_1F4E8E018, eventsCopy);
  }

  v15 = [v9 copy];
  handlersByService = self->_handlersByService;
  self->_handlersByService = v15;

  os_unfair_lock_unlock(&self->_lock);
  v17 = [_GCObservation alloc];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __50___GCHIDEventSubject_observeHIDEvents_forService___block_invoke_2;
  v20[3] = &unk_1E8419058;
  v20[4] = self;
  v20[5] = v24;
  v18 = [(_GCObservation *)v17 initWithCleanupHandler:v20];
  [(_GCHIDEventSubjectAuditor *)self->_auditor noteObserverAddedForService:serviceCopy];
  _Block_object_dispose(v24, 8);

  return v18;
}

@end