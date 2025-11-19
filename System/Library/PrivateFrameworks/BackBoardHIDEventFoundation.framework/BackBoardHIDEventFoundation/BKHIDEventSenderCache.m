@interface BKHIDEventSenderCache
- (BKHIDEventSenderCache)initWithQueue:(id)a3;
- (NSString)description;
- (id)senderInfoForSenderID:(unint64_t)a3;
- (void)addSenderInfo:(id)a3;
- (void)addSenderInfo:(id)a3 forSenderID:(unint64_t)a4;
- (void)removeSenderInfo:(id)a3;
- (void)serviceDidDisappear:(id)a3;
- (void)sync;
@end

@implementation BKHIDEventSenderCache

- (void)removeSenderInfo:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"senders != ((void*)0)"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v11 = NSStringFromSelector(a2);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138544642;
      v18 = v11;
      v19 = 2114;
      v20 = v13;
      v21 = 2048;
      v22 = self;
      v23 = 2114;
      v24 = @"BKHIDEventSenderCache.m";
      v25 = 1024;
      v26 = 123;
      v27 = 2114;
      v28 = v10;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CDB9ACLL);
  }

  v6 = v5;
  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_senderIDToSenderInfo copy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__BKHIDEventSenderCache_removeSenderInfo___block_invoke;
  v14[3] = &unk_2784F6BC0;
  v15 = v6;
  v16 = self;
  v8 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v14];

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

void __42__BKHIDEventSenderCache_removeSenderInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    v11 = 0x277CCA000uLL;
    do
    {
      v12 = 0;
      v26 = v9;
      do
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if (*(*(&v27 + 1) + 8 * v12) == v6)
        {
          v13 = [v5 unsignedLongLongValue];
          v14 = BKLogHID();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = objc_opt_class();
            *buf = 134218242;
            v32 = v13;
            v33 = 2114;
            v34 = v15;
            v16 = v10;
            v17 = v6;
            v18 = v7;
            v19 = a1;
            v20 = v5;
            v21 = v11;
            v22 = v15;
            _os_log_impl(&dword_223CBE000, v14, OS_LOG_TYPE_DEFAULT, "purge sender info for senderID:%llX -- %{public}@", buf, 0x16u);

            v11 = v21;
            v5 = v20;
            a1 = v19;
            v7 = v18;
            v6 = v17;
            v10 = v16;
            v9 = v26;
          }

          v23 = *(*(a1 + 40) + 24);
          v24 = [*(v11 + 2992) numberWithUnsignedLongLong:v13];
          [v23 removeObjectForKey:v24];
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v9);
  }

  v25 = *MEMORY[0x277D85DE8];
}

- (void)addSenderInfo:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"senders != ((void*)0)"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v22 = v13;
      v23 = 2114;
      v24 = v15;
      v25 = 2048;
      v26 = self;
      v27 = 2114;
      v28 = @"BKHIDEventSenderCache.m";
      v29 = 1024;
      v30 = 114;
      v31 = 2114;
      v32 = v12;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CDBDC4);
  }

  v6 = v5;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        -[BKHIDEventSenderCache addSenderInfo:forSenderID:](self, "addSenderInfo:forSenderID:", *(*(&v16 + 1) + 8 * v10), [*(*(&v16 + 1) + 8 * v10) senderID]);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addSenderInfo:(id)a3 forSenderID:(unint64_t)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a4];
  v8 = [(NSMutableDictionary *)self->_senderIDToSenderInfo objectForKeyedSubscript:v7];

  v9 = BKLogHID();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *v13 = 134217984;
      *&v13[4] = a4;
      _os_log_impl(&dword_223CBE000, v9, OS_LOG_TYPE_DEFAULT, "we already have a service for senderID:%llX", v13, 0xCu);
    }
  }

  else
  {
    if (v10)
    {
      *v13 = 134218242;
      *&v13[4] = a4;
      *&v13[12] = 2114;
      *&v13[14] = objc_opt_class();
      v11 = *&v13[14];
      _os_log_impl(&dword_223CBE000, v9, OS_LOG_TYPE_DEFAULT, "cache sender info for senderID:%llX -- %{public}@", v13, 0x16u);
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 addDisappearanceObserver:self queue:self->_queue];
    }

    [(NSMutableDictionary *)self->_senderIDToSenderInfo setObject:v6 forKeyedSubscript:v7, *v13, *&v13[16], v14];
  }

  os_unfair_lock_unlock(&self->_lock);

  v12 = *MEMORY[0x277D85DE8];
}

- (id)senderInfoForSenderID:(unint64_t)a3
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  senderIDToSenderInfo = self->_senderIDToSenderInfo;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a3];
  v7 = [(NSMutableDictionary *)senderIDToSenderInfo objectForKey:v6];

  os_unfair_lock_unlock(&self->_lock);
  if (!v7)
  {
    v8 = BKLogHID();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      v12 = a3;
      _os_log_impl(&dword_223CBE000, v8, OS_LOG_TYPE_DEFAULT, "unknown senderID: 0x%llX", &v11, 0xCu);
    }

    v7 = +[BKHIDUnknownSender unknownSenderInfo];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)sync
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__BKHIDEventSenderCache_sync__block_invoke;
  block[3] = &unk_2784F6B98;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __29__BKHIDEventSenderCache_sync__block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v2);
}

- (void)serviceDidDisappear:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v4 = MEMORY[0x277CBEA60];
  v5 = a3;
  v6 = [v4 arrayWithObjects:&v8 count:1];

  [(BKHIDEventSenderCache *)self removeSenderInfo:v6, v8, v9];
  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_senderIDToSenderInfo withName:@"senderIDToSenderInfo"];
  v5 = [v3 build];

  return v5;
}

- (BKHIDEventSenderCache)initWithQueue:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = BKHIDEventSenderCache;
  v6 = [(BKHIDEventSenderCache *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    senderIDToSenderInfo = v7->_senderIDToSenderInfo;
    v7->_senderIDToSenderInfo = v8;
  }

  return v7;
}

@end