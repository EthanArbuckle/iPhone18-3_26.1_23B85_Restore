@interface ManagedDropboxApplePayOrder
- (_TtC10FinanceKit27ManagedDropboxApplePayOrder)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (void).cxx_construct;
@end

@implementation ManagedDropboxApplePayOrder

- (_TtC10FinanceKit27ManagedDropboxApplePayOrder)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedDropboxApplePayOrder *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (void).cxx_construct
{
  v2 = (&self->super.super.isa + OBJC_IVAR____TtC10FinanceKit27ManagedDropboxApplePayOrder_encryptionSchemeKey);
  *v2 = 0xD000000000000010;
  v2[1] = 0x80000001B7881BF0;
  v3 = (&self->super.super.isa + OBJC_IVAR____TtC10FinanceKit27ManagedDropboxApplePayOrder_ephemeralPublicKeyKey);
  *v3 = 0xD000000000000012;
  v3[1] = 0x80000001B7881C10;
}

@end