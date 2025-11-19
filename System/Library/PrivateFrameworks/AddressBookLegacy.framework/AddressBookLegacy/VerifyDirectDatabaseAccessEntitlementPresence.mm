@interface VerifyDirectDatabaseAccessEntitlementPresence
@end

@implementation VerifyDirectDatabaseAccessEntitlementPresence

uint64_t ___VerifyDirectDatabaseAccessEntitlementPresence_block_invoke()
{
  result = _CurrentProcessHasDirectDatabaseAccessEntitlement();
  if ((result & 1) == 0)
  {
    v1 = [MEMORY[0x1E696AF00] callStackSymbols];
    v2 = _CallStackSymbolsIncludeFrameworkWithName(v1, @"Contacts");
    result = _CallStackSymbolsIncludeFrameworkWithName(v1, @"IMCore");
    if ((v2 & 1) == 0 && (result & 1) == 0)
    {
      result = _CallStackSymbolsIncludeFrameworkWithName(v1, @"AddressBook");
      if ((result & 1) == 0)
      {
        ABDiagnosticsEnabled();
        _ABLog2(3, "void _VerifyDirectDatabaseAccessEntitlementPresence(void)_block_invoke", 185, 0, @"AddressBookLegacy.framework requires BOOLean entitlement: com.apple.Contacts.database-allow", v3, v4, v5, v6);

        return ABLogSimulateCrashReport(@"AddressBookLegacy.framework requires BOOLean entitlement: com.apple.Contacts.database-allow");
      }
    }
  }

  return result;
}

@end