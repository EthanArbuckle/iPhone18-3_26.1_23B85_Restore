@interface ManagedOrderType
- (_TtC10FinanceKit16ManagedOrderType)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void)willSave;
@end

@implementation ManagedOrderType

- (void)willSave
{
  selfCopy = self;
  ManagedOrderType.willSave()();
}

- (_TtC10FinanceKit16ManagedOrderType)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedOrderType *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end