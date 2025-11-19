@interface LSApplicationWorkspaceObserver
+ (BOOL)actuallyOverridesDMFObserverMethod;
- (LSApplicationWorkspaceObserver)init;
- (LSApplicationWorkspaceObserver)initWithCoder:(id)a3;
- (void)applicationIconDidChange:(id)a3;
- (void)applicationInstallsArePrioritized:(id)a3 arePaused:(id)a4;
- (void)applicationInstallsDidCancel:(id)a3;
- (void)applicationInstallsDidChange:(id)a3;
- (void)applicationInstallsDidPause:(id)a3;
- (void)applicationInstallsDidPrioritize:(id)a3;
- (void)applicationInstallsDidResume:(id)a3;
- (void)applicationInstallsDidStart:(id)a3;
- (void)applicationInstallsDidUpdateIcon:(id)a3;
- (void)applicationStateDidChange:(id)a3;
- (void)applicationsDidChangePersonas:(id)a3;
- (void)applicationsDidFailToInstall:(id)a3;
- (void)applicationsDidFailToUninstall:(id)a3;
- (void)applicationsDidInstall:(id)a3;
- (void)applicationsDidUninstall:(id)a3;
- (void)applicationsWillInstall:(id)a3;
- (void)applicationsWillUninstall:(id)a3;
- (void)deviceManagementPolicyDidChange:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LSApplicationWorkspaceObserver

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LSApplicationWorkspaceObserver *)self uuid];
  [v4 encodeObject:v5 forKey:@"uuid"];
}

- (LSApplicationWorkspaceObserver)init
{
  v6.receiver = self;
  v6.super_class = LSApplicationWorkspaceObserver;
  v2 = [(LSApplicationWorkspaceObserver *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uuid = v2->_uuid;
    v2->_uuid = v3;
  }

  return v2;
}

- (LSApplicationWorkspaceObserver)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = LSApplicationWorkspaceObserver;
  v5 = [(LSApplicationWorkspaceObserver *)&v9 init];
  if (v5)
  {
    v6 = [v4 ls_decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;
  }

  return v5;
}

- (void)applicationInstallsDidStart:(id)a3
{
  v3 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsDidStart:];
  }
}

- (void)applicationInstallsDidChange:(id)a3
{
  v3 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsDidChange:];
  }
}

- (void)applicationInstallsDidUpdateIcon:(id)a3
{
  v3 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsDidUpdateIcon:];
  }
}

- (void)applicationsDidInstall:(id)a3
{
  v3 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationsDidInstall:];
  }
}

- (void)applicationsWillInstall:(id)a3
{
  v3 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationsWillInstall:];
  }
}

- (void)applicationsWillUninstall:(id)a3
{
  v3 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationsWillUninstall:];
  }
}

- (void)applicationsDidFailToInstall:(id)a3
{
  v3 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationsDidFailToInstall:];
  }
}

- (void)applicationsDidFailToUninstall:(id)a3
{
  v3 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationsDidFailToUninstall:];
  }
}

- (void)applicationsDidUninstall:(id)a3
{
  v3 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationsDidUninstall:];
  }
}

- (void)applicationInstallsArePrioritized:(id)a3 arePaused:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = _LSInstallLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsArePrioritized:v5 arePaused:?];
  }

  v8 = _LSInstallLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsArePrioritized:v6 arePaused:?];
  }
}

- (void)applicationInstallsDidPause:(id)a3
{
  v3 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsDidPause:];
  }
}

- (void)applicationInstallsDidResume:(id)a3
{
  v3 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsDidResume:];
  }
}

- (void)applicationInstallsDidCancel:(id)a3
{
  v3 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsDidCancel:];
  }
}

- (void)applicationInstallsDidPrioritize:(id)a3
{
  v3 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationInstallsDidPrioritize:];
  }
}

- (void)applicationStateDidChange:(id)a3
{
  v3 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationStateDidChange:];
  }
}

- (void)applicationIconDidChange:(id)a3
{
  v3 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationIconDidChange:];
  }
}

- (void)deviceManagementPolicyDidChange:(id)a3
{
  v3 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver deviceManagementPolicyDidChange:];
  }
}

+ (BOOL)actuallyOverridesDMFObserverMethod
{
  if (objc_opt_class() == a1)
  {
    return 0;
  }

  v3 = objc_opt_class();
  MethodImplementation = class_getMethodImplementation(v3, sel_deviceManagementPolicyDidChange_);
  return MethodImplementation != class_getMethodImplementation(a1, sel_deviceManagementPolicyDidChange_);
}

- (void)applicationsDidChangePersonas:(id)a3
{
  v3 = a3;
  v4 = _LSInstallLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LSApplicationWorkspaceObserver applicationsDidChangePersonas:];
  }
}

- (void)applicationInstallsDidStart:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LSApplicationWorkspaceObserver applicationInstallsDidStart %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationInstallsDidChange:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LSApplicationWorkspaceObserver applicationInstallsDidChange %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationInstallsDidUpdateIcon:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LSApplicationWorkspaceObserver applicationInstallsDidUpdateIcon %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationsDidInstall:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LSApplicationWorkspaceObserver applicationsDidInstall %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationsWillInstall:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LSApplicationWorkspaceObserver applicationsWillInstall %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationsWillUninstall:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LSApplicationWorkspaceObserver applicationsWillUninstall %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationsDidFailToInstall:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LSApplicationWorkspaceObserver applicationsDidFailToInstall %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationsDidFailToUninstall:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LSApplicationWorkspaceObserver applicationsDidFailToUninstall %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationsDidUninstall:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LSApplicationWorkspaceObserver applicationsDidUninstall %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationInstallsArePrioritized:(void *)a1 arePaused:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_3_2(&dword_18162D000, v1, v2, "Currently %d prioritized installs: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)applicationInstallsArePrioritized:(void *)a1 arePaused:.cold.2(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_3_2(&dword_18162D000, v1, v2, "Currently %d paused installs: %@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)applicationInstallsDidPause:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LSApplicationWorkspaceObserver applicationInstallsDidPause %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationInstallsDidResume:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LSApplicationWorkspaceObserver applicationInstallsDidResume %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationInstallsDidCancel:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LSApplicationWorkspaceObserver applicationInstallsDidCancel %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationInstallsDidPrioritize:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LSApplicationWorkspaceObserver applicationInstallsDidPrioritize %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationStateDidChange:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LSApplicationWorkspaceObserver applicationStateDidChange %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationIconDidChange:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LSApplicationWorkspaceObserver applicationIconDidChange %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)networkUsageChanged:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1(&dword_18162D000, a2, a3, "LSApplicationWorkspaceObserver networkUsageChanged to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)deviceManagementPolicyDidChange:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LSApplicationWorkspaceObserver deviceManagementPolicyDidChange %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applicationsDidChangePersonas:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "LSApplicationWorkspaceObserver applicationsDidChangePersonas %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end