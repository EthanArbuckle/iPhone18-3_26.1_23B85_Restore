@interface SecSystemKeychainAlwaysIsEnabled
@end

@implementation SecSystemKeychainAlwaysIsEnabled

void ___SecSystemKeychainAlwaysIsEnabled_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  _SecSystemKeychainAlwaysIsEnabled_ffSystemKeychainAlwaysSupported = _os_feature_enabled_impl();
  v0 = secLogObjForScope("keychain");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    if (_SecSystemKeychainAlwaysIsEnabled_ffSystemKeychainAlwaysSupported)
    {
      v1 = "enabled";
    }

    else
    {
      v1 = "disabled";
    }

    v3 = 136315138;
    v4 = v1;
    _os_log_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEFAULT, "System Keychain Always Supported set via feature flag to %s", &v3, 0xCu);
  }

  v2 = *MEMORY[0x1E69E9840];
}

@end