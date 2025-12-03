@interface UIImageSymbolConfiguration(MKCrossPlatformOperations)
+ (uint64_t)_mapkit_configurationWithPointSize:()MKCrossPlatformOperations weight:;
+ (uint64_t)_mapkit_configurationWithPointSize:()MKCrossPlatformOperations weight:scale:;
@end

@implementation UIImageSymbolConfiguration(MKCrossPlatformOperations)

+ (uint64_t)_mapkit_configurationWithPointSize:()MKCrossPlatformOperations weight:
{
  v4 = MEMORY[0x1E69DCAD8];
  v5 = [self _symbolWeightForFontWeight:a3];

  return [v4 configurationWithPointSize:v5 weight:a2];
}

+ (uint64_t)_mapkit_configurationWithPointSize:()MKCrossPlatformOperations weight:scale:
{
  v7 = MEMORY[0x1E69DCAD8];
  v8 = [self _symbolWeightForFontWeight:a3];

  return [v7 configurationWithPointSize:v8 weight:a5 scale:a2];
}

@end