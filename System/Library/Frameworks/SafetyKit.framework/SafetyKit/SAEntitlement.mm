@interface SAEntitlement
+ (BOOL)currentProcessHasEntitlement:(id)entitlement;
@end

@implementation SAEntitlement

+ (BOOL)currentProcessHasEntitlement:(id)entitlement
{
  v19 = *MEMORY[0x277D85DE8];
  entitlementCopy = entitlement;
  v4 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v4)
  {
    v5 = v4;
    error = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, entitlementCopy, &error);
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = sa_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v14 = v6;
        v15 = 2112;
        v16 = entitlementCopy;
        v17 = 2112;
        v18 = error;
        _os_log_impl(&dword_23AA4D000, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Unexpected value %@ for %@ entitlement: %@", buf, 0x20u);
      }

      bOOLValue = 0;
    }

    else
    {
      bOOLValue = [v6 BOOLValue];
    }

    CFRelease(v5);
  }

  else
  {
    v8 = sa_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23AA4D000, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Unexpected NULL value returned from SecTaskCreateFromSelf()", buf, 2u);
    }

    bOOLValue = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

@end