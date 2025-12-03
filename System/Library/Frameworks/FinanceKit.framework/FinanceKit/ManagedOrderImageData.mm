@interface ManagedOrderImageData
- (_TtC10FinanceKit21ManagedOrderImageData)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void)willSave;
@end

@implementation ManagedOrderImageData

- (void)willSave
{
  selfCopy = self;
  ManagedOrderImageData.willSave()();
}

- (_TtC10FinanceKit21ManagedOrderImageData)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedOrderImageData *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end