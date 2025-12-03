@interface ManagedOrderPaymentTransaction
- (_TtC10FinanceKit30ManagedOrderPaymentTransaction)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void).cxx_construct;
@end

@implementation ManagedOrderPaymentTransaction

- (_TtC10FinanceKit30ManagedOrderPaymentTransaction)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedOrderPaymentTransaction *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

- (void).cxx_construct
{
  v2 = (&self->super.super.isa + OBJC_IVAR____TtC10FinanceKit30ManagedOrderPaymentTransaction_transactionTypeKey);
  *v2 = 0x746361736E617274;
  v2[1] = 0xEF657079546E6F69;
  v3 = (&self->super.super.isa + OBJC_IVAR____TtC10FinanceKit30ManagedOrderPaymentTransaction_statusKey);
  *v3 = 0x737574617473;
  v3[1] = 0xE600000000000000;
  v4 = (&self->super.super.isa + OBJC_IVAR____TtC10FinanceKit30ManagedOrderPaymentTransaction_amountKey);
  *v4 = 0x746E756F6D61;
  v4[1] = 0xE600000000000000;
  v5 = self + OBJC_IVAR____TtC10FinanceKit30ManagedOrderPaymentTransaction_currencyCodeKey;
  strcpy(self + OBJC_IVAR____TtC10FinanceKit30ManagedOrderPaymentTransaction_currencyCodeKey, "currencyCode");
  v5[13] = 0;
  *(v5 + 7) = -5120;
}

@end