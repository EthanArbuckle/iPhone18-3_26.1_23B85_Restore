@interface BLSHCompletedUpdateOperation
+ (id)didCompleteUpdateToBacklightState:(int64_t)state;
@end

@implementation BLSHCompletedUpdateOperation

+ (id)didCompleteUpdateToBacklightState:(int64_t)state
{
  v3 = [objc_alloc(objc_opt_class()) initWithBacklightState:state];

  return v3;
}

@end