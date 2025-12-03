@interface NTKFoghornHealthKitDataSource
- (NTKFoghornHealthKitDataSource)init;
- (NTKFoghornHealthKitDataSourceDelegate)delegate;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
- (void)setMaxDepth:(id)depth;
@end

@implementation NTKFoghornHealthKitDataSource

- (NTKFoghornHealthKitDataSourceDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_23BE7C59C();
  swift_unknownObjectRelease();
}

- (void)setMaxDepth:(id)depth
{
  depthCopy = depth;
  selfCopy = self;
  sub_23BE7CB24(depth);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___NTKFoghornHealthKitDataSource_subscriptions;
  swift_beginAccess();
  *(self + v4) = MEMORY[0x277D84FA0];
  selfCopy = self;

  *(selfCopy + OBJC_IVAR___NTKFoghornHealthKitDataSource_healthKitProvider) = 0;

  v6.receiver = selfCopy;
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