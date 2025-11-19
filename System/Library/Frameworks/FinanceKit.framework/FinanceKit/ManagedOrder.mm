@interface ManagedOrder
- (_TtC10FinanceKit12ManagedOrder)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (void).cxx_construct;
- (void)awakeFromInsert;
- (void)willSave;
@end

@implementation ManagedOrder

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
  [(ManagedOrder *)&v10 awakeFromInsert];
  sub_1B77FF938();
  v9 = sub_1B77FF8B8();
  (*(v5 + 8))(v7, v4);
  [(ManagedOrder *)v8 setCreationDate:v9];
}

- (void)willSave
{
  v2 = self;
  ManagedOrder.willSave()();
}

- (_TtC10FinanceKit12ManagedOrder)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedOrder *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (void).cxx_construct
{
  v2 = (&self->super.super.isa + OBJC_IVAR____TtC10FinanceKit12ManagedOrder_orderContentTypeKey);
  *v2 = 0xD000000000000010;
  v2[1] = 0x80000001B787EC20;
}

@end