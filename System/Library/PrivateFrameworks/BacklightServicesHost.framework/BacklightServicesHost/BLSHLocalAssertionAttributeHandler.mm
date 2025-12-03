@interface BLSHLocalAssertionAttributeHandler
+ (Class)attributeBaseClass;
+ (Class)entryClass;
+ (id)attributeClasses;
+ (id)registerHandlerForService:(id)service;
- (BLSHLocalAssertionService)service;
- (id)initForService:(id)service;
- (id)withLock_entryFromEntries:(void *)entries forAttribute:;
- (void)activateAttributes:(id)attributes fromAssertion:(id)assertion forService:(id)service;
- (void)deactivateAttributes:(id)attributes fromAssertion:(id)assertion forService:(id)service;
- (void)setupService;
@end

@implementation BLSHLocalAssertionAttributeHandler

- (BLSHLocalAssertionService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

+ (id)registerHandlerForService:(id)service
{
  serviceCopy = service;
  v5 = [[self alloc] initForService:serviceCopy];

  [v5 setupService];

  return v5;
}

+ (id)attributeClasses
{
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ must subclass BLSHLocalAssertionAttributeHandler and override %@", self, v5];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138544642;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    selfCopy = self;
    v17 = 2114;
    v18 = @"BLSHLocalAssertionAttributeHandler.m";
    v19 = 1024;
    v20 = 25;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v6 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (Class)attributeBaseClass
{
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ must subclass BLSHLocalAssertionAttributeHandler and override %@", self, v5];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138544642;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    selfCopy = self;
    v17 = 2114;
    v18 = @"BLSHLocalAssertionAttributeHandler.m";
    v19 = 1024;
    v20 = 30;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v6 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (Class)entryClass
{
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ must subclass BLSHLocalAssertionAttributeHandler and override %@", self, v5];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v7 = NSStringFromSelector(a2);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138544642;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2048;
    selfCopy = self;
    v17 = 2114;
    v18 = @"BLSHLocalAssertionAttributeHandler.m";
    v19 = 1024;
    v20 = 35;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v6 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)initForService:(id)service
{
  serviceCopy = service;
  v10.receiver = self;
  v10.super_class = BLSHLocalAssertionAttributeHandler;
  v5 = [(BLSHLocalAssertionAttributeHandler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    entries = v6->_entries;
    v6->_entries = dictionary;

    objc_storeWeak(&v6->_service, serviceCopy);
  }

  return v6;
}

- (void)setupService
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  attributeClasses = [objc_opt_class() attributeClasses];
  [WeakRetained registerAttributeHandler:self forAttributeClasses:attributeClasses];
}

- (void)activateAttributes:(id)attributes fromAssertion:(id)assertion forService:(id)service
{
  v52 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  assertionCopy = assertion;
  serviceCopy = service;
  v37 = assertionCopy;
  identifier = [assertionCopy identifier];
  if (identifier)
  {
    os_unfair_lock_lock(&self->_lock);
    array = [(NSMutableDictionary *)self->_entries objectForKey:identifier];
    if (!array)
    {
      array = [MEMORY[0x277CBEB18] array];
      [(NSMutableDictionary *)self->_entries setObject:array forKey:identifier];
    }

    v33 = identifier;
    entryClass = [objc_opt_class() entryClass];
    attributeBaseClass = [objc_opt_class() attributeBaseClass];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v34 = attributesCopy;
    v13 = attributesCopy;
    v14 = [v13 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v40;
      selfCopy = self;
      do
      {
        v17 = 0;
        do
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v39 + 1) + 8 * v17);
          if (objc_opt_isKindOfClass())
          {
            v20 = [(BLSHLocalAssertionAttributeHandler *)self withLock_entryFromEntries:array forAttribute:v18];
            if (v20)
            {
              v19 = v20;
              v21 = array;
              reactivateIfPossible = [v20 reactivateIfPossible];
              v23 = bls_assertions_log();
              v24 = v23;
              if (reactivateIfPossible)
              {
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  v25 = NSStringFromBLSAssertingObject();
                  *buf = 134218754;
                  selfCopy3 = selfCopy;
                  v45 = 2114;
                  v46 = v19;
                  v47 = 2112;
                  v48 = v18;
                  v49 = 2112;
                  v50 = v25;
                  _os_log_debug_impl(&dword_21FD11000, v24, OS_LOG_TYPE_DEBUG, "%p did re-activate entry:%{public}@ for attribute:%{pubic}@ assertion:%{pubic}@", buf, 0x2Au);
                  goto LABEL_28;
                }
              }

              else if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
              {
                v25 = NSStringFromBLSAssertingObject();
                *buf = 134218754;
                selfCopy3 = selfCopy;
                v45 = 2114;
                v46 = v19;
                v47 = 2112;
                v48 = v18;
                v49 = 2112;
                v50 = v25;
                _os_log_fault_impl(&dword_21FD11000, v24, OS_LOG_TYPE_FAULT, "%p (cannot re-activate) already have entry:%{public}@ for attribute:%{pubic}@ assertion:%{pubic}@", buf, 0x2Au);
LABEL_28:
              }

              array = v21;
              self = selfCopy;
              goto LABEL_12;
            }

            v19 = [entryClass activateForAttribute:v18 fromAssertion:v37 forService:serviceCopy attributeHandler:self];
            v26 = bls_assertions_log();
            v27 = v26;
            if (v19)
            {
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                NSStringFromBLSAssertingObject();
                v30 = v29 = array;
                *buf = 134218754;
                selfCopy3 = selfCopy;
                v45 = 2112;
                v46 = v19;
                v47 = 2112;
                v48 = v18;
                v49 = 2112;
                v50 = v30;
                _os_log_debug_impl(&dword_21FD11000, v27, OS_LOG_TYPE_DEBUG, "%p did activate entry:%{pubic}@ for attribute:%{pubic}@ assertion:%{pubic}@", buf, 0x2Au);

                array = v29;
                self = selfCopy;
              }

              [array addObject:v19];
            }

            else
            {
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v28 = NSStringFromBLSAssertingObject();
                *buf = 134218754;
                selfCopy3 = self;
                v45 = 2112;
                v46 = entryClass;
                v47 = 2114;
                v48 = v18;
                v49 = 2112;
                v50 = v28;
                _os_log_impl(&dword_21FD11000, v27, OS_LOG_TYPE_DEFAULT, "%p nil when activating attribute:%{pubic}@ entryClass:%{public}@ assertion:%{pubic}@", buf, 0x2Au);
              }

              v19 = v27;
            }
          }

          else
          {
            v19 = bls_assertions_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
            {
              *buf = 134218498;
              selfCopy3 = self;
              v45 = 2112;
              v46 = v18;
              v47 = 2112;
              v48 = attributeBaseClass;
              _os_log_fault_impl(&dword_21FD11000, v19, OS_LOG_TYPE_FAULT, "%p cannot activate invalid attribute:%@ not of class:%@", buf, 0x20u);
            }
          }

LABEL_12:

          ++v17;
        }

        while (v15 != v17);
        v31 = [v13 countByEnumeratingWithState:&v39 objects:v51 count:16];
        v15 = v31;
      }

      while (v31);
    }

    os_unfair_lock_unlock(&self->_lock);
    identifier = v33;
    attributesCopy = v34;
  }

  else
  {
    array = bls_assertions_log();
    if (os_log_type_enabled(array, OS_LOG_TYPE_FAULT))
    {
      [BLSHLocalAssertionAttributeHandler activateAttributes:fromAssertion:forService:];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)deactivateAttributes:(id)attributes fromAssertion:(id)assertion forService:(id)service
{
  v43 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  assertionCopy = assertion;
  identifier = [assertionCopy identifier];
  if (identifier)
  {
    os_unfair_lock_lock(&self->_lock);
    [objc_opt_class() attributeBaseClass];
    v10 = [(NSMutableDictionary *)self->_entries objectForKey:identifier];
    if (v10)
    {
      v27 = identifier;
      v28 = attributesCopy;
      v29 = assertionCopy;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v11 = attributesCopy;
      v12 = [v11 countByEnumeratingWithState:&v30 objects:v42 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v31;
        do
        {
          v15 = 0;
          do
          {
            if (*v31 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v30 + 1) + 8 * v15);
            if (objc_opt_isKindOfClass())
            {
              v17 = [(BLSHLocalAssertionAttributeHandler *)self withLock_entryFromEntries:v10 forAttribute:v16];
              v18 = bls_assertions_log();
              v19 = v18;
              if (v17)
              {
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
                {
                  v20 = NSStringFromBLSAssertingObject();
                  *buf = 134218754;
                  selfCopy3 = self;
                  v36 = 2112;
                  v37 = v17;
                  v38 = 2112;
                  v39 = v16;
                  v40 = 2112;
                  v41 = v20;
                  v21 = v20;
                  _os_log_debug_impl(&dword_21FD11000, v19, OS_LOG_TYPE_DEBUG, "%p will deactive entry:%{pubic}@ for attribute:%{pubic}@ assertion:%{pubic}@", buf, 0x2Au);
                }

                [v17 invalidate];
                [v10 removeObject:v17];
              }

              else
              {
                if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
                {
                  v22 = NSStringFromBLSAssertingObject();
                  *buf = 134218498;
                  selfCopy3 = self;
                  v36 = 2112;
                  v37 = v16;
                  v38 = 2112;
                  v39 = v22;
                  v23 = v22;
                  _os_log_fault_impl(&dword_21FD11000, v19, OS_LOG_TYPE_FAULT, "%p (cannot deactivate) no entry for attribute:%{pubic}@ assertion:%{pubic}@", buf, 0x20u);
                }
              }
            }

            else
            {
              v17 = bls_assertions_log();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
              {
                *buf = 134218242;
                selfCopy3 = self;
                v36 = 2112;
                v37 = v16;
                _os_log_fault_impl(&dword_21FD11000, v17, OS_LOG_TYPE_FAULT, "%p cannot deactivate invalid attribute:%@", buf, 0x16u);
              }
            }

            ++v15;
          }

          while (v13 != v15);
          v24 = [v11 countByEnumeratingWithState:&v30 objects:v42 count:16];
          v13 = v24;
        }

        while (v24);
      }

      identifier = v27;
      attributesCopy = v28;
      assertionCopy = v29;
      if (![v10 count])
      {
        [(NSMutableDictionary *)self->_entries removeObjectForKey:v27];
      }
    }

    else
    {
      v25 = bls_assertions_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        [BLSHLocalAssertionAttributeHandler deactivateAttributes:fromAssertion:forService:];
      }
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v10 = bls_assertions_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BLSHLocalAssertionAttributeHandler activateAttributes:fromAssertion:forService:];
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (id)withLock_entryFromEntries:(void *)entries forAttribute:
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  entriesCopy = entries;
  if (self)
  {
    os_unfair_lock_assert_owner(self + 4);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          attribute = [v11 attribute];

          if (attribute == entriesCopy)
          {
            v8 = v11;
            goto LABEL_12;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v8 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)activateAttributes:fromAssertion:forService:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_7(&dword_21FD11000, v0, v1, "%p no identifier for assertion:%{pubic}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)deactivateAttributes:fromAssertion:forService:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_1_7(&dword_21FD11000, v0, v1, "%p no entries for assertion:%{pubic}@");
  v2 = *MEMORY[0x277D85DE8];
}

@end