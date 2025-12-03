@interface BLSHLocalCountingSceneAssertionAttributeHandler
+ (Class)attributeBaseClass;
+ (id)attributeClasses;
- (id)sceneIdentityTokenForEntry:(void *)entry;
- (void)activateForSceneEnvironment:(id)environment;
- (void)activateWithFirstEntry:(id)entry;
- (void)deactivateForSceneEnvironment:(id)environment;
- (void)deactivateWithFinalEntry:(id)entry;
- (void)sceneDidInvalidate:(id)invalidate environment:(id)environment;
@end

@implementation BLSHLocalCountingSceneAssertionAttributeHandler

+ (id)attributeClasses
{
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ must subclass BLSHLocalCountingSceneAssertionAttributeHandler and override %@", self, v5];

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
    v18 = @"BLSHLocalCountingSceneAssertionAttributeHandler.m";
    v19 = 1024;
    v20 = 22;
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
  v6 = [v4 stringWithFormat:@"%@ must subclass BLSHLocalCountingSceneAssertionAttributeHandler and override %@", self, v5];

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
    v18 = @"BLSHLocalCountingSceneAssertionAttributeHandler.m";
    v19 = 1024;
    v20 = 27;
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
  v5 = bls_assertions_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BLSHLocalCountingSceneAssertionAttributeHandler activateWithFirstEntry:];
  }

  v6 = [(BLSHLocalCountingSceneAssertionAttributeHandler *)self sceneIdentityTokenForEntry:entryCopy];
  v9 = entryCopy;
  v7 = entryCopy;
  v8 = v6;
  BSDispatchMain();
}

- (id)sceneIdentityTokenForEntry:(void *)entry
{
  v3 = a2;
  v4 = v3;
  if (entry)
  {
    attribute = [v3 attribute];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [BLSHLocalCountingSceneAssertionAttributeHandler sceneIdentityTokenForEntry:?];
    }

    entry = [attribute sceneIdentityToken];
  }

  return entry;
}

void __74__BLSHLocalCountingSceneAssertionAttributeHandler_activateWithFirstEntry___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) service];
  v3 = [v2 osInterfaceProvider];
  v4 = [v3 addSceneObserver:*(a1 + 32) forSceneIdentityToken:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 32) activateForSceneEnvironment:v4];
  }

  else
  {
    v5 = bls_assertions_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = 134218754;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = v9;
      _os_log_error_impl(&dword_21FD11000, v5, OS_LOG_TYPE_ERROR, "%p no environment found for sceneToken:%{public}@ handler:%{public}@ will not activate for:%{public}@", &v10, 0x2Au);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)activateForSceneEnvironment:(id)environment
{
  environmentCopy = environment;
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:@"%@ must subclass BLSHLocalCountingSceneAssertionAttributeHandler and override %@", self, v7];

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
    v19 = @"BLSHLocalCountingSceneAssertionAttributeHandler.m";
    v20 = 1024;
    v21 = 47;
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
  v5 = bls_assertions_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BLSHLocalCountingSceneAssertionAttributeHandler deactivateWithFinalEntry:];
  }

  v6 = [(BLSHLocalCountingSceneAssertionAttributeHandler *)self sceneIdentityTokenForEntry:entryCopy];
  v9 = entryCopy;
  v7 = entryCopy;
  v8 = v6;
  BSDispatchMain();
}

void __76__BLSHLocalCountingSceneAssertionAttributeHandler_deactivateWithFinalEntry___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) service];
  v3 = [v2 osInterfaceProvider];
  v4 = [v3 removeSceneObserver:*(a1 + 32) forSceneIdentityToken:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 32) deactivateForSceneEnvironment:v4];
  }

  else
  {
    v5 = bls_assertions_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v10 = 134218754;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v7;
      v16 = 2114;
      v17 = v9;
      _os_log_error_impl(&dword_21FD11000, v5, OS_LOG_TYPE_ERROR, "%p no environment found for sceneToken:%{public}@ handler:%{public}@ will not deactivate for:%{public}@", &v10, 0x2Au);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)deactivateForSceneEnvironment:(id)environment
{
  environmentCopy = environment;
  v6 = MEMORY[0x277CCACA8];
  v7 = NSStringFromSelector(a2);
  v8 = [v6 stringWithFormat:@"%@ must subclass BLSHLocalCountingSceneAssertionAttributeHandler and override %@", self, v7];

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
    v19 = @"BLSHLocalCountingSceneAssertionAttributeHandler.m";
    v20 = 1024;
    v21 = 66;
    v22 = 2114;
    v23 = v8;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)sceneDidInvalidate:(id)invalidate environment:(id)environment
{
  v58 = *MEMORY[0x277D85DE8];
  invalidateCopy = invalidate;
  environmentCopy = environment;
  service = [(BLSHLocalAssertionAttributeHandler *)self service];
  v8 = [MEMORY[0x277CBEB58] set];
  selfCopy = self;
  v33 = invalidateCopy;
  [(BLSHLocalCountingAssertionAttributeHandler *)self entriesForCountingTarget:invalidateCopy];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v9 = v43 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v40 objects:v57 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v41;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v41 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v40 + 1) + 8 * i);
        service2 = [v14 service];

        if (service2 != service)
        {
          [BLSHLocalCountingSceneAssertionAttributeHandler sceneDidInvalidate:a2 environment:?];
        }

        assertion = [v14 assertion];
        if (assertion)
        {
          [v8 addObject:assertion];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v40 objects:v57 count:16];
    }

    while (v11);
  }

  v30 = v9;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v8;
  v17 = [obj countByEnumeratingWithState:&v36 objects:v56 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    v20 = *MEMORY[0x277CF0828];
    v21 = *MEMORY[0x277CCA450];
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v36 + 1) + 8 * j);
        v24 = bls_assertions_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          identifier = [environmentCopy identifier];
          *buf = 134219010;
          v47 = selfCopy;
          v48 = 2114;
          v49 = selfCopy;
          v50 = 2114;
          v51 = v23;
          v52 = 2114;
          v53 = v33;
          v54 = 2114;
          v55 = identifier;
          _os_log_impl(&dword_21FD11000, v24, OS_LOG_TYPE_INFO, "%p handler:%{public}@ will cancel assertion:%{public}@ due to invalidated scene:%{public}@ environment:%{public}@", buf, 0x34u);
        }

        v26 = MEMORY[0x277CCA9B8];
        v44 = v21;
        v45 = @"scene invalidated";
        v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v28 = [v26 errorWithDomain:v20 code:20 userInfo:v27];
        [service cancelAssertion:v23 withError:v28];
      }

      v18 = [obj countByEnumeratingWithState:&v36 objects:v56 count:16];
    }

    while (v18);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)activateWithFirstEntry:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_2_0(&dword_21FD11000, v0, v1, "%p handler:%{public}@ will activate for:%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sceneIdentityTokenForEntry:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[attribute isKindOfClass:[BLSSceneAttribute class]]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"BLSHLocalCountingSceneAssertionAttributeHandler.m";
    v9 = 1024;
    v10 = 76;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)deactivateWithFinalEntry:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_19();
  OUTLINED_FUNCTION_2_0(&dword_21FD11000, v0, v1, "%p handler:%{public}@ will deactivate for:%{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)sceneDidInvalidate:(const char *)a1 environment:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"[entry service] == service"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"BLSHLocalCountingSceneAssertionAttributeHandler.m";
    v9 = 1024;
    v10 = 87;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end