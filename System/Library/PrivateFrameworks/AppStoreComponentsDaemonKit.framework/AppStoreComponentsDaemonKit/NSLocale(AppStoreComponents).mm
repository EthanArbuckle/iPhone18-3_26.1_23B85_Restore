@interface NSLocale(AppStoreComponents)
+ (id)asc_storefrontLocale;
- (BOOL)asc_prefersRightToLeftLayout;
@end

@implementation NSLocale(AppStoreComponents)

+ (id)asc_storefrontLocale
{
  v0 = +[ASCDefaults daemonDefaults];
  storefrontLocaleID = [v0 storefrontLocaleID];

  if (storefrontLocaleID)
  {
    currentLocale = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:storefrontLocaleID];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_222629000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "No storefront locale specified, falling back to device locale", v5, 2u);
    }

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  }

  v3 = currentLocale;

  return v3;
}

- (BOOL)asc_prefersRightToLeftLayout
{
  v2 = +[ASCDefaults daemonDefaults];
  forceRightToLeftLayout = [v2 forceRightToLeftLayout];

  if (forceRightToLeftLayout)
  {
    return 1;
  }

  v5 = MEMORY[0x277D74248];
  localeIdentifier = [self localeIdentifier];
  v7 = [v5 defaultWritingDirectionForLanguage:localeIdentifier];

  return v7 == 1;
}

@end