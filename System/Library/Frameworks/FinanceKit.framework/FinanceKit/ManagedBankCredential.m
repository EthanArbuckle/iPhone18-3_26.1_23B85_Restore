@interface ManagedBankCredential
- (_TtC10FinanceKit21ManagedBankCredential)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedBankCredential

- (_TtC10FinanceKit21ManagedBankCredential)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedBankCredential *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end