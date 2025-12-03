@interface BLSHNullBacklightSceneHostEnvironment
- (BLSHNullBacklightSceneHostEnvironment)init;
@end

@implementation BLSHNullBacklightSceneHostEnvironment

- (BLSHNullBacklightSceneHostEnvironment)init
{
  v3 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v6 = [v3 stringWithFormat:@"NullEnvironment:%@", uUIDString];
  v9.receiver = self;
  v9.super_class = BLSHNullBacklightSceneHostEnvironment;
  v7 = [(BLSHBaseSceneHostEnvironment *)&v9 initWithIdentifier:v6];

  return v7;
}

@end