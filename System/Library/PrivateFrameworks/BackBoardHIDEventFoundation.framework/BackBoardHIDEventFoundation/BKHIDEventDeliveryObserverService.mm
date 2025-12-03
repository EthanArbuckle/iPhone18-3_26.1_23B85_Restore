@interface BKHIDEventDeliveryObserverService
- (BKHIDEventDeliveryObserverService)initWithDomainServiceServer:(id)server;
- (BKHIDEventDeliveryObserverService)initWithServer:(id)server;
- (id)connection:(id)connection setObservesDeferringResolutions:(BOOL)resolutions;
- (void)_locked_postChainsToObservingClients;
- (void)connection:(id)connection setObservesDeferringChainIdentities:(id)identities entitled:(BOOL)entitled;
- (void)connectionDidTerminate:(id)terminate;
- (void)deliveryChainDidUpdate:(id)update forIdentity:(id)identity reason:(id)reason;
@end

@implementation BKHIDEventDeliveryObserverService

- (void)_locked_postChainsToObservingClients
{
  v38 = *MEMORY[0x277D85DE8];
  if (self)
  {
    os_unfair_lock_assert_owner((self + 16));
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = *(self + 32);
    v23 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (!v23)
    {
      goto LABEL_36;
    }

    v22 = *v29;
    while (1)
    {
      v2 = 0;
      do
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v28 + 1) + 8 * v2);
        v4 = [*(self + 8) userInfoForConnection:v3];
        v5 = v4;
        if (v4)
        {
          v6 = *(v4 + 32);
          v7 = *(v5 + 24);
        }

        else
        {
          v6 = 0;
          v7 = 0;
        }

        v8 = v7;
        if ([v8 count])
        {
          v24 = v3;
          v25 = v6;
          v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v10 = v8;
          v11 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v33;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v33 != v13)
                {
                  objc_enumerationMutation(v10);
                }

                v15 = [*(self + 48) objectForKey:*(*(&v32 + 1) + 8 * i)];
                if (v15)
                {
                  [v9 addObject:v15];
                }
              }

              v12 = [v10 countByEnumeratingWithState:&v32 objects:v37 count:16];
            }

            while (v12);
          }

          v3 = v24;
          v6 = v25;
        }

        else
        {
          v9 = 0;
        }

        if (v5)
        {
          if (*(v5 + 9))
          {
            goto LABEL_25;
          }

          v16 = *(v5 + 12);
        }

        else
        {
          v16 = 0;
        }

        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __73__BKHIDEventDeliveryObserverService__locked_postChainsToObservingClients__block_invoke;
        v26[3] = &__block_descriptor_36_e34__16__0__BKSHIDEventDeliveryChain_8l;
        v27 = v16;
        v17 = [v9 bs_map:v26];

        v9 = v17;
LABEL_25:
        if (([v6 count] || objc_msgSend(v9, "count")) && (BSEqualObjects() & 1) == 0)
        {
          if (v5)
          {
            objc_storeStrong((v5 + 32), v9);
          }

          v18 = [*(self + 8) remoteTargetForServiceConnection:v3];
          [v18 didUpdateDeferringChains:v9];
        }

        ++v2;
      }

      while (v2 != v23);
      v19 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      v23 = v19;
      if (!v19)
      {
LABEL_36:

        break;
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)connectionDidTerminate:(id)terminate
{
  terminateCopy = terminate;
  os_unfair_lock_lock(&self->_lock);
  [(NSMutableSet *)self->_lock_deferringChainObserverConnections removeObject:terminateCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)connection:(id)connection setObservesDeferringChainIdentities:(id)identities entitled:(BOOL)entitled
{
  v35 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  identitiesCopy = identities;
  os_unfair_lock_lock(&self->_lock);
  v10 = [(BKHIDDomainServiceServer *)self->_server userInfoForConnection:connectionCopy];
  if (!v10)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"missing record"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      v24 = v19;
      v25 = 2114;
      v26 = v21;
      v27 = 2048;
      selfCopy = self;
      v29 = 2114;
      v30 = @"BKHIDEventDeliveryObserverService.m";
      v31 = 1024;
      v32 = 318;
      v33 = 2114;
      v34 = v18;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CD829CLL);
  }

  v11 = v10;
  remoteToken = [connectionCopy remoteToken];
  *(v11 + 12) = [remoteToken pid];

  *(v11 + 9) = entitled;
  objc_setProperty_nonatomic_copy(v11, v13, identitiesCopy, 24);
  lock_deferringChainObserverConnections = self->_lock_deferringChainObserverConnections;
  if (!lock_deferringChainObserverConnections)
  {
    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v16 = self->_lock_deferringChainObserverConnections;
    self->_lock_deferringChainObserverConnections = v15;

    lock_deferringChainObserverConnections = self->_lock_deferringChainObserverConnections;
  }

  [(NSMutableSet *)lock_deferringChainObserverConnections addObject:connectionCopy];
  [(BKHIDEventDeliveryObserverService *)self _locked_postChainsToObservingClients];
  os_unfair_lock_unlock(&self->_lock);

  v17 = *MEMORY[0x277D85DE8];
}

- (id)connection:(id)connection setObservesDeferringResolutions:(BOOL)resolutions
{
  resolutionsCopy = resolutions;
  v32 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  if (!connectionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKHIDEventDeliveryObserverService.m" lineNumber:292 description:{@"Invalid parameter not satisfying: %@", @"connection"}];
  }

  v8 = [(BKHIDDomainServiceServer *)self->_server userInfoForConnection:connectionCopy];
  if (!v8)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"missing record"];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138544642;
      v21 = v17;
      v22 = 2114;
      v23 = v19;
      v24 = 2048;
      selfCopy = self;
      v26 = 2114;
      v27 = @"BKHIDEventDeliveryObserverService.m";
      v28 = 1024;
      v29 = 295;
      v30 = 2114;
      v31 = v16;
      _os_log_error_impl(&dword_223CBE000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x223CD84E0);
  }

  v9 = v8;
  remoteToken = [connectionCopy remoteToken];
  v11 = [remoteToken pid];

  os_unfair_lock_lock(&self->_lock);
  if (resolutionsCopy)
  {
    v9[8] = 1;
    v12 = [(BSMutableIntegerMap *)self->_lock_observationsByPID objectForKey:v11];
  }

  else
  {
    v12 = 0;
    v9[8] = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)deliveryChainDidUpdate:(id)update forIdentity:(id)identity reason:(id)reason
{
  v86 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  identityCopy = identity;
  reasonCopy = reason;
  selfCopy = self;
  os_unfair_lock_lock(&self->_lock);
  v11 = BKLogEventDelivery();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = reasonCopy;
    *&buf[12] = 2114;
    *&buf[14] = updateCopy;
    _os_log_impl(&dword_223CBE000, v11, OS_LOG_TYPE_DEFAULT, "chain did update (%{public}@) %{public}@", buf, 0x16u);
  }

  v50 = reasonCopy;

  v12 = objc_alloc_init(MEMORY[0x277CCAB58]);
  lock_identityToPIDToObservations = self->_lock_identityToPIDToObservations;
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __79__BKHIDEventDeliveryObserverService_deliveryChainDidUpdate_forIdentity_reason___block_invoke;
  v79[3] = &unk_2784F68E0;
  v49 = v12;
  v80 = v49;
  v14 = v79;
  if (lock_identityToPIDToObservations)
  {
    v15 = [(NSMutableDictionary *)lock_identityToPIDToObservations->_trunkToBranchDictionary objectForKey:identityCopy];
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __43__BKThreeLevelForest_enumerateTrunk_block___block_invoke;
    v84 = &unk_2784F69D0;
    v85 = v14;
    [v15 enumerateKeysAndObjectsUsingBlock:buf];
  }

  [(NSMutableDictionary *)selfCopy->_lock_identityToChain setObject:updateCopy forKeyedSubscript:identityCopy];
  v16 = selfCopy->_lock_identityToPIDToObservations;
  if (v16)
  {
    [(NSMutableDictionary *)v16->_trunkToBranchDictionary removeObjectForKey:identityCopy];
  }

  environment = [updateCopy environment];
  selectionPath = [updateCopy selectionPath];
  compatibilityDisplay = [updateCopy compatibilityDisplay];
  if (!compatibilityDisplay)
  {
    compatibilityDisplay = [updateCopy display];
  }

  v58 = identityCopy;
  v51 = updateCopy;
  deferringPath = [updateCopy deferringPath];
  v54 = [deferringPath count];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v18 = deferringPath;
  v19 = [v18 countByEnumeratingWithState:&v75 objects:v82 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v76;
    v23 = -1;
    do
    {
      v24 = 0;
      v25 = v21 + 1;
      do
      {
        if (*v76 != v22)
        {
          objc_enumerationMutation(v18);
        }

        token = [*(*(&v75 + 1) + 8 * v24) token];
        _isString = [token _isString];

        if (_isString)
        {
          v23 = v25;
        }

        ++v24;
        ++v25;
      }

      while (v20 != v24);
      v21 += v20;
      v20 = [v18 countByEnumeratingWithState:&v75 objects:v82 count:16];
    }

    while (v20);
  }

  else
  {
    v23 = -1;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = v18;
  v28 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = 0;
    v53 = *v72;
    v31 = 0xFFFFFFFFLL;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        v33 = v31;
        if (*v72 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v71 + 1) + 8 * i);
        ++v30;
        v31 = [v34 pid];
        v35 = MEMORY[0x277CF06C0];
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __79__BKHIDEventDeliveryObserverService_deliveryChainDidUpdate_forIdentity_reason___block_invoke_2;
        v64[3] = &unk_2784F6908;
        v64[4] = v34;
        v65 = environment;
        v66 = selectionPath;
        v67 = compatibilityDisplay;
        v68 = v30;
        v69 = v54;
        v70 = v23;
        v36 = [v35 build:v64];
        v37 = selfCopy->_lock_identityToPIDToObservations;
        v38 = [MEMORY[0x277CCABB0] numberWithInt:v31];
        [(BKThreeLevelForest *)v37 addLeaf:v36 toBranch:v38 trunk:v58];

        if (v33 >= 1 && v33 != v31)
        {
          v39 = selfCopy->_lock_identityToPIDToObservations;
          v40 = [MEMORY[0x277CCABB0] numberWithInt:v33];
          [(BKThreeLevelForest *)v39 addLeaf:v36 toBranch:v40 trunk:v58];
        }
      }

      v29 = [obj countByEnumeratingWithState:&v71 objects:v81 count:16];
    }

    while (v29);
  }

  v41 = selfCopy->_lock_identityToPIDToObservations;
  if (v41)
  {
    v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
    trunkToBranchDictionary = v41->_trunkToBranchDictionary;
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __58__BKThreeLevelForest_dictionaryContainingBranchesToLeaves__block_invoke;
    v84 = &unk_2784F6A20;
    v41 = v42;
    v85 = v41;
    [(NSMutableDictionary *)trunkToBranchDictionary enumerateKeysAndObjectsUsingBlock:buf];
  }

  v44 = [(BKThreeLevelForest *)v41 mutableCopy];

  v45 = objc_alloc_init(MEMORY[0x277CBEB98]);
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __79__BKHIDEventDeliveryObserverService_deliveryChainDidUpdate_forIdentity_reason___block_invoke_3;
  v61[3] = &unk_2784F6930;
  v62 = v44;
  v63 = v45;
  v46 = v45;
  v47 = v44;
  [v49 enumerateIndexesUsingBlock:v61];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __79__BKHIDEventDeliveryObserverService_deliveryChainDidUpdate_forIdentity_reason___block_invoke_4;
  v60[3] = &unk_2784F6958;
  v60[4] = selfCopy;
  [v47 enumerateKeysAndObjectsUsingBlock:v60];
  [(BKHIDEventDeliveryObserverService *)selfCopy _locked_postChainsToObservingClients];
  os_unfair_lock_unlock(&selfCopy->_lock);

  v48 = *MEMORY[0x277D85DE8];
}

uint64_t __79__BKHIDEventDeliveryObserverService_deliveryChainDidUpdate_forIdentity_reason___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 addIndex:v3];
}

void __79__BKHIDEventDeliveryObserverService_deliveryChainDidUpdate_forIdentity_reason___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  [v5 setPid:{objc_msgSend(*(a1 + 32), "pid")}];
  v3 = [*(a1 + 32) token];
  if (v3)
  {
    [v5 setToken:v3];
  }

  [v5 setEnvironment:*(a1 + 40)];
  if (*(a1 + 48))
  {
    [v5 setSelectionPath:?];
  }

  [v5 setDisplay:*(a1 + 56)];
  if (*(a1 + 64) == *(a1 + 72))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  [v5 setPolicyStatus:v4];
  if (*(a1 + 64) == *(a1 + 80))
  {
    [v5 setFinalStringToken:1];
  }
}

void __79__BKHIDEventDeliveryObserverService_deliveryChainDidUpdate_forIdentity_reason___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
    [v8 setObject:v7 forKey:v9];
  }
}

void __79__BKHIDEventDeliveryObserverService_deliveryChainDidUpdate_forIdentity_reason___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 intValue];
  v7 = *(a1 + 32);
  v8 = v5;
  v9 = v8;
  v17 = v8;
  if (v7)
  {
    v9 = v8;
    if (!v8)
    {
      v9 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    v10 = [*(v7 + 24) objectForKey:v6];
    if (!v10)
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEB98]);
    }

    if ((BSEqualObjects() & 1) != 0 || ![v9 count] && !objc_msgSend(v10, "count"))
    {
      goto LABEL_18;
    }

    v11 = [v9 count];
    v12 = *(v7 + 24);
    if (v11)
    {
      if (!v12)
      {
        v13 = objc_alloc_init(MEMORY[0x277CF0C68]);
        v14 = *(v7 + 24);
        *(v7 + 24) = v13;

        v12 = *(v7 + 24);
      }

      [v12 setObject:v9 forKey:v6];
    }

    else
    {
      [v12 removeObjectForKey:v6];
    }

    v9 = [*(*(a1 + 32) + 8) connectionForPID:v6];
    if (v9)
    {
      v15 = [*(*(a1 + 32) + 8) userInfoForConnection:v9];
      v10 = v15;
      if (v15 && *(v15 + 8) == 1)
      {
        v16 = [*(*(a1 + 32) + 8) remoteTargetForServiceConnection:v9];
        [v16 didUpdateDeferringObservations:v17];
      }

LABEL_18:
    }
  }
}

- (BKHIDEventDeliveryObserverService)initWithDomainServiceServer:(id)server
{
  serverCopy = server;
  if (!serverCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKHIDEventDeliveryObserverService.m" lineNumber:94 description:{@"Invalid parameter not satisfying: %@", @"domainServiceServer"}];
  }

  v15.receiver = self;
  v15.super_class = BKHIDEventDeliveryObserverService;
  v7 = [(BKHIDEventDeliveryObserverService *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    lock_identityToChain = v8->_lock_identityToChain;
    v8->_lock_identityToChain = v9;

    v11 = objc_alloc_init(BKThreeLevelForest);
    lock_identityToPIDToObservations = v8->_lock_identityToPIDToObservations;
    v8->_lock_identityToPIDToObservations = v11;

    objc_storeStrong(&v8->_server, server);
  }

  return v8;
}

- (BKHIDEventDeliveryObserverService)initWithServer:(id)server
{
  serverCopy = server;
  if (!serverCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"BKHIDEventDeliveryObserverService.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"server"}];
  }

  domainServiceServer = [serverCopy domainServiceServer];
  v7 = [(BKHIDEventDeliveryObserverService *)self initWithDomainServiceServer:domainServiceServer];

  return v7;
}

@end