@interface QLItem(Orb)
- (uint64_t)predictedPreferredContentSizeForOrbPlatter;
@end

@implementation QLItem(Orb)

- (uint64_t)predictedPreferredContentSizeForOrbPlatter
{
  if (([a1 hasDeterminedPredictedPreferredContentSizeForOrbPlatter] & 1) == 0)
  {
    v2 = [a1 previewItemURL];

    if (v2)
    {
      v3 = [a1 previewItemURL];
      [a1 preferredContentSizeForOrbPlatterWithURL:v3];
      [a1 setPreferredContentSizeForOrbPlatter:?];
    }
  }

  [a1 setHasDeterminedPredictedPreferredContentSizeForOrbPlatter:1];

  return [a1 preferredContentSizeForOrbPlatter];
}

@end