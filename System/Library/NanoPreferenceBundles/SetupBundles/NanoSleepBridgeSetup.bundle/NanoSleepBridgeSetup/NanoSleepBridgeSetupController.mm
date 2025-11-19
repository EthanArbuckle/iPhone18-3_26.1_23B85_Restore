@interface NanoSleepBridgeSetupController
+ (BOOL)skipControllerForExpressMode:(id)a3;
- (BOOL)holdBeforeDisplaying;
- (id)viewController;
@end

@implementation NanoSleepBridgeSetupController

- (id)viewController
{
  sub_4220();
  v6[2] = self;
  v3 = self;
  v4 = sub_23AC(sub_3DF4, v6, "NanoSleepBridgeSetup/NanoSleepBridgeSetupController.swift", 57);

  return v4;
}

+ (BOOL)skipControllerForExpressMode:(id)a3
{
  swift_getObjCClassMetadata();
  v4 = a3;
  v5 = sub_287C();

  return v5 & 1;
}

- (BOOL)holdBeforeDisplaying
{
  sub_4220();
  v6[2] = self;
  v3 = self;
  v4 = sub_2564(sub_3CF4, v6, "NanoSleepBridgeSetup/NanoSleepBridgeSetupController.swift");

  return v4 & 1;
}

@end