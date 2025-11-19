@interface NSString
@end

@implementation NSString

uint64_t __76__NSString_MKAdditions___mapkit_voiceOverLocalizedDistanceStringWithMeters___block_invoke()
{
  v0 = objc_alloc_init(MKDistanceFormatter);
  v1 = _mapkit_voiceOverLocalizedDistanceStringWithMeters__distanceFormatter;
  _mapkit_voiceOverLocalizedDistanceStringWithMeters__distanceFormatter = v0;

  v2 = _mapkit_voiceOverLocalizedDistanceStringWithMeters__distanceFormatter;

  return [v2 setUnitStyle:2];
}

void __79__NSString_MKAdditions___mapkit_localizedDistanceStringWithMeters_abbreviated___block_invoke()
{
  v0 = objc_alloc_init(MKDistanceFormatter);
  v1 = _mapkit_localizedDistanceStringWithMeters_abbreviated__distanceFormatter;
  _mapkit_localizedDistanceStringWithMeters_abbreviated__distanceFormatter = v0;
}

@end