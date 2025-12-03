@interface MKRoundingByteCountFormatter
+ (id)stringFromByteCount:(int64_t)count roundedToNearest:(int64_t)nearest;
@end

@implementation MKRoundingByteCountFormatter

+ (id)stringFromByteCount:(int64_t)count roundedToNearest:(int64_t)nearest
{
  v4 = [MKRoundingByteCountFormatter roundByteCount:count toNearest:nearest];
  v5 = MEMORY[0x1E696AAF0];

  return [v5 stringFromByteCount:v4 countStyle:2];
}

@end