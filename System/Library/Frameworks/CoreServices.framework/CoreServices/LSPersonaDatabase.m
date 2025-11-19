@interface LSPersonaDatabase
@end

@implementation LSPersonaDatabase

void __36___LSPersonaDatabase_sharedInstance__block_invoke()
{
  v0 = [[_LSPersonaDatabase alloc] initPrivately];
  v1 = +[_LSPersonaDatabase sharedInstance]::sharedInstance;
  +[_LSPersonaDatabase sharedInstance]::sharedInstance = v0;
}

void __64___LSPersonaDatabase_personasWithAttributesForBundleIdentifier___block_invoke()
{
  v0 = _LSDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    __64___LSPersonaDatabase_personasWithAttributesForBundleIdentifier___block_invoke_cold_1(v0);
  }
}

@end