@interface CKSQLiteTOCBaseTable
- (BOOL)_useTemporaryTables;
@end

@implementation CKSQLiteTOCBaseTable

- (BOOL)_useTemporaryTables
{
  v3 = objc_msgSend_tableGroup(self, a2, v2);
  isMigrationTOC = objc_msgSend_isMigrationTOC(v3, v4, v5);

  return isMigrationTOC;
}

@end