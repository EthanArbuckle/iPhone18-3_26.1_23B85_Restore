@interface ManagedOrderImageData
- (_TtC10FinanceKit21ManagedOrderImageData)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
- (void)willSave;
@end

@implementation ManagedOrderImageData

- (void)willSave
{
  v2 = self;
  ManagedOrderImageData.willSave()();
}

- (_TtC10FinanceKit21ManagedOrderImageData)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedOrderImageData *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end