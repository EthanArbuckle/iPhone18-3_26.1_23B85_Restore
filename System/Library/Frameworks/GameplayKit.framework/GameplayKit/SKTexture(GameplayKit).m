@interface SKTexture(GameplayKit)
+ (id)textureWithNoiseMap:()GameplayKit;
@end

@implementation SKTexture(GameplayKit)

+ (id)textureWithNoiseMap:()GameplayKit
{
  v3 = a3;
  v4 = [v3 __colorData];
  v5 = MEMORY[0x277CDCF90];
  [v3 sampleCount];
  v10 = v6;
  [v3 sampleCount];
  v8 = [v5 textureWithData:v4 size:{v10, v7}];

  return v8;
}

@end