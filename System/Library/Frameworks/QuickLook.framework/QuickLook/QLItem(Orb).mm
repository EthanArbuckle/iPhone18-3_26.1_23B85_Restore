@interface QLItem(Orb)
- (uint64_t)predictedPreferredContentSizeForOrbPlatter;
@end

@implementation QLItem(Orb)

- (uint64_t)predictedPreferredContentSizeForOrbPlatter
{
  if (([self hasDeterminedPredictedPreferredContentSizeForOrbPlatter] & 1) == 0)
  {
    previewItemURL = [self previewItemURL];

    if (previewItemURL)
    {
      previewItemURL2 = [self previewItemURL];
      [self preferredContentSizeForOrbPlatterWithURL:previewItemURL2];
      [self setPreferredContentSizeForOrbPlatter:?];
    }
  }

  [self setHasDeterminedPredictedPreferredContentSizeForOrbPlatter:1];

  return [self preferredContentSizeForOrbPlatter];
}

@end