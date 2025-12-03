@interface ManagedBusinessConnectBrand
- (_TtC10FinanceKit27ManagedBusinessConnectBrand)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void)willSave;
@end

@implementation ManagedBusinessConnectBrand

- (_TtC10FinanceKit27ManagedBusinessConnectBrand)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedBusinessConnectBrand *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

- (void)willSave
{
  selfCopy = self;
  ManagedBusinessConnectBrand.willSave()();
}

@end