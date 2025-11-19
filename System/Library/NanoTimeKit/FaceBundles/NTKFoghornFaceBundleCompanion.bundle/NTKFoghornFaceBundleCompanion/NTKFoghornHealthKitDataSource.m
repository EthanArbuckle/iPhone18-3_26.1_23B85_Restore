@interface NTKFoghornHealthKitDataSource
- (NTKFoghornHealthKitDataSource)init;
- (NTKFoghornHealthKitDataSourceDelegate)delegate;
- (void)dealloc;
- (void)setDelegate:(id)a3;
- (void)setMaxDepth:(id)a3;
@end

@implementation NTKFoghornHealthKitDataSource

- (NTKFoghornHealthKitDataSourceDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  v4 = self;
  sub_23BE7C59C();
  swift_unknownObjectRelease();
}

- (void)setMaxDepth:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_23BE7CB24(a3);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___NTKFoghornHealthKitDataSource_subscriptions;
  swift_beginAccess();
  *(self + v4) = MEMORY[0x277D84FA0];
  v5 = self;

  *(v5 + OBJC_IVAR___NTKFoghornHealthKitDataSource_healthKitProvider) = 0;

  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(NTKFoghornHealthKitDataSource *)&v6 dealloc];
}

- (NTKFoghornHealthKitDataSource)init
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___NTKFoghornHealthKitDataSource_maxDepth) = 0;
  *(self + OBJC_IVAR___NTKFoghornHealthKitDataSource_healthKitProvider) = 0;
  *(self + OBJC_IVAR___NTKFoghornHealthKitDataSource_subscriptions) = MEMORY[0x277D84FA0];
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(NTKFoghornHealthKitDataSource *)&v5 init];
}

@end