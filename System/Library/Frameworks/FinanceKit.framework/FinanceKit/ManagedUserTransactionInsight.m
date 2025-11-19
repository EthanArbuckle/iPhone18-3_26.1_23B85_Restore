@interface ManagedUserTransactionInsight
- (_TtC10FinanceKit29ManagedUserTransactionInsight)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (void)awakeFromInsert;
- (void)willSave;
@end

@implementation ManagedUserTransactionInsight

- (void)willSave
{
  v2 = self;
  ManagedUserTransactionInsight.willSave()();
}

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
  [(ManagedUserTransactionInsight *)&v10 awakeFromInsert];
  sub_1B77FF938();
  v9 = sub_1B77FF8B8();
  (*(v5 + 8))(v7, v4);
  [(ManagedUserTransactionInsight *)v8 setUpdatedAt:v9];
}

- (_TtC10FinanceKit29ManagedUserTransactionInsight)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedUserTransactionInsight *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end