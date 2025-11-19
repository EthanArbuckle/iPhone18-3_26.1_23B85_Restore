@interface CIContextCache
+ (id)peakNonVolatileList;
@end

@implementation CIContextCache

+ (id)peakNonVolatileList
{
  v2 = CopyPeakNonVolatileList();
  if (!v2)
  {
    return MEMORY[0x1E695E0F0];
  }

  return v2;
}

@end