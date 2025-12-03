@interface ManagedApplePayMerchantTokenUpcomingPayment
- (BOOL)validateForInsert:(id *)insert;
- (_TtC10FinanceKit43ManagedApplePayMerchantTokenUpcomingPayment)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedApplePayMerchantTokenUpcomingPayment

- (BOOL)validateForInsert:(id *)insert
{
  selfCopy = self;
  ManagedApplePayMerchantTokenUpcomingPayment.validateForInsert()();

  if (v5)
  {
    if (insert)
    {
      v6 = sub_1B77FF308();

      v7 = v6;
      *insert = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (_TtC10FinanceKit43ManagedApplePayMerchantTokenUpcomingPayment)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedApplePayMerchantTokenUpcomingPayment *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end