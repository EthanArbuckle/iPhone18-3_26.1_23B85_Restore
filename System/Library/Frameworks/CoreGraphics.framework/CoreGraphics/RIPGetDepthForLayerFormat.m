@interface RIPGetDepthForLayerFormat
@end

@implementation RIPGetDepthForLayerFormat

const char **__RIPGetDepthForLayerFormat_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a1 + 32);
  if (v8 == -1)
  {
    v9 = 0;
  }

  else
  {
    if (v8 >= 0x1B)
    {
      _CGHandleAssert("RIPGetEncodingForLayerFormat", 81, "/Library/Caches/com.apple.xbs/Sources/CoreGraphics/CoreGraphicsRIP/RIP/RIPLayerFormat.c", "format >= 0 && format < kRIPLayerFormat_Max", "invalid format %d", a6, a7, a8, v8);
    }

    v9 = encoding[v8];
  }

  result = CGBlt_depth(v9);
  v11 = (&RIPGetDepthForLayerFormat_blt_depth + 16 * v8);
  *v11 = result;
  if (!result || !result[4])
  {
    *v11 = -1;
  }

  return result;
}

@end