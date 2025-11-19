@interface MKRoundingByteCountFormatter
+ (id)stringFromByteCount:(int64_t)a3 roundedToNearest:(int64_t)a4;
@end

@implementation MKRoundingByteCountFormatter

+ (id)stringFromByteCount:(int64_t)a3 roundedToNearest:(int64_t)a4
{
  v4 = [MKRoundingByteCountFormatter roundByteCount:a3 toNearest:a4];
  v5 = MEMORY[0x1E696AAF0];

  return [v5 stringFromByteCount:v4 countStyle:2];
}

@end