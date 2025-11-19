@interface ManagedOrderPayment
- (_TtC10FinanceKit19ManagedOrderPayment)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (void).cxx_construct;
@end

@implementation ManagedOrderPayment

- (_TtC10FinanceKit19ManagedOrderPayment)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedOrderPayment *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (void).cxx_construct
{
  v2 = (&self->super.super.isa + OBJC_IVAR____TtC10FinanceKit19ManagedOrderPayment_statusValueKey);
  *v2 = 0x6156737574617473;
  v2[1] = 0xEB0000000065756CLL;
}

@end