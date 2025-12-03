@interface ManagedPendingApplePayOrder
- (_TtC10FinanceKit27ManagedPendingApplePayOrder)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void)awakeFromInsert;
@end

@implementation ManagedPendingApplePayOrder

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
  [(ManagedPendingApplePayOrder *)&v10 awakeFromInsert];
  sub_1B77FF938();
  v9 = sub_1B77FF8B8();
  (*(v5 + 8))(v7, v4);
  [(ManagedPendingApplePayOrder *)selfCopy setCreationDate:v9];
}

- (_TtC10FinanceKit27ManagedPendingApplePayOrder)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedPendingApplePayOrder *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end