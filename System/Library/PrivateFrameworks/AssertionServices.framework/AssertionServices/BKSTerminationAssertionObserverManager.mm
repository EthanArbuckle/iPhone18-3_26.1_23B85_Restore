@interface BKSTerminationAssertionObserverManager
- (BKSTerminationAssertionObserverManager)init;
- (BOOL)hasTerminationAssertionForBundleID:(id)d;
- (unint64_t)efficacyForBundleID:(id)d;
- (void)_createMonitor;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation BKSTerminationAssertionObserverManager

- (BKSTerminationAssertionObserverManager)init
{
  v9.receiver = self;
  v9.super_class = BKSTerminationAssertionObserverManager;
  v2 = [(BKSTerminationAssertionObserverManager *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v4 = [MEMORY[0x277D47028] createBackgroundQueue:@"com.apple.runningboardservices.bksterminationassertion.callout"];
    calloutQueue = v3->_calloutQueue;
    v3->_calloutQueue = v4;

    v6 = [MEMORY[0x277CBEB58] set];
    launchPreventedBundleIDs = v3->_launchPreventedBundleIDs;
    v3->_launchPreventedBundleIDs = v6;

    [(BKSTerminationAssertionObserverManager *)v3 _createMonitor];
  }

  return v3;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  observers = self->_observers;
  if (!observers)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = self->_observers;
    self->_observers = v5;

    observers = self->_observers;
  }

  [(NSMutableSet *)observers addObject:observerCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_observers removeObject:observerCopy];

  if (![(NSMutableSet *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)efficacyForBundleID:(id)d
{
  if ([(BKSTerminationAssertionObserverManager *)self hasTerminationAssertionForBundleID:d])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (BOOL)hasTerminationAssertionForBundleID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  os_unfair_lock_lock(&self->_lock);
  if (self->_monitorIsReady)
  {
    LOBYTE(v5) = [(NSMutableSet *)self->_launchPreventedBundleIDs containsObject:dCopy];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D46F48]);
    v7 = [MEMORY[0x277D46F60] identityForEmbeddedApplicationIdentifier:dCopy jobLabel:dCopy auid:geteuid() platform:6];
    v8 = [v6 initWithIdentity:v7];

    mEMORY[0x277D46E20] = [MEMORY[0x277D46E20] sharedInstance];
    v10 = [mEMORY[0x277D46E20] preventLaunchPredicatesWithError:0];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v10;
    v5 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v12 = *v17;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v11);
          }

          if ([*(*(&v16 + 1) + 8 * i) matchesProcess:{v8, v16}])
          {
            LOBYTE(v5) = 1;
            goto LABEL_13;
          }
        }

        v5 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  os_unfair_lock_unlock(&self->_lock);

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_createMonitor
{
  self->_monitorIsReady = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__BKSTerminationAssertionObserverManager__createMonitor__block_invoke;
  v5[3] = &unk_278871C68;
  v5[4] = self;
  v3 = [MEMORY[0x277D46F80] monitorWithConfiguration:v5];
  monitor = self->_monitor;
  self->_monitor = v3;
}

void __56__BKSTerminationAssertionObserverManager__createMonitor__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setEvents:2];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __56__BKSTerminationAssertionObserverManager__createMonitor__block_invoke_2;
  v4[3] = &unk_278871C40;
  v4[4] = *(a1 + 32);
  [v3 setPreventLaunchUpdateHandle:v4];
}

void __56__BKSTerminationAssertionObserverManager__createMonitor__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v80 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 32));
  *(*(a1 + 32) + 16) = 1;
  v56 = a1;
  v55 = [*(*(a1 + 32) + 24) copy];
  v5 = [MEMORY[0x277CBEB58] set];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v73 objects:v79 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v74;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v74 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v73 + 1) + 8 * i);
        v12 = [v11 bundleIdentifier];

        if (v12)
        {
          v13 = [v11 bundleIdentifier];
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v73 objects:v79 count:16];
    }

    while (v8);
  }

  v49 = v6;

  v14 = [v5 mutableCopy];
  [v14 minusSet:*(*(v56 + 32) + 48)];
  v51 = [*(*(v56 + 32) + 48) mutableCopy];
  [v51 minusSet:v5];
  v50 = v5;
  objc_storeStrong((*(v56 + 32) + 48), v5);
  os_unfair_lock_unlock((*(v56 + 32) + 32));
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v69 objects:v78 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v70;
    v53 = *MEMORY[0x277CCA470];
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v70 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v69 + 1) + 8 * j);
        v20 = MEMORY[0x277D46F48];
        v21 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:{v19, v49, v50}];
        v68 = 0;
        v22 = [v20 handleForPredicate:v21 error:&v68];
        v23 = v68;

        if (v22)
        {
          v24 = [v22 currentState];
          v25 = [v24 isRunning];

          if ((v25 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v26 = [v23 userInfo];
          v27 = [v26 objectForKeyedSubscript:v53];
          if (v27 == @"Specified predicate matched multiple processes")
          {
            goto LABEL_24;
          }

          v28 = v27;
          if (!v27)
          {

LABEL_23:
            v30 = *(*(v56 + 32) + 40);
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __56__BKSTerminationAssertionObserverManager__createMonitor__block_invoke_3;
            block[3] = &unk_278871C18;
            v66 = v55;
            v67 = v19;
            dispatch_async(v30, block);
            v26 = v66;
LABEL_24:

            goto LABEL_25;
          }

          v29 = [(__CFString *)v27 isEqual:@"Specified predicate matched multiple processes"];

          if ((v29 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

LABEL_25:
      }

      v16 = [obj countByEnumeratingWithState:&v69 objects:v78 count:16];
    }

    while (v16);
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v31 = v51;
  v32 = [v31 countByEnumeratingWithState:&v61 objects:v77 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v62;
    v52 = *MEMORY[0x277CCA470];
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v62 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v61 + 1) + 8 * k);
        v37 = MEMORY[0x277D46F48];
        v38 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:{v36, v49}];
        v60 = 0;
        v39 = [v37 handleForPredicate:v38 error:&v60];
        v40 = v60;

        if (v39)
        {
          v41 = [v39 currentState];
          v42 = [v41 isRunning];

          if ((v42 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v43 = [v40 userInfo];
          v44 = [v43 objectForKeyedSubscript:v52];
          if (v44 == @"Specified predicate matched multiple processes")
          {
            goto LABEL_41;
          }

          v45 = v44;
          if (!v44)
          {

LABEL_40:
            v47 = *(*(v56 + 32) + 40);
            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = 3221225472;
            v57[2] = __56__BKSTerminationAssertionObserverManager__createMonitor__block_invoke_4;
            v57[3] = &unk_278871C18;
            v58 = v55;
            v59 = v36;
            dispatch_async(v47, v57);
            v43 = v58;
LABEL_41:

            goto LABEL_42;
          }

          v46 = [(__CFString *)v44 isEqual:@"Specified predicate matched multiple processes"];

          if ((v46 & 1) == 0)
          {
            goto LABEL_40;
          }
        }

LABEL_42:
      }

      v33 = [v31 countByEnumeratingWithState:&v61 objects:v77 count:16];
    }

    while (v33);
  }

  v48 = *MEMORY[0x277D85DE8];
}

void __56__BKSTerminationAssertionObserverManager__createMonitor__block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) noteTerminationAssertionEfficacyChangedTo:3 forBundleIdentifier:{*(a1 + 40), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __56__BKSTerminationAssertionObserverManager__createMonitor__block_invoke_4(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) noteTerminationAssertionEfficacyChangedTo:0 forBundleIdentifier:{*(a1 + 40), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end