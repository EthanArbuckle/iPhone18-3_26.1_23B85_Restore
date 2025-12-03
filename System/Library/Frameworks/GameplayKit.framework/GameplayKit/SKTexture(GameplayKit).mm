@interface SKTexture(GameplayKit)
+ (id)textureWithNoiseMap:()GameplayKit;
@end

@implementation SKTexture(GameplayKit)

+ (id)textureWithNoiseMap:()GameplayKit
{
  v3 = a3;
  __colorData = [v3 __colorData];
  v5 = MEMORY[0x277CDCF90];
  [v3 sampleCount];
  v10 = v6;
  [v3 sampleCount];
  v8 = [v5 textureWithData:__colorData size:{v10, v7}];

  return v8;
}

@end