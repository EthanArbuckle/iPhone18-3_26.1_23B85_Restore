@interface RestoreInstallCreator
+ (id)createRestoreFromCoordinator:(id)coordinator policy:(id)policy error:(id *)error;
- (_TtC9appstored21RestoreInstallCreator)init;
@end

@implementation RestoreInstallCreator

+ (id)createRestoreFromCoordinator:(id)coordinator policy:(id)policy error:(id *)error
{
  coordinatorCopy = coordinator;
  policyCopy = policy;
  v8 = sub_100083E50(coordinatorCopy, policyCopy);

  return v8;
}

- (_TtC9appstored21RestoreInstallCreator)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RestoreInstallCreator();
  return [(RestoreInstallCreator *)&v3 init];
}

@end