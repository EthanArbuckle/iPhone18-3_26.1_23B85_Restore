@interface ManagedTransactionIcon
- (_TtC10FinanceKit22ManagedTransactionIcon)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void)willSave;
@end

@implementation ManagedTransactionIcon

- (void)willSave
{
  selfCopy = self;
  ManagedTransactionIcon.willSave()();
}

- (_TtC10FinanceKit22ManagedTransactionIcon)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedTransactionIcon *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end