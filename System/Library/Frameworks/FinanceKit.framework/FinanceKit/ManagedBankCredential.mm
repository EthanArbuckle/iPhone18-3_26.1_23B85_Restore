@interface ManagedBankCredential
- (_TtC10FinanceKit21ManagedBankCredential)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedBankCredential

- (_TtC10FinanceKit21ManagedBankCredential)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedBankCredential *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end