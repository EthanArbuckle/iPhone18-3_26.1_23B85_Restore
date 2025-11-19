@interface ManagedWalletMessage
- (_TtC10FinanceKit20ManagedWalletMessage)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedWalletMessage

- (_TtC10FinanceKit20ManagedWalletMessage)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedWalletMessage *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end