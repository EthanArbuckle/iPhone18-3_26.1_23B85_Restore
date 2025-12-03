@interface NSHTTPCookieStorage(VSAdditions)
+ (id)vs_sharedCookieStorage;
- (void)vs_saveCookies;
@end

@implementation NSHTTPCookieStorage(VSAdditions)

+ (id)vs_sharedCookieStorage
{
  if (vs_sharedCookieStorage___vs_lazy_init_predicate != -1)
  {
    +[NSHTTPCookieStorage(VSAdditions) vs_sharedCookieStorage];
  }

  v1 = vs_sharedCookieStorage___vs_lazy_init_variable;

  return v1;
}

- (void)vs_saveCookies
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    cookies = [self cookies];
    v5 = 138412290;
    v6 = cookies;
    _os_log_impl(&dword_23AB8E000, v2, OS_LOG_TYPE_DEFAULT, "Will save %@ cookies.", &v5, 0xCu);
  }

  [self _saveCookies];
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v5) = 0;
    _os_log_impl(&dword_23AB8E000, v4, OS_LOG_TYPE_DEFAULT, "Did save cookies.", &v5, 2u);
  }
}

@end