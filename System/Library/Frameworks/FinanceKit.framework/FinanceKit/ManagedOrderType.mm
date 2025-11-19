@interface ManagedOrderType
- (_TtC10FinanceKit16ManagedOrderType)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (void)willSave;
@end

@implementation ManagedOrderType

- (void)willSave
{
  v2 = self;
  ManagedOrderType.willSave()();
}

- (_TtC10FinanceKit16ManagedOrderType)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedOrderType *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end