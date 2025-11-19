@interface ManagedTransactionIcon
- (_TtC10FinanceKit22ManagedTransactionIcon)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (void)willSave;
@end

@implementation ManagedTransactionIcon

- (void)willSave
{
  v2 = self;
  ManagedTransactionIcon.willSave()();
}

- (_TtC10FinanceKit22ManagedTransactionIcon)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedTransactionIcon *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end