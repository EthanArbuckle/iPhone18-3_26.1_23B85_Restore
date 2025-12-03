@interface KeychainMigrator
- (BOOL)performMigration;
@end

@implementation KeychainMigrator

- (BOOL)performMigration
{
  selfCopy = self;
  userDataDisposition = [(KeychainMigrator *)self userDataDisposition];
  LODWORD(selfCopy) = [(KeychainMigrator *)selfCopy userDataDisposition]& 2 | userDataDisposition & 1;
  v4 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (!selfCopy)
  {
    if (v4)
    {
      v9 = 67109376;
      v10 = 0;
      v11 = 1024;
      v12 = 0;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Skipping keychain migration erase:%d upgrade:%d", &v9, 0xEu);
    }

    return 1;
  }

  if (v4)
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Performing keychain migration", &v9, 2u);
  }

  v5 = _SecKeychainForceUpgradeIfNeeded();
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  v7 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v7)
  {
    v9 = 67109120;
    v10 = v6;
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to perform keychain migration: %d", &v9, 8u);
    return 0;
  }

  return result;
}

@end