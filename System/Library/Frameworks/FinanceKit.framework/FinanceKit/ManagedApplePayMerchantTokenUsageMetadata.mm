@interface ManagedApplePayMerchantTokenUsageMetadata
- (_TtC10FinanceKit41ManagedApplePayMerchantTokenUsageMetadata)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void)willSave;
@end

@implementation ManagedApplePayMerchantTokenUsageMetadata

- (void)willSave
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ManagedApplePayMerchantTokenUsageMetadata *)&v3 willSave];
  sub_1B75F766C();
}

- (_TtC10FinanceKit41ManagedApplePayMerchantTokenUsageMetadata)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedApplePayMerchantTokenUsageMetadata *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end