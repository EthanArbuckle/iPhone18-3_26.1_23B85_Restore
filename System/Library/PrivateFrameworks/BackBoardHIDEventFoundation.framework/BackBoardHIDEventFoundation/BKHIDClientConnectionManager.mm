@interface BKHIDClientConnectionManager
- (BKHIDClientConnectionManager)initWithHIDEventSystem:(__IOHIDEventSystem *)a3;
- (__IOHIDEventSystemConnection)copyClientForDestination:(id)a3;
- (id)_lock_clientForDestination:(uint64_t)a1;
- (id)bundleIDForPID:(int)a3;
- (id)clientForDestination:(id)a3;
- (id)clientForTaskPort:(unsigned int)a3;
- (id)description;
- (int)pidForBundleID:(id)a3;
- (int64_t)versionedPIDForPID:(int)a3;
- (void)dealloc;
- (void)sendEvent:(__IOHIDEvent *)a3 toClientTaskPort:(unsigned int)a4;
- (void)sendEvent:(__IOHIDEvent *)a3 toDestination:(id)a4;
@end

@implementation BKHIDClientConnectionManager

- (int64_t)versionedPIDForPID:(int)a3
{
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BSMutableIntegerMap *)self->_pidToClientConnectionMapping objectForKey:a3];
  v6 = [v5 versionedPID];
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)sendEvent:(__IOHIDEvent *)a3 toDestination:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a4;
  os_unfair_lock_lock(&self->_lock);
  v6 = [(BKHIDClientConnectionManager *)self _lock_clientForDestination:v5];
  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    [BKHIDClientConnection sendEvent:v6];
  }

  else
  {
    v7 = BKLogHID();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&dword_223CBE000, v7, OS_LOG_TYPE_DEFAULT, "no client connection for destination %{public}@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_lock_clientForDestination:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 versionedPID];
    if (v5 == -1)
    {
      a1 = [*(a1 + 24) objectForKey:{objc_msgSend(v4, "pid")}];
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
      a1 = [v6 objectForKey:v7];
    }
  }

  return a1;
}

- (void)sendEvent:(__IOHIDEvent *)a3 toClientTaskPort:(unsigned int)a4
{
  v10 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  v6 = [(BSMutableIntegerMap *)self->_taskPortToClientConnectionMapping objectForKey:a4];
  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    [BKHIDClientConnection sendEvent:v6];
  }

  else
  {
    v7 = BKLogHID();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109120;
      v9[1] = a4;
      _os_log_impl(&dword_223CBE000, v7, OS_LOG_TYPE_DEFAULT, "no client connection for port 0x%X", v9, 8u);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)clientForDestination:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BKHIDClientConnectionManager *)self _lock_clientForDestination:v4];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (id)clientForTaskPort:(unsigned int)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(BSMutableIntegerMap *)self->_taskPortToClientConnectionMapping objectForKey:a3];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (__IOHIDEventSystemConnection)copyClientForDestination:(id)a3
{
  v3 = [(BKHIDClientConnectionManager *)self clientForDestination:a3];
  v4 = [v3 connection];

  if (v4)
  {
    CFRetain(v4);
  }

  return v4;
}

- (id)bundleIDForPID:(int)a3
{
  if (a3 < 1)
  {
    v6 = 0;
  }

  else
  {
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    v5 = [(BSMutableIntegerMap *)self->_pidToClientConnectionMapping objectForKey:a3];
    v6 = [v5 bundleID];
    os_unfair_lock_unlock(&self->_lock);
  }

  return v6;
}

- (int)pidForBundleID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  if ([v4 length])
  {
    os_unfair_lock_assert_not_owner(&self->_lock);
    os_unfair_lock_lock(&self->_lock);
    pidToClientConnectionMapping = self->_pidToClientConnectionMapping;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__BKHIDClientConnectionManager_pidForBundleID___block_invoke;
    v8[3] = &unk_2784F6870;
    v9 = v4;
    v10 = &v11;
    [(BSMutableIntegerMap *)pidToClientConnectionMapping enumerateWithBlock:v8];
    os_unfair_lock_unlock(&self->_lock);
  }

  v6 = *(v12 + 6);
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __47__BKHIDClientConnectionManager_pidForBundleID___block_invoke(uint64_t a1, int a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = [a3 bundleID];
  LODWORD(v7) = [v7 isEqualToString:v8];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a4 = 1;
  }
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_taskPortToClientConnectionMapping withName:@"TaskPort->ClientConnection"];
  v5 = [v3 appendObject:self->_pidToClientConnectionMapping withName:@"pid->ClientConnection"];
  v6 = [v3 appendObject:self->_versionedPIDToClientConnectionMapping withName:@"vpid->ClientConnection"];
  v7 = [v3 appendPointer:self->_hidConnectionToBKConnection withName:@"HIDConnection->BKConnection"];
  v8 = [v3 build];

  return v8;
}

- (void)dealloc
{
  hidEventSystem = self->_hidEventSystem;
  IOHIDEventSystemUnregisterConnectionAdditionCallback();
  v4 = self->_hidEventSystem;
  IOHIDEventSystemUnregisterConnectionRemovalCallback();
  v5 = self->_hidEventSystem;
  if (v5)
  {
    CFRelease(v5);
    self->_hidEventSystem = 0;
  }

  hidConnectionToBKConnection = self->_hidConnectionToBKConnection;
  if (hidConnectionToBKConnection)
  {
    CFRelease(hidConnectionToBKConnection);
  }

  v7.receiver = self;
  v7.super_class = BKHIDClientConnectionManager;
  [(BKHIDClientConnectionManager *)&v7 dealloc];
}

- (BKHIDClientConnectionManager)initWithHIDEventSystem:(__IOHIDEventSystem *)a3
{
  v22.receiver = self;
  v22.super_class = BKHIDClientConnectionManager;
  v4 = [(BKHIDClientConnectionManager *)&v22 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    if (a3)
    {
      v4->_hidEventSystem = a3;
      CFRetain(a3);
    }

    v6 = objc_alloc_init(MEMORY[0x277CF0C68]);
    taskPortToClientConnectionMapping = v5->_taskPortToClientConnectionMapping;
    v5->_taskPortToClientConnectionMapping = v6;

    v8 = objc_alloc_init(MEMORY[0x277CF0C68]);
    pidToClientConnectionMapping = v5->_pidToClientConnectionMapping;
    v5->_pidToClientConnectionMapping = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    versionedPIDToClientConnectionMapping = v5->_versionedPIDToClientConnectionMapping;
    v5->_versionedPIDToClientConnectionMapping = v10;

    v5->_hidConnectionToBKConnection = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v5->_hidEventSystem)
    {
      IOHIDEventSystemRegisterConnectionAdditionCallback();
      hidEventSystem = v5->_hidEventSystem;
      IOHIDEventSystemRegisterConnectionRemovalCallback();
      v13 = v5->_hidEventSystem;
      v14 = IOHIDEventSystemCopyConnections();
      if (v14)
      {
        v15 = v14;
        Count = CFArrayGetCount(v14);
        if (Count >= 1)
        {
          v17 = Count;
          for (i = 0; i != v17; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v15, i);
            BKHIDClientConnectionAdditionCallback(v5, v20, ValueAtIndex);
          }
        }

        CFRelease(v15);
      }
    }
  }

  return v5;
}

@end