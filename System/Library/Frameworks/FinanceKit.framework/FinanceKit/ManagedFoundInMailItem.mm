@interface ManagedFoundInMailItem
- (_TtC10FinanceKit22ManagedFoundInMailItem)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (void).cxx_construct;
- (void)willSave;
@end

@implementation ManagedFoundInMailItem

- (_TtC10FinanceKit22ManagedFoundInMailItem)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedFoundInMailItem *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (void).cxx_construct
{
  v2 = (&self->super.super.isa + OBJC_IVAR____TtC10FinanceKit22ManagedFoundInMailItem_dataSourceKey);
  *v2 = 0x72756F5361746164;
  v2[1] = 0xEA00000000006563;
}

- (void)willSave
{
  v2 = self;
  ManagedFoundInMailItem.willSave()();
}

@end