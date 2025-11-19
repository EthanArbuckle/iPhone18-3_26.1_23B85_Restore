@interface ManagedPendingApplePayTransactionRegistration
- (_TtC10FinanceKit45ManagedPendingApplePayTransactionRegistration)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (void).cxx_construct;
- (void)awakeFromInsert;
@end

@implementation ManagedPendingApplePayTransactionRegistration

- (void)awakeFromInsert
{
  ObjectType = swift_getObjectType();
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = self;
  [(ManagedPendingApplePayTransactionRegistration *)&v10 awakeFromInsert];
  sub_1B77FF938();
  v9 = sub_1B77FF8B8();
  (*(v5 + 8))(v7, v4);
  [(ManagedPendingApplePayTransactionRegistration *)v8 setCreationDate:v9];
}

- (_TtC10FinanceKit45ManagedPendingApplePayTransactionRegistration)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedPendingApplePayTransactionRegistration *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (void).cxx_construct
{
  v2 = (&self->super.super.isa + OBJC_IVAR____TtC10FinanceKit45ManagedPendingApplePayTransactionRegistration_transactionIdentifierKey);
  *v2 = 0xD000000000000015;
  v2[1] = 0x80000001B7874D10;
  v3 = (&self->super.super.isa + OBJC_IVAR____TtC10FinanceKit45ManagedPendingApplePayTransactionRegistration_privateKeyKey);
  *v3 = 0x4B65746176697270;
  v3[1] = 0xEA00000000007965;
}

@end