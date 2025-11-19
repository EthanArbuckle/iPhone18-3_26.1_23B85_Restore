@interface BLSHNullBacklightSceneHostEnvironment
- (BLSHNullBacklightSceneHostEnvironment)init;
@end

@implementation BLSHNullBacklightSceneHostEnvironment

- (BLSHNullBacklightSceneHostEnvironment)init
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [v4 UUIDString];
  v6 = [v3 stringWithFormat:@"NullEnvironment:%@", v5];
  v9.receiver = self;
  v9.super_class = BLSHNullBacklightSceneHostEnvironment;
  v7 = [(BLSHBaseSceneHostEnvironment *)&v9 initWithIdentifier:v6];

  return v7;
}

@end