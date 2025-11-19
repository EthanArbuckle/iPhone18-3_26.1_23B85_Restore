@interface LAKeyStoreBackendBuilder
+ (id)buildBackend;
@end

@implementation LAKeyStoreBackendBuilder

+ (id)buildBackend
{
  if (LA_LOG_once_3 != -1)
  {
    +[LAKeyStoreBackendBuilder buildBackend];
  }

  v2 = LA_LOG_log_3;
  if (os_log_type_enabled(LA_LOG_log_3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A784E000, v2, OS_LOG_TYPE_DEFAULT, "Using real storage", v5, 2u);
  }

  v3 = objc_alloc_init(_LAKeyStoreBackendKeychain);

  return v3;
}

@end