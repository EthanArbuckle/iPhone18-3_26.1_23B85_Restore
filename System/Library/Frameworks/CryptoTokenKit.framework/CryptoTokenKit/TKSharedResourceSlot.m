@interface TKSharedResourceSlot
- (TKSharedResourceSlot)initWithName:(id)a3;
- (id)description;
- (id)resourceWithError:(id *)a3;
- (void)dealloc;
- (void)destroyObject;
- (void)releaseResourceImmediatelly:(BOOL)a3;
@end

@implementation TKSharedResourceSlot

- (void)destroyObject
{
  objectDestroyedBlock = self->_objectDestroyedBlock;
  if (objectDestroyedBlock && self->_object)
  {
    objectDestroyedBlock[2]();
  }

  object = self->_object;
  self->_object = 0;
}

- (TKSharedResourceSlot)initWithName:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = TKSharedResourceSlot;
  v6 = [(TKSharedResourceSlot *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"resourceslot:%@", v7->_name];
    v9 = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v9, v10);
    idleQueue = v7->_idleQueue;
    v7->_idleQueue = v11;
  }

  return v7;
}

- (id)description
{
  if (self->_object)
  {
    WeakRetained = objc_loadWeakRetained(&self->_resource);
    v4 = @"ACTIVE";
    if (!WeakRetained)
    {
      v4 = @"IDLE";
    }

    v5 = v4;
  }

  else
  {
    v5 = @"EMPTY";
  }

  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"<%@ %@ %@ %p o=%@>", v8, self->_name, v5, self, self->_object];

  return v9;
}

- (void)releaseResourceImmediatelly:(BOOL)a3
{
  v4 = self;
  objc_sync_enter(v4);
  objc_storeWeak(&v4->_resource, 0);
  if (a3 || ([(TKSharedResourceSlot *)v4 idleTimeout], v5 == 0.0))
  {
    [(TKSharedResourceSlot *)v4 destroyObject];
  }

  else
  {
    v6 = [(TKSharedResourceSlot *)v4 idleQueue];
    v7 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v6);
    idleTimer = v4->_idleTimer;
    v4->_idleTimer = v7;

    [(TKSharedResourceSlot *)v4 idleTimeout];
    v10 = (v9 * 1000000000.0);
    v11 = v4->_idleTimer;
    v12 = dispatch_time(0, v10);
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, v10);
    objc_initWeak(&location, v4);
    v13 = v4->_idleTimer;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__TKSharedResourceSlot_releaseResourceImmediatelly___block_invoke;
    v14[3] = &unk_1E86B71F0;
    objc_copyWeak(&v15, &location);
    dispatch_source_set_event_handler(v13, v14);
    dispatch_resume(v4->_idleTimer);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  objc_sync_exit(v4);
}

void __52__TKSharedResourceSlot_releaseResourceImmediatelly___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_sync_enter(v3);
    v4 = objc_loadWeakRetained(&v3[2].isa);

    if (v4)
    {
      v5 = TK_LOG_sharedrsc();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        __52__TKSharedResourceSlot_releaseResourceImmediatelly___block_invoke_cold_1(v3, v5);
      }
    }

    else
    {
      isa = v3[4].isa;
      if (isa)
      {
        dispatch_source_cancel(isa);
        v7 = v3[4].isa;
      }

      else
      {
        v7 = 0;
      }

      v3[4].isa = 0;

      [v3 destroyObject];
    }

    objc_sync_exit(v3);
  }

  else
  {
    v3 = TK_LOG_sharedrsc();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __52__TKSharedResourceSlot_releaseResourceImmediatelly___block_invoke_cold_2(v3);
    }
  }
}

- (id)resourceWithError:(id *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  WeakRetained = objc_loadWeakRetained(&v4->_resource);
  if (!WeakRetained)
  {
    if (v4->_object)
    {
      idleTimer = v4->_idleTimer;
      if (!idleTimer)
      {
        v12 = TK_LOG_sharedrsc();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [(TKSharedResourceSlot *)v4 resourceWithError:v12];
        }

        goto LABEL_13;
      }

      dispatch_source_cancel(idleTimer);
      v7 = v4->_idleTimer;
      v4->_idleTimer = 0;
    }

    else
    {
      v8 = [(TKSharedResourceSlot *)v4 createObjectBlock];

      if (v8)
      {
        v9 = [(TKSharedResourceSlot *)v4 createObjectBlock];
        v10 = (v9)[2](v9, a3);
        object = v4->_object;
        v4->_object = v10;

        if (!v4->_object)
        {
          WeakRetained = 0;
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v7 = v4->_object;
      v4->_object = MEMORY[0x1E695E118];
    }

LABEL_13:
    WeakRetained = [[TKSharedResource alloc] initWithSlot:v4];
    objc_storeWeak(&v4->_resource, WeakRetained);
  }

LABEL_14:
  objc_sync_exit(v4);

  return WeakRetained;
}

- (void)dealloc
{
  idleTimer = self->_idleTimer;
  if (idleTimer)
  {
    dispatch_source_cancel(idleTimer);
    v4 = self->_idleTimer;
    self->_idleTimer = 0;
  }

  if (self->_object)
  {
    [(TKSharedResourceSlot *)self destroyObject];
  }

  v5.receiver = self;
  v5.super_class = TKSharedResourceSlot;
  [(TKSharedResourceSlot *)&v5 dealloc];
}

void __52__TKSharedResourceSlot_releaseResourceImmediatelly___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_1DF413000, a2, OS_LOG_TYPE_DEBUG, "%{public}@: got idle, but item is revived, ignoring", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)resourceWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1DF413000, a2, OS_LOG_TYPE_DEBUG, "%@ activating from idle, but idle timer is unset", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end