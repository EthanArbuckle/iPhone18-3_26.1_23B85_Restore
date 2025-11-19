@interface NSLocale(AppStoreComponents)
+ (id)asc_storefrontLocale;
- (BOOL)asc_prefersRightToLeftLayout;
@end

@implementation NSLocale(AppStoreComponents)

+ (id)asc_storefrontLocale
{
  v0 = +[ASCDefaults daemonDefaults];
  v1 = [v0 storefrontLocaleID];

  if (v1)
  {
    v2 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v1];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_21571A000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "No storefront locale specified, falling back to device locale", v5, 2u);
    }

    v2 = [MEMORY[0x277CBEAF8] currentLocale];
  }

  v3 = v2;

  return v3;
}

- (BOOL)asc_prefersRightToLeftLayout
{
  v2 = +[ASCDefaults daemonDefaults];
  v3 = [v2 forceRightToLeftLayout];

  if (v3)
  {
    return 1;
  }

  v5 = MEMORY[0x277D74248];
  v6 = [a1 localeIdentifier];
  v7 = [v5 defaultWritingDirectionForLanguage:v6];

  return v7 == 1;
}

@end