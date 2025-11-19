@interface NSObservationTransformer
+ (id)mapErrorsWithBlock:(id)a3;
+ (id)mapValuesWithBlock:(id)a3;
@end

@implementation NSObservationTransformer

+ (id)mapValuesWithBlock:(id)a3
{
  v3 = [[NSMapObservationTransformer alloc] initWithBlock:a3 tag:1];

  return v3;
}

+ (id)mapErrorsWithBlock:(id)a3
{
  v3 = [[NSMapObservationTransformer alloc] initWithBlock:a3 tag:2];

  return v3;
}

@end