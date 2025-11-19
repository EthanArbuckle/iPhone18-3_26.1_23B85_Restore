@interface NSObservationSink
+ (id)handleErrorsWithBlock:(id)a3;
+ (id)handleValuesWithBlock:(id)a3;
@end

@implementation NSObservationSink

+ (id)handleValuesWithBlock:(id)a3
{
  v3 = [[NSBlockObservationSink alloc] initWithBlock:a3 tag:1];

  return v3;
}

+ (id)handleErrorsWithBlock:(id)a3
{
  v3 = [[NSBlockObservationSink alloc] initWithBlock:a3 tag:2];

  return v3;
}

@end