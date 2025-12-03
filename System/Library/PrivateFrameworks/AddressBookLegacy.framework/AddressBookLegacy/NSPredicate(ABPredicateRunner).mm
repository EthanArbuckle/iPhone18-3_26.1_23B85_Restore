@interface NSPredicate(ABPredicateRunner)
- (void)ab_runPredicateWithSortOrder:()ABPredicateRunner ranked:inAddressBook:withDelegate:;
@end

@implementation NSPredicate(ABPredicateRunner)

- (void)ab_runPredicateWithSortOrder:()ABPredicateRunner ranked:inAddressBook:withDelegate:
{
  theDict[1] = a6;
  theDict[2] = self;
  theDict[4] = 0;
  theDict[5] = 0;
  theDict[3] = a5;
  if (a5 && *(a5 + 2))
  {
    v18 = 0u;
    v17 = 0u;
    *&v18 = ABCRecordStoreReadColumns();
    if ([(__CFDictionary *)a6 predicateShouldContinue:self])
    {
      CPRecordStoreGetDatabase();
      array = [MEMORY[0x1E695DF70] array];
      if ([(__CFDictionary *)self ab_hasCallback])
      {
        CPSqliteDatabaseRegisterFunction();
      }

      theDict[0] = 0;
      v12 = [(__CFDictionary *)self ab_newQueryWithSortOrder:a3 ranked:a4 addressBook:a5 propertyIndices:theDict];
      *(&v17 + 1) = CFDictionaryGetCount(theDict[0]) + 1;
      [(__CFDictionary *)self ab_addCallbackContextToArray:array];
      v13 = CPSqliteDatabaseStatementForReading();
      ABRegulatoryLogReadContactsData(a5);
      if (v13)
      {
        v15 = 1;
        [(__CFDictionary *)self ab_bindSelectClauseComponentOfStatement:v13 withBindingOffset:&v15 predicateIdentifier:0];
        [(__CFDictionary *)self ab_bindJoinClauseComponentOfStatement:v13 withBindingOffset:&v15 predicateIdentifier:0];
        [(__CFDictionary *)self ab_bindWhereClauseComponentOfStatement:v13 withBindingOffset:&v15 predicateIdentifier:0];
        if (([(__CFDictionary *)a6 predicateShouldContinue:self]& 1) != 0)
        {
          CPSqliteConnectionEnableProgressHandlerCallback();
          v14 = CPRecordStoreProcessRecordStatementWithPropertyIndices();
          CPSqliteConnectionDisableProgressHandlerCallback();
          if (v14)
          {
            CFRelease(v14);
          }
        }
      }

      if (theDict[0])
      {
        CFRelease(theDict[0]);
      }
    }

    if (v18)
    {
      free(v18);
    }
  }
}

- (void)ab_runPredicateWithSortOrder:()ABPredicateRunner ranked:inAddressBook:withDelegate:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_fault_impl(&dword_1B7EFB000, log, OS_LOG_TYPE_FAULT, "Exception: %@ trying to create a SQLite statement for query: %@", &v3, 0x16u);
}

@end