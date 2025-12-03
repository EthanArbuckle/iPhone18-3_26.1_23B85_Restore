@interface NSObservationTransformer
+ (id)mapErrorsWithBlock:(id)block;
+ (id)mapValuesWithBlock:(id)block;
@end

@implementation NSObservationTransformer

+ (id)mapValuesWithBlock:(id)block
{
  v3 = [[NSMapObservationTransformer alloc] initWithBlock:block tag:1];

  return v3;
}

+ (id)mapErrorsWithBlock:(id)block
{
  v3 = [[NSMapObservationTransformer alloc] initWithBlock:block tag:2];

  return v3;
}

@end