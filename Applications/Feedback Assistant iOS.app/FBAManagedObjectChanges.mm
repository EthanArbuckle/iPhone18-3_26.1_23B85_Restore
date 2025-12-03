@interface FBAManagedObjectChanges
- (BOOL)invalidatedAllObjects;
- (NSManagedObjectContext)managedObjectContext;
- (_TtC18Feedback_Assistant23FBAManagedObjectChanges)init;
@end

@implementation FBAManagedObjectChanges

- (BOOL)invalidatedAllObjects
{
  selfCopy = self;
  v3 = sub_1000873C8();

  return v3 & 1;
}

- (NSManagedObjectContext)managedObjectContext
{
  selfCopy = self;
  v3 = sub_10008752C();

  return v3;
}

- (_TtC18Feedback_Assistant23FBAManagedObjectChanges)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end