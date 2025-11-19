@interface BLSBacklightChangeSourceEventSuppressionMetadata(BLSHSuppressionEvent)
- (uint64_t)initWithSuppressionEvent:()BLSHSuppressionEvent;
@end

@implementation BLSBacklightChangeSourceEventSuppressionMetadata(BLSHSuppressionEvent)

- (uint64_t)initWithSuppressionEvent:()BLSHSuppressionEvent
{
  v4 = a3;
  v5 = [v4 type];
  v6 = [v4 reason];

  return [a1 initWithType:v5 reason:v6];
}

@end