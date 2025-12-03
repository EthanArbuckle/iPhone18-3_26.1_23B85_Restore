@interface PDGroupReferencesToExpand
+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database;
- (PDGroupReferencesToExpand)initWithDatabaseRow:(id)row;
@end

@implementation PDGroupReferencesToExpand

- (PDGroupReferencesToExpand)initWithDatabaseRow:(id)row
{
  v4 = sub_10016D778(row, @"objectID");
  v5 = sub_1000D42EC(&self->super.isa, v4);

  return v5;
}

+ (BOOL)migrateFromVersion:(unint64_t)version finalVersion:(unint64_t *)finalVersion inDatabase:(id)database
{
  databaseCopy = database;
  v8 = databaseCopy;
  if (!version)
  {
    if (!sub_1000B9298(databaseCopy, @"create table PDGroupReferencesToExpand (\n    objectID text not null\n)\n", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDGroupReferencesToExpand_objectID on PDGroupReferencesToExpand (objectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    version = 1;
  }

  *finalVersion = version;
  v9 = 1;
LABEL_7:

  return v9;
}

@end