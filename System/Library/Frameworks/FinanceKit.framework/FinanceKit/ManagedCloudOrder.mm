@interface ManagedCloudOrder
- (_TtC10FinanceKit17ManagedCloudOrder)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedCloudOrder

- (_TtC10FinanceKit17ManagedCloudOrder)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedCloudOrder *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end