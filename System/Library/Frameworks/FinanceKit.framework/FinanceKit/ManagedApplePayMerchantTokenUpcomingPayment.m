@interface ManagedApplePayMerchantTokenUpcomingPayment
- (BOOL)validateForInsert:(id *)a3;
- (_TtC10FinanceKit43ManagedApplePayMerchantTokenUpcomingPayment)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedApplePayMerchantTokenUpcomingPayment

- (BOOL)validateForInsert:(id *)a3
{
  v4 = self;
  ManagedApplePayMerchantTokenUpcomingPayment.validateForInsert()();

  if (v5)
  {
    if (a3)
    {
      v6 = sub_1B77FF308();

      v7 = v6;
      *a3 = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (_TtC10FinanceKit43ManagedApplePayMerchantTokenUpcomingPayment)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedApplePayMerchantTokenUpcomingPayment *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end