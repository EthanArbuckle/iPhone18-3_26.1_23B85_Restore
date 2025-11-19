@interface PDGroupReferencesToExpand
+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5;
- (PDGroupReferencesToExpand)initWithDatabaseRow:(id)a3;
@end

@implementation PDGroupReferencesToExpand

- (PDGroupReferencesToExpand)initWithDatabaseRow:(id)a3
{
  v4 = sub_10016D778(a3, @"objectID");
  v5 = sub_1000D42EC(&self->super.isa, v4);

  return v5;
}

+ (BOOL)migrateFromVersion:(unint64_t)a3 finalVersion:(unint64_t *)a4 inDatabase:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (!a3)
  {
    if (!sub_1000B9298(v7, @"create table PDGroupReferencesToExpand (\n    objectID text not null\n)\n", 0, 0, 0) || !sub_1000B9298(v8, @"create unique index PDGroupReferencesToExpand_objectID on PDGroupReferencesToExpand (objectID)", 0, 0, 0))
    {
      v9 = 0;
      goto LABEL_7;
    }

    a3 = 1;
  }

  *a4 = a3;
  v9 = 1;
LABEL_7:

  return v9;
}

@end