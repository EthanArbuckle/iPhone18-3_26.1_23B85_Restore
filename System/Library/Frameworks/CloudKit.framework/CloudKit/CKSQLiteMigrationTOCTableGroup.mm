@interface CKSQLiteMigrationTOCTableGroup
- (CKSQLiteMigrationTOCTableGroup)initWithName:(id)name options:(unint64_t)options database:(id)database;
- (id)_tableClasses;
@end

@implementation CKSQLiteMigrationTOCTableGroup

- (CKSQLiteMigrationTOCTableGroup)initWithName:(id)name options:(unint64_t)options database:(id)database
{
  v6.receiver = self;
  v6.super_class = CKSQLiteMigrationTOCTableGroup;
  return [(CKSQLiteTOCTableGroup *)&v6 initWithName:name options:options | 1 database:database];
}

- (id)_tableClasses
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v2, v6, 2);
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end