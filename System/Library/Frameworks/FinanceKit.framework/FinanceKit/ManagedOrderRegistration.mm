@interface ManagedOrderRegistration
- (_TtC10FinanceKit24ManagedOrderRegistration)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void)awakeFromInsert;
@end

@implementation ManagedOrderRegistration

- (void)awakeFromInsert
{
  selfCopy = self;
  ManagedOrderRegistration.awakeFromInsert()();
}

- (_TtC10FinanceKit24ManagedOrderRegistration)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedOrderRegistration *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end