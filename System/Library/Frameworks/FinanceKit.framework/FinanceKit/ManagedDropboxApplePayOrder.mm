@interface ManagedDropboxApplePayOrder
- (_TtC10FinanceKit27ManagedDropboxApplePayOrder)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void).cxx_construct;
@end

@implementation ManagedDropboxApplePayOrder

- (_TtC10FinanceKit27ManagedDropboxApplePayOrder)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedDropboxApplePayOrder *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
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