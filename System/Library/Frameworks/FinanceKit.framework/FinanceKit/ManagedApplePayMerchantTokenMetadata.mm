@interface ManagedApplePayMerchantTokenMetadata
- (_TtC10FinanceKit36ManagedApplePayMerchantTokenMetadata)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void)awakeFromInsert;
@end

@implementation ManagedApplePayMerchantTokenMetadata

- (void)awakeFromInsert
{
  ObjectType = swift_getObjectType();
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.receiver = self;
  v10.super_class = ObjectType;
  selfCopy = self;
  [(ManagedApplePayMerchantTokenMetadata *)&v10 awakeFromInsert];
  sub_1B77FF938();
  v9 = sub_1B77FF8B8();
  (*(v5 + 8))(v7, v4);
  [(ManagedApplePayMerchantTokenMetadata *)selfCopy setPrimitiveCreationDate:v9];
}

- (_TtC10FinanceKit36ManagedApplePayMerchantTokenMetadata)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedApplePayMerchantTokenMetadata *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end