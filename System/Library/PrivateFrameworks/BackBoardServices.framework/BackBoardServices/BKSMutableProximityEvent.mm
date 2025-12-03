@interface BKSMutableProximityEvent
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation BKSMutableProximityEvent

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BKSProximityDetectionMaskChangeEvent alloc];

  return [(BKSProximityDetectionMaskChangeEvent *)v4 _initWithCopyOf:?];
}

@end