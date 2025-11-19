@interface BKSMutableProximityEvent
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation BKSMutableProximityEvent

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BKSProximityDetectionMaskChangeEvent alloc];

  return [(BKSProximityDetectionMaskChangeEvent *)v4 _initWithCopyOf:?];
}

@end