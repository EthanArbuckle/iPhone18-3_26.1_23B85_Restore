@interface BKIOHIDServiceMatcher
- (BKIOHIDServiceMatcher)initWithMatchingDictionary:(id)dictionary dataProvider:(id)provider;
- (BKIOHIDServiceMatcher)initWithMatchingDictionary:(id)dictionary serviceClass:(Class)class dataProvider:(id)provider;
- (BKIOHIDServiceMatcher)initWithSenderDescriptor:(id)descriptor dataProvider:(id)provider;
- (id)_lock_didAddIOHIDServiceRefs:(os_unfair_lock *)refs;
- (id)_servicesForIOHIDServiceRefs:(id)refs;
- (id)_startObserving:(void *)observing queue:(int)queue sync:;
- (id)existingServices;
- (void)_expectDeallocation;
- (void)_lock_asyncNotifyServicesAdded:(uint64_t)added;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BKIOHIDServiceMatcher

- (id)_servicesForIOHIDServiceRefs:(id)refs
{
  v4 = MEMORY[0x277CBEB18];
  refsCopy = refs;
  array = [v4 array];
  serviceClass = self->_serviceClass;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __54__BKIOHIDServiceMatcher__servicesForIOHIDServiceRefs___block_invoke;
  v12[3] = &unk_2784F6898;
  v14 = serviceClass;
  v12[4] = self;
  v8 = array;
  v13 = v8;
  [refsCopy enumerateObjectsUsingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void __54__BKIOHIDServiceMatcher__servicesForIOHIDServiceRefs___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 48);
  v4 = a2;
  v5 = [[v3 alloc] initWithHIDServiceRef:v4];

  if (!*(*(a1 + 32) + 16))
  {
    v9 = 0;
    goto LABEL_8;
  }

  v6 = [v5 senderDescriptor];
  v7 = *(*(a1 + 32) + 16);
  v12 = 0;
  v8 = [v6 matchesDescriptor:v7 failureReason:&v12];
  v9 = v12;

  if (v8)
  {
LABEL_8:
    [*(a1 + 40) addObject:v5];
LABEL_9:

    goto LABEL_10;
  }

  if (v9)
  {
    v10 = BKLogHID();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v14 = v5;
      v15 = 2114;
      v16 = v9;
      _os_log_impl(&dword_223CBE000, v10, OS_LOG_TYPE_DEFAULT, "service %{public}@ did not match: %{public}@", buf, 0x16u);
    }

    goto LABEL_9;
  }

LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  v18 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if (self->_startedMatching)
  {
    WeakRetained = objc_loadWeakRetained(&self->_observer);
    serviceClass = self->_serviceClass;
    v5 = BKLogHID();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      matchingDictionary = self->_matchingDictionary;
      v10 = 134218754;
      selfCopy = self;
      v12 = 2114;
      v13 = v6;
      v14 = 2114;
      v15 = serviceClass;
      v16 = 2114;
      v17 = matchingDictionary;
      v8 = v6;
      _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_INFO, "%p %{public}@ stopped matching %{public}@ with dictionary %{public}@", &v10, 0x2Au);
    }

    atomic_store(1u, &self->_invalidated);
    objc_storeWeak(&self->_observer, 0);
    objc_storeWeak(&self->_observerQueue, 0);
    [(BKIOHIDServiceMatcherDataProviding *)self->_dataProvider unregisterIOHIDServicesCallback:_BKHIDServiceAdded matchingDictionary:self->_matchingDictionary target:self refCon:self->_matchingDictionary];
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = *MEMORY[0x277D85DE8];
}

- (id)_lock_didAddIOHIDServiceRefs:(os_unfair_lock *)refs
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  os_unfair_lock_assert_owner(refs + 2);
  v4 = [(os_unfair_lock *)refs _servicesForIOHIDServiceRefs:v3];
  v5 = BKLogHID();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v19 = v4;
    _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_INFO, "Services added: %{public}@", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v13 + 1) + 8 * i) setServiceStatus:{1, v13}];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_lock_asyncNotifyServicesAdded:(uint64_t)added
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(added + 24) == 1)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"wrong code path, pal"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v12 = NSStringFromSelector(sel__lock_asyncNotifyServicesAdded_);
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138544642;
      v23 = v12;
      v24 = 2114;
      v25 = v14;
      v26 = 2048;
      addedCopy2 = added;
      v28 = 2114;
      v29 = @"BKIOHIDServiceMatcher.m";
      v30 = 1024;
      v31 = 229;
      v32 = 2114;
      v33 = v11;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CD7380);
  }

  v4 = v3;
  WeakRetained = objc_loadWeakRetained((added + 48));
  v6 = objc_loadWeakRetained((added + 56));
  if (!v6)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"shouldn't be possible to be invalid here"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v16 = NSStringFromSelector(sel__lock_asyncNotifyServicesAdded_);
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138544642;
      v23 = v16;
      v24 = 2114;
      v25 = v18;
      v26 = 2048;
      addedCopy2 = added;
      v28 = 2114;
      v29 = @"BKIOHIDServiceMatcher.m";
      v30 = 1024;
      v31 = 234;
      v32 = 2114;
      v33 = v15;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v15 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CD746CLL);
  }

  v7 = v6;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__BKIOHIDServiceMatcher__lock_asyncNotifyServicesAdded___block_invoke;
  block[3] = &unk_2784F6B30;
  block[4] = added;
  v20 = WeakRetained;
  v8 = v4;
  v21 = v8;
  v9 = WeakRetained;
  dispatch_async(v7, block);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __56__BKIOHIDServiceMatcher__lock_asyncNotifyServicesAdded___block_invoke(uint64_t result)
{
  v1 = atomic_load((*(result + 32) + 26));
  if ((v1 & 1) == 0)
  {
    return [*(result + 40) matcher:*(result + 32) servicesDidMatch:*(result + 48)];
  }

  return result;
}

- (id)_startObserving:(void *)observing queue:(int)queue sync:
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a2;
  observingCopy = observing;
  if (self)
  {
    os_unfair_lock_assert_not_owner((self + 8));
    os_unfair_lock_lock((self + 8));
    if (!observingCopy && (queue & 1) == 0)
    {
      v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"missing queue for async case"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v21 = NSStringFromSelector(sel__startObserving_queue_sync_);
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v32 = 138544642;
        selfCopy3 = v21;
        v34 = 2114;
        v35 = v23;
        v36 = 2048;
        selfCopy4 = self;
        v38 = 2114;
        v39 = @"BKIOHIDServiceMatcher.m";
        v40 = 1024;
        v41 = 125;
        v42 = 2114;
        v43 = v20;
        _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v32, 0x3Au);
      }

      [v20 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x223CD77B0);
    }

    if (*(self + 25) == 1)
    {
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"already started matching -- only one observer per matcher, plz"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v25 = NSStringFromSelector(sel__startObserving_queue_sync_);
        v26 = objc_opt_class();
        v27 = NSStringFromClass(v26);
        v32 = 138544642;
        selfCopy3 = v25;
        v34 = 2114;
        v35 = v27;
        v36 = 2048;
        selfCopy4 = self;
        v38 = 2114;
        v39 = @"BKIOHIDServiceMatcher.m";
        v40 = 1024;
        v41 = 126;
        v42 = 2114;
        v43 = v24;
        _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v32, 0x3Au);
      }

      [v24 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x223CD789CLL);
    }

    *(self + 25) = 1;
    *(self + 24) = queue;
    objc_storeWeak((self + 48), v7);
    objc_storeWeak((self + 56), observingCopy);
    v9 = BKLogHID();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v12 = *(self + 32);
      v11 = *(self + 40);
      v32 = 134218754;
      selfCopy3 = self;
      v34 = 2114;
      v35 = v10;
      v36 = 2114;
      selfCopy4 = v11;
      v38 = 2114;
      v39 = v12;
      v13 = v10;
      _os_log_impl(&dword_223CBE000, v9, OS_LOG_TYPE_DEFAULT, "%p %{public}@ started matching %{public}@ with dictionary %{public}@", &v32, 0x2Au);
    }

    v14 = *(self + 64);
    if (!v14)
    {
      v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"must have a data provider"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v29 = NSStringFromSelector(sel__startObserving_queue_sync_);
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = 138544642;
        selfCopy3 = v29;
        v34 = 2114;
        v35 = v31;
        v36 = 2048;
        selfCopy4 = self;
        v38 = 2114;
        v39 = @"BKIOHIDServiceMatcher.m";
        v40 = 1024;
        v41 = 137;
        v42 = 2114;
        v43 = v28;
        _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v32, 0x3Au);
      }

      [v28 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x223CD7988);
    }

    [v14 registerIOHIDServicesCallback:_BKHIDServiceAdded matchingDictionary:*(self + 32) target:self refCon:*(self + 32)];
    if (queue)
    {
      existingServices = [self existingServices];
    }

    else
    {
      v16 = [*(self + 64) IOHIDServicesMatching:*(self + 32)];
      if ([v16 count])
      {
        v17 = [(BKIOHIDServiceMatcher *)self _lock_didAddIOHIDServiceRefs:v16];
        [(BKIOHIDServiceMatcher *)self _lock_asyncNotifyServicesAdded:v17];
      }

      existingServices = 0;
    }

    os_unfair_lock_unlock((self + 8));
  }

  else
  {
    existingServices = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return existingServices;
}

- (id)existingServices
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(BKIOHIDServiceMatcherDataProviding *)self->_dataProvider IOHIDServicesMatching:self->_matchingDictionary];
  v4 = [(BKIOHIDServiceMatcher *)self _servicesForIOHIDServiceRefs:v3];
  v5 = BKLogHID();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    matchingDictionary = self->_matchingDictionary;
    v9 = 138543618;
    v10 = v4;
    v11 = 2114;
    v12 = matchingDictionary;
    _os_log_impl(&dword_223CBE000, v5, OS_LOG_TYPE_DEFAULT, "Services discovered: %{public}@ for:%{public}@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)dealloc
{
  [(BKIOHIDServiceMatcher *)self _expectDeallocation];
  v3.receiver = self;
  v3.super_class = BKIOHIDServiceMatcher;
  [(BKIOHIDServiceMatcher *)&v3 dealloc];
}

- (void)_expectDeallocation
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_startedMatching)
  {
    v3 = atomic_load(&self->_invalidated);
    if ((v3 & 1) == 0)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"dealloc without invalidation"];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v7 = NSStringFromSelector(a2);
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = 138544642;
        v11 = v7;
        v12 = 2114;
        v13 = v9;
        v14 = 2048;
        selfCopy = self;
        v16 = 2114;
        v17 = @"BKIOHIDServiceMatcher.m";
        v18 = 1024;
        v19 = 89;
        v20 = 2114;
        v21 = v6;
        _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v10, 0x3Au);
      }

      [v6 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x223CD7C48);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BKIOHIDServiceMatcher)initWithMatchingDictionary:(id)dictionary serviceClass:(Class)class dataProvider:(id)provider
{
  dictionaryCopy = dictionary;
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = BKIOHIDServiceMatcher;
  v10 = [(BKIOHIDServiceMatcher *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_serviceClass, class);
    v12 = [dictionaryCopy copy];
    matchingDictionary = v11->_matchingDictionary;
    v11->_matchingDictionary = v12;

    objc_storeStrong(&v11->_dataProvider, provider);
  }

  return v11;
}

- (BKIOHIDServiceMatcher)initWithMatchingDictionary:(id)dictionary dataProvider:(id)provider
{
  providerCopy = provider;
  dictionaryCopy = dictionary;
  v8 = [(BKIOHIDServiceMatcher *)self initWithMatchingDictionary:dictionaryCopy serviceClass:objc_opt_class() dataProvider:providerCopy];

  return v8;
}

- (BKIOHIDServiceMatcher)initWithSenderDescriptor:(id)descriptor dataProvider:(id)provider
{
  descriptorCopy = descriptor;
  providerCopy = provider;
  v9 = -[BKIOHIDServiceMatcher initWithUsagePage:usage:builtIn:dataProvider:](self, "initWithUsagePage:usage:builtIn:dataProvider:", [descriptorCopy primaryPage], objc_msgSend(descriptorCopy, "primaryUsage"), 0, providerCopy);

  if (v9)
  {
    objc_storeStrong(&v9->_senderDescriptor, descriptor);
  }

  return v9;
}

@end