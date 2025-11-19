@interface MKResultView
@end

@implementation MKResultView

uint64_t __34___MKResultView_setShowsDistance___block_invoke(uint64_t result)
{
  if (*(*(result + 32) + 441) == 1)
  {
    v2 = result;
    v3 = objc_alloc_init(MKLocationManager);
    v4 = *(v2 + 32);
    v5 = *(v4 + 456);
    *(v4 + 456) = v3;

    v6 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/LocationBundles/CoreParsec.framework"];
    [*(*(v2 + 32) + 456) setEffectiveBundle:v6];

    [*(*(v2 + 32) + 456) setDistanceFilter:100.0];
    [*(*(v2 + 32) + 456) setDesiredAccuracy:*MEMORY[0x1E6985C88]];
    v7 = *(*(v2 + 32) + 456);

    return [v7 startLocationUpdateWithObserver:?];
  }

  return result;
}

@end