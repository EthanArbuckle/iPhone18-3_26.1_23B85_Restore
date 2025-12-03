@interface A:
- (uint64_t)B;
@end

@implementation A:

- (uint64_t)B
{
  result = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)(self, a2[2], a2[3], a2[4]);
  *a3 = result;
  return result;
}

@end