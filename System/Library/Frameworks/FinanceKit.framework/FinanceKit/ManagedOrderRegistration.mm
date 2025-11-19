@interface ManagedOrderRegistration
- (_TtC10FinanceKit24ManagedOrderRegistration)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (void)awakeFromInsert;
@end

@implementation ManagedOrderRegistration

- (void)awakeFromInsert
{
  v2 = self;
  ManagedOrderRegistration.awakeFromInsert()();
}

- (_TtC10FinanceKit24ManagedOrderRegistration)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedOrderRegistration *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end