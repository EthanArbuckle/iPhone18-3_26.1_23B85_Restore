@interface ManagedFinHealthTransactionEntityGroup
- (_TtC10FinanceKit38ManagedFinHealthTransactionEntityGroup)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void)willSave;
@end

@implementation ManagedFinHealthTransactionEntityGroup

- (void)willSave
{
  selfCopy = self;
  ManagedFinHealthTransactionEntityGroup.willSave()();
}

- (_TtC10FinanceKit38ManagedFinHealthTransactionEntityGroup)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedFinHealthTransactionEntityGroup *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end