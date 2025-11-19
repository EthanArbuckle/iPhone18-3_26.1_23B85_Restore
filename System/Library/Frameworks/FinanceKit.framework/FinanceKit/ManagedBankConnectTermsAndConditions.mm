@interface ManagedBankConnectTermsAndConditions
- (_TtC10FinanceKit36ManagedBankConnectTermsAndConditions)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (void)willSave;
@end

@implementation ManagedBankConnectTermsAndConditions

- (_TtC10FinanceKit36ManagedBankConnectTermsAndConditions)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedBankConnectTermsAndConditions *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (void)willSave
{
  v2 = self;
  ManagedBankConnectTermsAndConditions.willSave()();
}

@end