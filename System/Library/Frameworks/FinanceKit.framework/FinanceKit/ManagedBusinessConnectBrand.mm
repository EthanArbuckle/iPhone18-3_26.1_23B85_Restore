@interface ManagedBusinessConnectBrand
- (_TtC10FinanceKit27ManagedBusinessConnectBrand)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (void)willSave;
@end

@implementation ManagedBusinessConnectBrand

- (_TtC10FinanceKit27ManagedBusinessConnectBrand)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedBusinessConnectBrand *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (void)willSave
{
  v2 = self;
  ManagedBusinessConnectBrand.willSave()();
}

@end