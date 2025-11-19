@interface EKMapSearchCompletionResolver
+ (id)resolveMapSearchCompletion:(id)a3 withCompletionHander:(id)a4;
@end

@implementation EKMapSearchCompletionResolver

+ (id)resolveMapSearchCompletion:(id)a3 withCompletionHander:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[EKMapSearchCompletionResolverRequest alloc] initWithMapSearchCompletion:v6 completionHandler:v5];

  [(EKMapSearchCompletionResolverRequest *)v7 beginResolution];

  return v7;
}

@end