@interface BLSHBegunUpdateOperation
+ (id)didBeginUpdateToBacklightState:(int64_t)state;
@end

@implementation BLSHBegunUpdateOperation

+ (id)didBeginUpdateToBacklightState:(int64_t)state
{
  v3 = [objc_alloc(objc_opt_class()) initWithBacklightState:state];

  return v3;
}

@end