@interface LSDatabaseDisposeStringArray
@end

@implementation LSDatabaseDisposeStringArray

uint64_t ___LSDatabaseDisposeStringArray_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1[5];
  }

  return _CSStringRelease();
}

@end