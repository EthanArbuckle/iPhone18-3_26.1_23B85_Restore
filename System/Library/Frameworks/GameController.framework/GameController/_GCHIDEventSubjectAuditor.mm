@interface _GCHIDEventSubjectAuditor
- (_GCHIDEventSubjectAuditor)init;
- (id)initWithSubject:(void *)subject;
- (uint64_t)noteEventPublicationPausedForReasonsChanged:(uint64_t)result;
- (void)dealloc;
- (void)noteHIDEventPublished:(uint64_t)published;
- (void)noteHIDEventReceived:(uint64_t)received;
- (void)noteObserverAddedForService:(uint64_t)service;
@end

@implementation _GCHIDEventSubjectAuditor

- (_GCHIDEventSubjectAuditor)init
{
  [(_GCHIDEventSubjectAuditor *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  state = self->_state;
  os_state_remove_handler();
  v4.receiver = self;
  v4.super_class = _GCHIDEventSubjectAuditor;
  [(_GCHIDEventSubjectAuditor *)&v4 dealloc];
}

- (id)initWithSubject:(void *)subject
{
  if (!subject)
  {
    return 0;
  }

  v14.receiver = subject;
  v14.super_class = _GCHIDEventSubjectAuditor;
  v2 = a2;
  v3 = objc_msgSendSuper2(&v14, sel_init);
  objc_storeWeak(v3 + 1, v2);

  *(v3 + 4) = 0;
  v4 = objc_opt_new();
  v5 = v3[3];
  v3[3] = v4;

  objc_initWeak(&location, v3);
  v6 = dispatch_get_global_queue(17, 0);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45___GCHIDEventSubjectAuditor_initWithSubject___block_invoke;
  v11[3] = &unk_1E8418DD0;
  objc_copyWeak(&v12, &location);
  v7 = v11;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __gc_state_add_dictionary_handler_block_invoke_0;
  v18 = &unk_1E8418DF8;
  v20 = 4;
  v19 = v7;
  v8 = os_state_add_handler();

  v3[5] = v8;
  v9 = v3;
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v9;
}

- (uint64_t)noteEventPublicationPausedForReasonsChanged:(uint64_t)result
{
  if (result)
  {
    atomic_fetch_add((result + 32), 1uLL);
  }

  return result;
}

- (void)noteObserverAddedForService:(uint64_t)service
{
  v3 = a2;
  if (service)
  {
    v8 = v3;
    serviceID = [v3 serviceID];
    if (serviceID)
    {
      os_unfair_lock_lock((service + 16));
      v5 = [*(service + 24) objectForKey:serviceID];

      if (!v5)
      {
        v6 = *(service + 24);
        v7 = [[_GCHIDServiceAuditor alloc] initWithServiceInfo:v8];
        [v6 setObject:v7 forKey:serviceID];
      }

      os_unfair_lock_unlock((service + 16));
    }

    v3 = v8;
  }
}

- (void)noteHIDEventReceived:(uint64_t)received
{
  if (received)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:IOHIDEventGetSenderID()];
    os_unfair_lock_lock((received + 16));
    v2 = [*(received + 24) objectForKey:v6];
    os_unfair_lock_unlock((received + 16));
    if (v2)
    {
      v3 = v2[1];
      OUTLINED_FUNCTION_0_11();
      v2[1] = v5 + 1;
      v2[v4 + 3] = IOHIDEventGetTimeStamp();
    }
  }
}

- (void)noteHIDEventPublished:(uint64_t)published
{
  if (published)
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:IOHIDEventGetSenderID()];
    os_unfair_lock_lock((published + 16));
    v2 = [*(published + 24) objectForKey:v3];
    os_unfair_lock_unlock((published + 16));
    if (v2)
    {
      ++v2[2];
    }
  }
}

@end