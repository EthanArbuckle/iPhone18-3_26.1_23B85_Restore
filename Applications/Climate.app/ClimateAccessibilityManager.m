@interface ClimateAccessibilityManager
- (void)dealloc;
- (void)didUpdateVehicle;
@end

@implementation ClimateAccessibilityManager

- (void)dealloc
{
  sub_1000BE674();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = self;
  v5 = [ObjCClassFromMetadata defaultCenter];
  [v5 removeObserver:v4];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for ClimateAccessibilityManager();
  [(ClimateAccessibilityManager *)&v6 dealloc];
}

- (void)didUpdateVehicle
{
  v2 = self;
  sub_1000BE2BC();
}

@end