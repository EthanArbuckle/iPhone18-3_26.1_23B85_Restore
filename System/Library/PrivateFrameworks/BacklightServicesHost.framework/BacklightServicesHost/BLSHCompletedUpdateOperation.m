@interface BLSHCompletedUpdateOperation
+ (id)didCompleteUpdateToBacklightState:(int64_t)a3;
@end

@implementation BLSHCompletedUpdateOperation

+ (id)didCompleteUpdateToBacklightState:(int64_t)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithBacklightState:a3];

  return v3;
}

@end