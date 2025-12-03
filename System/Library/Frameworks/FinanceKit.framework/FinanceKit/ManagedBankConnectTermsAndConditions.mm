@interface ManagedBankConnectTermsAndConditions
- (_TtC10FinanceKit36ManagedBankConnectTermsAndConditions)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void)willSave;
@end

@implementation ManagedBankConnectTermsAndConditions

- (_TtC10FinanceKit36ManagedBankConnectTermsAndConditions)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedBankConnectTermsAndConditions *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

- (void)willSave
{
  selfCopy = self;
  ManagedBankConnectTermsAndConditions.willSave()();
}

@end