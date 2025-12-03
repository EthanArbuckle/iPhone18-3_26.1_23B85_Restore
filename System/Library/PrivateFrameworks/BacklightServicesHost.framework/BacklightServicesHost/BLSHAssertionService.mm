@interface BLSHAssertionService
- (BLSHAssertionService)initWithOSInterfaceProvider:(id)provider localOnly:(BOOL)only;
@end

@implementation BLSHAssertionService

- (BLSHAssertionService)initWithOSInterfaceProvider:(id)provider localOnly:(BOOL)only
{
  providerCopy = provider;
  v24.receiver = self;
  v24.super_class = BLSHAssertionService;
  v8 = [(BLSHAssertionService *)&v24 init];
  if (v8)
  {
    v9 = [[BLSHLocalAssertionService alloc] initWithOSInterfaceProvider:providerCopy];
    [MEMORY[0x277CF0868] setDefaultService:v9];
    objc_storeStrong(&v8->_localAssertionService, v9);
    if (!only)
    {
      v10 = [BLSHXPCAssertionServiceHostServer serverWithLocalAssertionService:v9];
      server = v8->_server;
      v8->_server = v10;
    }

    v12 = [(BLSHLocalAssertionAttributeHandler *)BLSHDurationAttributeHandler registerHandlerForService:v9];
    if (!v12)
    {
      [BLSHAssertionService initWithOSInterfaceProvider:a2 localOnly:?];
    }

    v13 = v12;
    v14 = [(BLSHLocalAssertionAttributeHandler *)BLSHForceActiveAttributeHandler registerHandlerForService:v9];

    if (!v14)
    {
      [BLSHAssertionService initWithOSInterfaceProvider:a2 localOnly:?];
    }

    v15 = [(BLSHLocalAssertionAttributeHandler *)BLSHPauseWhenSceneBackgroundAttributeHandler registerHandlerForService:v9];

    if (!v15)
    {
      [BLSHAssertionService initWithOSInterfaceProvider:a2 localOnly:?];
    }

    v16 = [(BLSHLocalAssertionAttributeHandler *)BLSHRequestLiveUpdatingAttributeHandler registerHandlerForService:v9];

    if (!v16)
    {
      [BLSHAssertionService initWithOSInterfaceProvider:a2 localOnly:?];
    }

    v17 = [(BLSHLocalAssertionAttributeHandler *)BLSHRequestUnrestrictedFramerateAttributeHandler registerHandlerForService:v9];

    if (!v17)
    {
      [BLSHAssertionService initWithOSInterfaceProvider:a2 localOnly:?];
    }

    v18 = [(BLSHLocalAssertionAttributeHandler *)BLSH1HzFlipbookAttributeHandler registerHandlerForService:v9];

    if (!v18)
    {
      [BLSHAssertionService initWithOSInterfaceProvider:a2 localOnly:?];
    }

    v19 = [(BLSHLocalAssertionAttributeHandler *)BLSHCacheFlipbookOnDisplayWakeAttributeHandler registerHandlerForService:v9];

    if (!v19)
    {
      [BLSHAssertionService initWithOSInterfaceProvider:a2 localOnly:?];
    }

    v20 = [(BLSHLocalAssertionAttributeHandler *)BLSHHighLuminanceAlwaysOnAttributeHandler registerHandlerForService:v9];

    if (!v20)
    {
      [BLSHAssertionService initWithOSInterfaceProvider:a2 localOnly:?];
    }

    v21 = [(BLSHLocalAssertionAttributeHandler *)BLSHInvalidOnSystemSleepAttributeHandler registerHandlerForService:v9];

    if (!v21)
    {
      [BLSHAssertionService initWithOSInterfaceProvider:a2 localOnly:?];
    }

    v22 = [(BLSHLocalAssertionAttributeHandler *)BLSHPauseOnSystemSleepAttributeHandler registerHandlerForService:v9];

    if (!v22)
    {
      [BLSHAssertionService initWithOSInterfaceProvider:a2 localOnly:?];
    }
  }

  return v8;
}

- (void)initWithOSInterfaceProvider:(char *)a1 localOnly:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"handler != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithOSInterfaceProvider:(char *)a1 localOnly:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"handler != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithOSInterfaceProvider:(char *)a1 localOnly:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"handler != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithOSInterfaceProvider:(char *)a1 localOnly:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"handler != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithOSInterfaceProvider:(char *)a1 localOnly:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"handler != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithOSInterfaceProvider:(char *)a1 localOnly:.cold.6(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"handler != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithOSInterfaceProvider:(char *)a1 localOnly:.cold.7(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"handler != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithOSInterfaceProvider:(char *)a1 localOnly:.cold.8(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"handler != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithOSInterfaceProvider:(char *)a1 localOnly:.cold.9(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"handler != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithOSInterfaceProvider:(char *)a1 localOnly:.cold.10(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_4();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"handler != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end