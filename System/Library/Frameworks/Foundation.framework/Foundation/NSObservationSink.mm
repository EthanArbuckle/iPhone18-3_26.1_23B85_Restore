@interface NSObservationSink
+ (id)handleErrorsWithBlock:(id)block;
+ (id)handleValuesWithBlock:(id)block;
@end

@implementation NSObservationSink

+ (id)handleValuesWithBlock:(id)block
{
  v3 = [[NSBlockObservationSink alloc] initWithBlock:block tag:1];

  return v3;
}

+ (id)handleErrorsWithBlock:(id)block
{
  v3 = [[NSBlockObservationSink alloc] initWithBlock:block tag:2];

  return v3;
}

@end