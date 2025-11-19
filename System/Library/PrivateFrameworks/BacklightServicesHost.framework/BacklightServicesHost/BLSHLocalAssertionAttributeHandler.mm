@interface BLSHLocalAssertionAttributeHandler
+ (Class)attributeBaseClass;
+ (Class)entryClass;
+ (id)attributeClasses;
+ (id)registerHandlerForService:(id)a3;
- (BLSHLocalAssertionService)service;
- (id)initForService:(id)a3;
- (id)withLock_entryFromEntries:(void *)a3 forAttribute:;
- (void)activateAttributes:(id)a3 fromAssertion:(id)a4 forService:(id)a5;
- (void)deactivateAttributes:(id)a3 fromAssertion:(id)a4 forService:(id)a5;
- (void)setupService;
@end

@implementation BLSHLocalAssertionAttributeHandler

- (BLSHLocalAssertionService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

+ (id)registerHandlerForService:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initForService:v4];

  [v5 setupService];

  return v5;
}

+ (id)attributeClasses
{
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ must subclass BLSHLocalAssertionAttributeHandler and override %@", a1, v5];

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
    v16 = a1;
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
  v6 = [v4 stringWithFormat:@"%@ must subclass BLSHLocalAssertionAttributeHandler and override %@", a1, v5];

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
    v16 = a1;
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
  v6 = [v4 stringWithFormat:@"%@ must subclass BLSHLocalAssertionAttributeHandler and override %@", a1, v5];

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
    v16 = a1;
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

- (id)initForService:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BLSHLocalAssertionAttributeHandler;
  v5 = [(BLSHLocalAssertionAttributeHandler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = [MEMORY[0x277CBEB38] dictionary];
    entries = v6->_entries;
    v6->_entries = v7;

    objc_storeWeak(&v6->_service, v4);
  }

  return v6;
}

- (void)setupService
{
  WeakRetained = objc_loadWeakRetained(&self->_service);
  v3 = [objc_opt_class() attributeClasses];
  [WeakRetained registerAttributeHandler:self forAttributeClasses:v3];
}

- (void)activateAttributes:(id)a3 fromAssertion:(id)a4 forService:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v35 = a5;
  v37 = v9;
  v10 = [v9 identifier];
  if (v10)
  {
    os_unfair_lock_lock(&self->_lock);
    v11 = [(NSMutableDictionary *)self->_entries objectForKey:v10];
    if (!v11)
    {
      v11 = [MEMORY[0x277CBEB18] array];
      [(NSMutableDictionary *)self->_entries setObject:v11 forKey:v10];
    }

    v33 = v10;
    v36 = [objc_opt_class() entryClass];
    v12 = [objc_opt_class() attributeBaseClass];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v34 = v8;
    v13 = v8;
    v14 = [v13 countByEnumeratingWithState:&v39 objects:v51 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v40;
      v38 = self;
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
            v20 = [(BLSHLocalAssertionAttributeHandler *)self withLock_entryFromEntries:v11 forAttribute:v18];
            if (v20)
            {
              v19 = v20;
              v21 = v11;
              v22 = [v20 reactivateIfPossible];
              v23 = bls_assertions_log();
              v24 = v23;
              if (v22)
              {
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                {
                  v25 = NSStringFromBLSAssertingObject();
                  *buf = 134218754;
                  v44 = v38;
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
                v44 = v38;
                v45 = 2114;
                v46 = v19;
                v47 = 2112;
                v48 = v18;
                v49 = 2112;
                v50 = v25;
                _os_log_fault_impl(&dword_21FD11000, v24, OS_LOG_TYPE_FAULT, "%p (cannot re-activate) already have entry:%{public}@ for attribute:%{pubic}@ assertion:%{pubic}@", buf, 0x2Au);
LABEL_28:
              }

              v11 = v21;
              self = v38;
              goto LABEL_12;
            }

            v19 = [v36 activateForAttribute:v18 fromAssertion:v37 forService:v35 attributeHandler:self];
            v26 = bls_assertions_log();
            v27 = v26;
            if (v19)
            {
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                NSStringFromBLSAssertingObject();
                v30 = v29 = v11;
                *buf = 134218754;
                v44 = v38;
                v45 = 2112;
                v46 = v19;
                v47 = 2112;
                v48 = v18;
                v49 = 2112;
                v50 = v30;
                _os_log_debug_impl(&dword_21FD11000, v27, OS_LOG_TYPE_DEBUG, "%p did activate entry:%{pubic}@ for attribute:%{pubic}@ assertion:%{pubic}@", buf, 0x2Au);

                v11 = v29;
                self = v38;
              }

              [v11 addObject:v19];
            }

            else
            {
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                v28 = NSStringFromBLSAssertingObject();
                *buf = 134218754;
                v44 = self;
                v45 = 2112;
                v46 = v36;
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
              v44 = self;
              v45 = 2112;
              v46 = v18;
              v47 = 2112;
              v48 = v12;
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
    v10 = v33;
    v8 = v34;
  }

  else
  {
    v11 = bls_assertions_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [BLSHLocalAssertionAttributeHandler activateAttributes:fromAssertion:forService:];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (void)deactivateAttributes:(id)a3 fromAssertion:(id)a4 forService:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [v8 identifier];
  if (v9)
  {
    os_unfair_lock_lock(&self->_lock);
    [objc_opt_class() attributeBaseClass];
    v10 = [(NSMutableDictionary *)self->_entries objectForKey:v9];
    if (v10)
    {
      v27 = v9;
      v28 = v7;
      v29 = v8;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v11 = v7;
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
                  v35 = self;
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
                  v35 = self;
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
                v35 = self;
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

      v9 = v27;
      v7 = v28;
      v8 = v29;
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

- (id)withLock_entryFromEntries:(void *)a3 forAttribute:
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    os_unfair_lock_assert_owner(a1 + 4);
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
          v12 = [v11 attribute];

          if (v12 == v6)
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