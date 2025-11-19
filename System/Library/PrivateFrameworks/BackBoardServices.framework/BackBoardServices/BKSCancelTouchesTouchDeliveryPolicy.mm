@interface BKSCancelTouchesTouchDeliveryPolicy
@end

@implementation BKSCancelTouchesTouchDeliveryPolicy

id __69___BKSCancelTouchesTouchDeliveryPolicy_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:@"cancel" withName:0];
  v2 = [*(a1 + 32) appendUInt64:*(*(a1 + 40) + 8) withName:@"contextID" format:1];
  return [*(a1 + 32) appendTimeInterval:@"initialTouchTimestamp" withName:0 decomposeUnits:*(*(a1 + 40) + 24)];
}

@end