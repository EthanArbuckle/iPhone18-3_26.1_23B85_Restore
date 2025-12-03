@interface BLSBacklightChangeSourceEventSuppressionMetadata(BLSHSuppressionEvent)
- (uint64_t)initWithSuppressionEvent:()BLSHSuppressionEvent;
@end

@implementation BLSBacklightChangeSourceEventSuppressionMetadata(BLSHSuppressionEvent)

- (uint64_t)initWithSuppressionEvent:()BLSHSuppressionEvent
{
  v4 = a3;
  type = [v4 type];
  reason = [v4 reason];

  return [self initWithType:type reason:reason];
}

@end