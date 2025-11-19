@interface ReevaluateRouteConfiguration
@end

@implementation ReevaluateRouteConfiguration

uint64_t __playerairplay_ReevaluateRouteConfiguration_block_invoke(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  v3 = *(result + 216);
  if (v3)
  {
    v4 = v3 == 10;
  }

  else
  {
    v4 = 1;
  }

  v5 = !v4;
  *(*(*(a1 + 32) + 8) + 24) = v5;
  return result;
}

@end