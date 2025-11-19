@interface NSSQLTableMigrationDescription
@end

@implementation NSSQLTableMigrationDescription

uint64_t __97___NSSQLTableMigrationDescription__doAttributesHaveChangesRequiringCopyForMigration_withContext___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 count];
  if (result == 2)
  {
    result = [objc_msgSend(a2 "firstObject")];
    if (result)
    {
      result = [a2 lastObject];
      *(*(*(a1 + 40) + 8) + 40) = result;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t __83___NSSQLTableMigrationDescription_appendStatementsToRenameTables_migrationContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [objc_msgSend(a2 "firstObject")];
  v5 = [objc_msgSend(a3 "firstObject")];

  return [v5 compare:v4 options:64];
}

uint64_t __83___NSSQLTableMigrationDescription_appendStatementsToRenameTables_migrationContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = [a3 firstObject];
  v5 = [a2 firstObject];

  return [v4 compare:v5];
}

@end