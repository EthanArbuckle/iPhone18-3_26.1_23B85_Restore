@interface CFPDObserverOnlyTombstone
+ (uint64_t)replaceObserved:(uint64_t)a3 withObserved:(_xpc_connection_s *)a4 forConnection:;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (id)initMatchingSource:(id)a3;
- (unint64_t)hash;
- (void)_operateOnObservingConnectionsAsMultiple:(uint64_t)a3 asSingle:;
- (void)_sendNotificationToConnection:(uint64_t)a1;
- (void)alreadyLocked_transferObservingConnectionsFromSource:(id)a3;
- (void)dealloc;
- (void)notifyObservers;
- (void)removeObservingConnection:(id)a3 daemon:(id)a4;
- (void)transferObservingConnectionsToSource:(id)a3;
@end

@implementation CFPDObserverOnlyTombstone

- (unint64_t)hash
{
  domain = self->_domain;
  if (domain)
  {
    v4 = CFHash(domain);
  }

  else
  {
    v4 = 0;
  }

  userOrContainer = self->_userOrContainer;
  if (userOrContainer)
  {
    userOrContainer = CFHash(userOrContainer);
  }

  return userOrContainer ^ v4 ^ self->_shmemIndex;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  domain = self->_domain;
  if (domain)
  {
    CFRelease(domain);
  }

  userOrContainer = self->_userOrContainer;
  if (userOrContainer)
  {
    CFRelease(userOrContainer);
  }

  [(CFPDObserverOnlyTombstone *)self _operateOnObservingConnectionsAsMultiple:&__block_literal_global_288 asSingle:?];
  v6.receiver = self;
  v6.super_class = CFPDObserverOnlyTombstone;
  [(CFPDObserverOnlyTombstone *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (id)initMatchingSource:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = CFPDObserverOnlyTombstone;
  v4 = [(CFPDObserverOnlyTombstone *)&v9 init];
  if (v4)
  {
    v5 = [a3 domain];
    if (v5)
    {
      v4->_domain = CFRetain(v5);
    }

    v6 = [a3 container];
    if (v6 || (v6 = [a3 user]) != 0)
    {
      v4->_userOrContainer = CFRetain(v6);
    }

    v4->_shmemIndex = [a3 shmemIndex];
    v4->_lock._os_unfair_lock_opaque = 0;
    *(v4 + 38) = *(v4 + 38) & 0xFE | [a3 managed];
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)alreadyLocked_transferObservingConnectionsFromSource:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(a3 + 25);
  v5 = *(a3 + 9);
  if (v5)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3052000000;
    v16 = __Block_byref_object_copy__4;
    v17 = __Block_byref_object_dispose__4;
    v18 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __82__CFPDObserverOnlyTombstone_alreadyLocked_transferObservingConnectionsFromSource___block_invoke;
    v8[3] = &unk_1E6DD1B58;
    v8[4] = a3;
    v8[5] = self;
    v8[6] = &v13;
    v8[7] = &v9;
    CFSetApply(v5, v8);
    v6 = v14[5];
    if (!v6)
    {
      v6 = v10[3];
    }

    self->_observers._single = v6;
    CFRelease(v5);
    *(a3 + 9) = 0;
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __82__CFPDObserverOnlyTombstone_alreadyLocked_transferObservingConnectionsFromSource___block_invoke(uint64_t *a1, void *a2)
{
  if ([CFPDObserverOnlyTombstone replaceObserved:a1[5] withObserved:a2 forConnection:?])
  {
    v4 = *(*(a1[7] + 8) + 24);
    if (*(*(a1[6] + 8) + 40))
    {
      if (v4)
      {
        __82__CFPDObserverOnlyTombstone_alreadyLocked_transferObservingConnectionsFromSource___block_invoke_cold_1();
      }

      *(*(a1[7] + 8) + 24) = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
      CFSetAddValue(*(*(a1[7] + 8) + 24), *(*(a1[6] + 8) + 40));
      xpc_release(*(*(a1[6] + 8) + 40));
      *(*(a1[6] + 8) + 40) = 0;
      v4 = *(*(a1[7] + 8) + 24);
    }

    else if (!v4)
    {
      *(*(a1[6] + 8) + 40) = xpc_retain(a2);
      return;
    }

    CFSetAddValue(v4, a2);
  }
}

+ (uint64_t)replaceObserved:(uint64_t)a3 withObserved:(_xpc_connection_s *)a4 forConnection:
{
  v9[6] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__CFPDObserverOnlyTombstone_replaceObserved_withObserved_forConnection___block_invoke;
  v9[3] = &unk_1E6DD1CB0;
  v9[4] = a2;
  v9[5] = a3;
  result = withClientContext(a4, v9);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_operateOnObservingConnectionsAsMultiple:(uint64_t)a3 asSingle:
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_lock((a1 + 32));
    v7 = (a1 + 24);
    v6 = *(a1 + 24);
    if (v6)
    {
      v8 = CFGetTypeID(v6);
      if (v8 == CFSetGetTypeID())
      {
        (*(a2 + 16))(a2, *v7);
        Count = CFSetGetCount(*v7);
        if (Count)
        {
          if (Count == 1)
          {
            v13 = 0;
            v14 = &v13;
            v15 = 0x3052000000;
            v16 = __Block_byref_object_copy__4;
            v17 = __Block_byref_object_dispose__4;
            v18 = 0;
            v10 = *v7;
            v12[0] = MEMORY[0x1E69E9820];
            v12[1] = 3221225472;
            v12[2] = __79__CFPDObserverOnlyTombstone__operateOnObservingConnectionsAsMultiple_asSingle___block_invoke;
            v12[3] = &unk_1E6D7D4A0;
            v12[4] = &v13;
            CFSetApply(v10, v12);
            CFRelease(*v7);
            *v7 = v14[5];
            _Block_object_dispose(&v13, 8);
          }
        }

        else
        {
          CFRelease(*v7);
          *v7 = 0;
        }
      }

      else if (*v7)
      {
        (*(a3 + 16))(a3, a1 + 24);
      }
    }

    os_unfair_lock_unlock((a1 + 32));
  }

  v11 = *MEMORY[0x1E69E9840];
}

xpc_object_t __79__CFPDObserverOnlyTombstone__operateOnObservingConnectionsAsMultiple_asSingle___block_invoke(uint64_t a1, xpc_object_t object, _BYTE *a3)
{
  result = xpc_retain(object);
  *(*(*(a1 + 32) + 8) + 40) = result;
  *a3 = 1;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    LOBYTE(v7) = 0;
    return v7;
  }

  if (self == a3)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->_shmemIndex != *(a3 + 18))
  {
    LOBYTE(v7) = 0;
    return v7;
  }

  domain = self->_domain;
  v6 = *(a3 + 1);
  if (domain == v6 || (LOBYTE(v7) = 0, domain) && v6 && (v7 = CFEqual(self->_domain, v6)) != 0)
  {
    userOrContainer = self->_userOrContainer;
    v9 = *(a3 + 2);
    if (userOrContainer != v9)
    {
      LOBYTE(v7) = 0;
      if (userOrContainer && v9)
      {
        LOBYTE(v7) = CFEqual(self->_userOrContainer, v9) != 0;
      }

      return v7;
    }

LABEL_15:
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (void)removeObservingConnection:(id)a3 daemon:(id)a4
{
  v6[6] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__CFPDObserverOnlyTombstone_removeObservingConnection_daemon___block_invoke;
  v6[3] = &unk_1E6DD1C10;
  v6[4] = self;
  v6[5] = a3;
  os_unfair_lock_lock(a4 + 12);
  (__62__CFPDObserverOnlyTombstone_removeObservingConnection_daemon___block_invoke)(v6, *(a4 + 4), *(a4 + 5));
  os_unfair_lock_unlock(a4 + 12);
  v5 = *MEMORY[0x1E69E9840];
}

void __62__CFPDObserverOnlyTombstone_removeObservingConnection_daemon___block_invoke(uint64_t a1, __CFSet *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__CFPDObserverOnlyTombstone_removeObservingConnection_daemon___block_invoke_2;
  v8[3] = &unk_1E6DD1BC0;
  v9 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__CFPDObserverOnlyTombstone_removeObservingConnection_daemon___block_invoke_3;
  v7[3] = &unk_1E6DD1BE8;
  v7[4] = v9;
  v7[5] = &v10;
  [(CFPDObserverOnlyTombstone *)v4 _operateOnObservingConnectionsAsMultiple:v8 asSingle:v7];
  if (*(v11 + 24) == 1)
  {
    v5 = *(a1 + 32);
    CFSetRemoveValue(a2, *(a1 + 32));
  }

  _Block_object_dispose(&v10, 8);
  v6 = *MEMORY[0x1E69E9840];
}

void __62__CFPDObserverOnlyTombstone_removeObservingConnection_daemon___block_invoke_3(uint64_t a1, xpc_object_t *a2)
{
  if (*a2 == *(a1 + 32))
  {
    xpc_release(*a2);
    *a2 = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)transferObservingConnectionsToSource:(id)a3
{
  v8[6] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(a3 + 27);
  os_unfair_lock_lock(a3 + 25);
  if (*(a3 + 9))
  {
    [CFPDObserverOnlyTombstone transferObservingConnectionsToSource:];
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__CFPDObserverOnlyTombstone_transferObservingConnectionsToSource___block_invoke;
  v8[3] = &unk_1E6DD1C38;
  v8[4] = self;
  v8[5] = a3;
  v6[4] = v8;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__CFPDObserverOnlyTombstone_transferObservingConnectionsToSource___block_invoke_2;
  v7[3] = &unk_1E6DD1C60;
  v7[4] = v8;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__CFPDObserverOnlyTombstone_transferObservingConnectionsToSource___block_invoke_3;
  v6[3] = &unk_1E6DD1C88;
  [(CFPDObserverOnlyTombstone *)self _operateOnObservingConnectionsAsMultiple:v7 asSingle:v6];
  os_unfair_lock_unlock(a3 + 25);
  os_unfair_lock_unlock(a3 + 27);
  v5 = *MEMORY[0x1E69E9840];
}

void __66__CFPDObserverOnlyTombstone_transferObservingConnectionsToSource___block_invoke(uint64_t a1, void *a2)
{
  if ([CFPDObserverOnlyTombstone replaceObserved:*(a1 + 40) withObserved:a2 forConnection:?])
  {
    v4 = *(*(a1 + 40) + 72);
    if (!v4)
    {
      *(*(a1 + 40) + 72) = CFSetCreateMutable(0, 0, &kCFTypeSetCallBacks);
      v4 = *(*(a1 + 40) + 72);
    }

    CFSetAddValue(v4, a2);
  }
}

void __66__CFPDObserverOnlyTombstone_transferObservingConnectionsToSource___block_invoke_2(uint64_t a1, void *a2)
{
  CFSetApply(a2, *(a1 + 32));

  CFSetRemoveAllValues(a2);
}

void __66__CFPDObserverOnlyTombstone_transferObservingConnectionsToSource___block_invoke_3(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  (*(*(a1 + 32) + 16))();
  xpc_release(*a2);
  *a2 = 0;
}

void __72__CFPDObserverOnlyTombstone_replaceObserved_withObserved_forConnection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    v5 = *(a1 + 32);
    if (v5 != *(a1 + 40))
    {
      CFSetRemoveValue(v3, v5);
      v6 = *(a2 + 24);
      v7 = *(a1 + 40);

      CFSetAddValue(v6, v7);
    }
  }
}

- (id)description
{
  v3 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"Tombstone for CFPDSource (domain: %@, "), self->_domain;
  HasPrefix = CFStringHasPrefix(self->_userOrContainer, @"/");
  userOrContainer = self->_userOrContainer;
  if (HasPrefix)
  {
    v6 = @"container: %@, ";
  }

  else
  {
    v6 = @"user: %@, ";
  }

  [v3 appendFormat:v6, self->_userOrContainer];
  [v3 appendFormat:@"shmemIndex: %d"], self->_shmemIndex);
  return v3;
}

- (void)_sendNotificationToConnection:(uint64_t)a1
{
  location[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    os_unfair_lock_assert_owner((a1 + 32));
    v4 = *(a1 + 38);
    if ((v4 & 2) != 0)
    {
      *(a1 + 38) = v4 | 4;
    }

    else
    {
      *(a1 + 38) = v4 & 0xF9 | 2;
      objc_initWeak(location, a1);
      keys = "CFPreferencesDomain";
      values = _CFXPCCreateXPCObjectFromCFObject(*(a1 + 8));
      v5 = xpc_dictionary_create(&keys, &values, 1uLL);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __59__CFPDObserverOnlyTombstone__sendNotificationToConnection___block_invoke;
      handler[3] = &unk_1E6DD1CD8;
      objc_copyWeak(&v8, location);
      handler[4] = a1;
      handler[5] = a2;
      xpc_connection_send_message_with_reply(a2, v5, 0, handler);
      xpc_release(values);
      xpc_release(v5);
      objc_destroyWeak(&v8);
      objc_destroyWeak(location);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __59__CFPDObserverOnlyTombstone__sendNotificationToConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 8);
    *(*(a1 + 32) + 38) &= ~2u;
    if ((*(*(a1 + 32) + 38) & 4) != 0)
    {
      v3 = *(a1 + 40);
      [CFPDObserverOnlyTombstone _sendNotificationToConnection:];
    }

    os_unfair_lock_unlock(v4 + 8);
  }
}

- (void)notifyObservers
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = *(a1 + 38) & 1;
  v5 = 138543618;
  v6 = v2;
  v7 = 1024;
  v8 = v3;
  _os_log_debug_impl(&dword_1830E6000, a2, OS_LOG_TYPE_DEBUG, "Notifying observers of { %{public}@, managed: %d }", &v5, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __44__CFPDObserverOnlyTombstone_notifyObservers__block_invoke_2(uint64_t a1, void *a2)
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__CFPDObserverOnlyTombstone_notifyObservers__block_invoke_3;
  v4[3] = &unk_1E6DD1D28;
  v4[4] = *(a1 + 32);
  result = CFSetApply(a2, v4);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

@end