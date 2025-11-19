@interface SecKeychainForceUpgradeIfNeeded
@end

@implementation SecKeychainForceUpgradeIfNeeded

void ___SecKeychainForceUpgradeIfNeeded_block_invoke_46(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("xpc");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "upgradeIfNeeded result: %i", v6, 8u);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v5 = *MEMORY[0x1E69E9840];
}

void ___SecKeychainForceUpgradeIfNeeded_block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "xpc: failure to obtain XPC proxy object for upgradeIfNeeded, %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end