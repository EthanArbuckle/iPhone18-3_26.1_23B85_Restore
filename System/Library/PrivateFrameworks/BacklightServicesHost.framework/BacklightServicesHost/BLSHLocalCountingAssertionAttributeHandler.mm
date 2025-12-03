@interface BLSHLocalCountingAssertionAttributeHandler
+ (Class)attributeBaseClass;
+ (id)attributeClasses;
- (id)entriesForCountingTarget:(id)target;
- (id)initForService:(id)service;
- (void)activateWithFirstEntry:(id)entry;
- (void)deactivateWithFinalEntry:(id)entry;
- (void)decrementCountWithEntry:(uint64_t)entry;
- (void)incrementCountWithEntry:(uint64_t)entry;
@end

@implementation BLSHLocalCountingAssertionAttributeHandler

- (id)initForService:(id)service
{
  v7.receiver = self;
  v7.super_class = BLSHLocalCountingAssertionAttributeHandler;
  v3 = [(BLSHLocalAssertionAttributeHandler *)&v7 initForService:service];
  if (v3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = v3[4];
    v3[4] = dictionary;

    *(v3 + 10) = 0;
  }

  return v3;
}

+ (id)attributeClasses
{
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ must subclass BLSHLocalCountingAssertionAttributeHandler and override %@", self, v5];

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
    v18 = @"BLSHLocalCountingAssertionAttributeHandler.m";
    v19 = 1024;
    v20 = 41;
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
  v6 = [v4 stringWithFormat:@"%@ must subclass BLSHLocalCountingAssertionAttributeHandler and override %@", self, v5];

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
    v18 = @"BLSHLocalCountingAssertionAttributeHandler.m";
    v19 = 1024;
    v20 = 46;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v6 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (void)activateWithFirstEntry:(id)entry
{
  entryCopy = entry;
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:@"%@ must subclass BLSHLocalCountingAssertionAttributeHandler and override %@", self, v7];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138544642;
    v13 = v9;
    v14 = 2114;
    v15 = v11;
    v16 = 2048;
    selfCopy = self;
    v18 = 2114;
    v19 = @"BLSHLocalCountingAssertionAttributeHandler.m";
    v20 = 1024;
    v21 = 55;
    v22 = 2114;
    v23 = v8;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)deactivateWithFinalEntry:(id)entry
{
  entryCopy = entry;
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:@"%@ must subclass BLSHLocalCountingAssertionAttributeHandler and override %@", self, v7];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138544642;
    v13 = v9;
    v14 = 2114;
    v15 = v11;
    v16 = 2048;
    selfCopy = self;
    v18 = 2114;
    v19 = @"BLSHLocalCountingAssertionAttributeHandler.m";
    v20 = 1024;
    v21 = 59;
    v22 = 2114;
    v23 = v8;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (id)entriesForCountingTarget:(id)target
{
  targetCopy = target;
  os_unfair_lock_lock(&self->_countingDictionaryLock);
  v5 = [(NSMutableDictionary *)self->_lock_entryDictionary objectForKey:targetCopy];

  allObjects = [v5 allObjects];
  v7 = [allObjects copy];

  os_unfair_lock_unlock(&self->_countingDictionaryLock);

  return v7;
}

- (void)incrementCountWithEntry:(uint64_t)entry
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (entry)
  {
    v4 = [OUTLINED_FUNCTION_2_7() countingTargetForEntry:?];
    v5 = OUTLINED_FUNCTION_1_9();
    os_unfair_lock_lock(v5);
    v6 = [*(entry + 32) objectForKey:v4];
    if (!v6)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:2];
      [*(entry + 32) setObject:v6 forKey:v4];
    }

    v7 = [v6 count];
    [v6 addObject:v3];
    v8 = [v6 count];
    v9 = bls_assertions_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_3_5(&dword_21FD11000, v13, v14, "%p handler:%{public}@ increment count:%u->%u with entry:%{public}@ -> countingTarget:%{public}@", v15, v16, v17, v18, v19);
    }

    v10 = OUTLINED_FUNCTION_1_9();
    os_unfair_lock_unlock(v10);
    if (v7)
    {
      v11 = 0;
    }

    else
    {
      v11 = v8 == 1;
    }

    if (v11)
    {
      [OUTLINED_FUNCTION_2_7() activateWithFirstEntry:?];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)decrementCountWithEntry:(uint64_t)entry
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (entry)
  {
    v4 = [OUTLINED_FUNCTION_2_7() countingTargetForEntry:?];
    v5 = OUTLINED_FUNCTION_1_9();
    os_unfair_lock_lock(v5);
    v6 = [*(entry + 32) objectForKey:v4];
    v7 = [v6 count];
    [v6 removeObject:v3];
    v8 = [v6 count];
    v9 = bls_assertions_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_3_5(&dword_21FD11000, v13, v14, "%p handler:%{public}@ decrement count:%u->%u for %p with entry:%{public}@", v15, v16, v17, v18, v19);
    }

    v10 = OUTLINED_FUNCTION_1_9();
    os_unfair_lock_unlock(v10);
    if (v7 == 1 && v8 == 0)
    {
      [OUTLINED_FUNCTION_2_7() deactivateWithFinalEntry:?];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end