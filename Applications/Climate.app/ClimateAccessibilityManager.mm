@interface ClimateAccessibilityManager
- (void)dealloc;
- (void)didUpdateVehicle;
@end

@implementation ClimateAccessibilityManager

- (void)dealloc
{
  sub_1000BE674();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  selfCopy = self;
  defaultCenter = [ObjCClassFromMetadata defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for ClimateAccessibilityManager();
  [(ClimateAccessibilityManager *)&v6 dealloc];
}

- (void)didUpdateVehicle
{
  selfCopy = self;
  sub_1000BE2BC();
}

@end