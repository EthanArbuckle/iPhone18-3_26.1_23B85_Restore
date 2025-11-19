@interface BKSSystemGesturesTouchStreamPolicy
- (BKSSystemGesturesTouchStreamPolicy)init;
@end

@implementation BKSSystemGesturesTouchStreamPolicy

- (BKSSystemGesturesTouchStreamPolicy)init
{
  v5.receiver = self;
  v5.super_class = BKSSystemGesturesTouchStreamPolicy;
  v2 = [(BKSSystemGesturesTouchStreamPolicy *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BKSTouchStreamPolicy *)v2 setShouldSendAmbiguityRecommendations:1];
  }

  return v3;
}

@end