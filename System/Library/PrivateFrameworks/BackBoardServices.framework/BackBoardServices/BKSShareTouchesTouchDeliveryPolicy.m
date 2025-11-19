@interface BKSShareTouchesTouchDeliveryPolicy
@end

@implementation BKSShareTouchesTouchDeliveryPolicy

id __68___BKSShareTouchesTouchDeliveryPolicy_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendString:@"share" withName:0];
  v2 = [*(a1 + 32) appendUInt64:*(*(a1 + 40) + 12) withName:@"hostContextID" format:1];
  return [*(a1 + 32) appendUInt64:*(*(a1 + 40) + 8) withName:@"childContextID" format:1];
}

@end