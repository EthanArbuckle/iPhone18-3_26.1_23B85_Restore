@interface _PFManagedObjectReferenceQueue
- (uint64_t)_queueForDealloc:(uint64_t)a1;
- (void)_processReferenceQueue:(uint64_t)a1;
- (void)_unregisterRunloopObservers;
- (void)dealloc;
- (void)release;
@end

@implementation _PFManagedObjectReferenceQueue

- (void)release
{
  if (self)
  {
    if (atomic_fetch_add(&self->_cd_rc, 0xFFFFFFFF) <= 0)
    {
      self->_cd_rc += 0x20000000;
      [(_PFManagedObjectReferenceQueue *)self dealloc];
    }
  }
}

- (void)_unregisterRunloopObservers
{
  if (a1)
  {
    *(a1 + 20) = -1;
    os_unfair_lock_lock_with_options();
    v2 = *(a1 + 40);
    *(a1 + 40) = 0;
    os_unfair_lock_unlock((a1 + 12));
    if (v2)
    {
      Main = CFRunLoopGetMain();
      CFRunLoopObserverInvalidate(v2);
      CFRunLoopRemoveObserver(Main, v2, *MEMORY[0x1E695E8D0]);
      v4[0] = MEMORY[0x1E69E9820];
      v4[1] = 3221225472;
      v4[2] = __61___PFManagedObjectReferenceQueue__unregisterRunloopObservers__block_invoke;
      v4[3] = &unk_1E6EC2720;
      v4[4] = a1;
      v4[5] = v2;
      dispatch_async(MEMORY[0x1E69E96A0], v4);
    }
  }
}

- (void)dealloc
{
  if (!self->_context)
  {
    v6 = v2;
    v7 = v3;
    [(_PFManagedObjectReferenceQueue *)self _unregisterRunloopObservers];
    [(_PFManagedObjectReferenceQueue *)self _processReferenceQueue:?];
    v5.receiver = self;
    v5.super_class = _PFManagedObjectReferenceQueue;
    [(_PFManagedObjectReferenceQueue *)&v5 dealloc];
  }
}

- (void)_processReferenceQueue:(uint64_t)a1
{
  v40 = a2;
  v51 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (v40)
    {
      v3 = 9999;
      goto LABEL_6;
    }

    os_unfair_lock_lock_with_options();
    v4 = *(a1 + 32);
    os_unfair_lock_unlock((a1 + 12));
    if (v4)
    {
      v3 = 9;
      do
      {
LABEL_6:
        os_unfair_lock_lock_with_options();
        v5 = *(a1 + 32);
        *(a1 + 32) = 0;
        os_unfair_lock_unlock((a1 + 12));
        if (!v5)
        {
          break;
        }

        Count = CFArrayGetCount(v5);
        if (!Count)
        {
          CFRelease(v5);
          break;
        }

        v6 = *(a1 + 24);
        if ((v40 & 1) == 0 && v6)
        {
          if (!*(v6 + 16))
          {
            v32 = [*(a1 + 24) _isDeallocating];
            if ((v32 & 1) == 0)
            {
              v33 = v6;
            }

            v34 = objc_alloc(MEMORY[0x1E695DF70]);
            v7 = [v34 initWithCapacity:Count];
            v8 = 0;
            v39 = v32 ^ 1;
            goto LABEL_15;
          }

          v6 = 0;
        }

        v39 = 0;
        v7 = 0;
        if (v6)
        {
          v8 = v40;
        }

        else
        {
          v8 = 1;
        }

LABEL_15:
        v45 = v7;
        v36[1] = v36;
        MEMORY[0x1EEE9AC00]();
        v11 = v36 - v9;
        if (v10 > 0x200)
        {
          v11 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v36 - v9, 8 * v10);
        }

        v52.location = 0;
        v52.length = Count;
        v43 = v11;
        CFArrayGetValues(v5, v52, v11);
        v41 = objc_autoreleasePoolPush();
        v37 = v5;
        v38 = v3;
        *(a1 + 48) = 1;
        if (Count >= 1)
        {
          for (i = 0; i < Count; ++i)
          {
            v13 = v43[i];
            if (v13 == 1)
            {
              v42 = i + 1;
              v17 = v43[i + 1];
              v48 = 0u;
              v49 = 0u;
              v47 = 0u;
              v46 = 0u;
              v18 = [v17 countByEnumeratingWithState:&v46 objects:v50 count:16];
              if (v18)
              {
                v19 = *v47;
                do
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v47 != v19)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v21 = 0;
                    v22 = *(*(&v46 + 1) + 8 * j);
                    atomic_compare_exchange_strong((v22 + 8), &v21, 1u);
                    if (v21)
                    {
                      if (!*(v22 + 56))
                      {
                        atomic_fetch_add((a1 + 8), 1u);
                        *(v22 + 56) = a1;
                      }
                    }

                    else
                    {
                      if ((v8 & 1) == 0)
                      {
                        v23 = [v22 objectID];
                        if (v22)
                        {
                          if ((*(v22 + 17) & 2) != 0)
                          {
                            v24 = v23;
                            if (([v23 isTemporaryID] & 1) == 0)
                            {
                              [v45 addObject:v24];
                            }
                          }
                        }

                        [v6 _forgetObject:v22 propagateToObjectStore:0 removeFromRegistry:1];
                      }

                      if (*MEMORY[0x1E695E0C0] == 1)
                      {
                        NSRecordAllocationEvent();
                      }

                      [v22 dealloc];
                    }
                  }

                  v18 = [v17 countByEnumeratingWithState:&v46 objects:v50 count:16];
                }

                while (v18);
              }

              if (v17)
              {
                CFRelease(v17);
              }

              i = v42;
            }

            else
            {
              v14 = 0;
              atomic_compare_exchange_strong((v13 + 8), &v14, 1u);
              if (v14)
              {
                if (!*(v13 + 56))
                {
                  atomic_fetch_add((a1 + 8), 1u);
                  *(v13 + 56) = a1;
                }
              }

              else
              {
                v15 = [v13 objectID];
                if ((v8 & 1) == 0)
                {
                  if (v13)
                  {
                    if ((*(v13 + 17) & 2) != 0)
                    {
                      v16 = v15;
                      if (([v15 isTemporaryID] & 1) == 0)
                      {
                        [v45 addObject:v16];
                      }
                    }
                  }

                  [v6 _forgetObject:v13 propagateToObjectStore:0 removeFromRegistry:1];
                }

                if (*MEMORY[0x1E695E0C0] == 1)
                {
                  NSRecordAllocationEvent();
                }

                [v13 dealloc];
              }
            }
          }
        }

        if ((v8 & 1) != 0 || ![v45 count])
        {
          v26 = 0;
        }

        else
        {
          [(NSManagedObjectContext *)v6 lockObjectStore];
          v25 = *(v6 + 32);
          v26 = 1;
          v27 = [v6 _queryGenerationToken];
          [v25 managedObjectContextDidUnregisterObjectsWithIDs:v45 generation:v27];
        }

        v28 = v38;
        v29 = v37;
        if (v45)
        {
        }

        if (v26)
        {
          [(NSManagedObjectContext *)v6 unlockObjectStore];
        }

        if (Count >= 0x201)
        {
          NSZoneFree(0, v43);
        }

        if (v39)
        {
        }

        if (v41)
        {
          objc_autoreleasePoolPop(v41);
        }

        *(a1 + 48) = 0;
        __dmb(0xBu);
        v30 = 0;
        CFRelease(v29);
        v31 = v28 <= 0;
        v3 = v28 - 1;
      }

      while (!v31);
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (uint64_t)_queueForDealloc:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock_with_options();
  v5 = *(a1 + 24);
  Mutable = *(a1 + 32);
  if (v5)
  {
    if (!Mutable)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      *(a1 + 32) = Mutable;
    }

    CFArrayAppendValue(Mutable, a2);
    v6 = 0;
  }

  else
  {
    v6 = Mutable != 0;
  }

  if (*(a1 + 40) && !*(a1 + 20) && *(a1 + 24))
  {
    *(a1 + 20) = 1;
  }

  os_unfair_lock_unlock((a1 + 12));
  if (v5)
  {
    return 0;
  }

  if (*MEMORY[0x1E695E0C0] == 1)
  {
    NSRecordAllocationEvent();
  }

  v8 = 0;
  atomic_compare_exchange_strong(a2 + 2, &v8, 1u);
  if (!v8)
  {
    [(atomic_uint *)a2 dealloc];
  }

  v7 = 1;
  if (v6)
  {
    [(_PFManagedObjectReferenceQueue *)a1 _processReferenceQueue:?];
  }

  return v7;
}

@end