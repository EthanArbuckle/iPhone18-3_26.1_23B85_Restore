@interface TransactionEntity
+ (Class)memoryEntityClass;
+ (id)databaseTable;
@end

@implementation TransactionEntity

+ (id)databaseTable
{
  sub_10013F4F4();
  v2 = sub_1001F6B48();

  return v2;
}

+ (Class)memoryEntityClass
{
  sub_10013F560();

  return swift_getObjCClassFromMetadata();
}

@end