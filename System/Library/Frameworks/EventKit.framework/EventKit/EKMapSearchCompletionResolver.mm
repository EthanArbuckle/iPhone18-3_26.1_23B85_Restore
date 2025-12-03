@interface EKMapSearchCompletionResolver
+ (id)resolveMapSearchCompletion:(id)completion withCompletionHander:(id)hander;
@end

@implementation EKMapSearchCompletionResolver

+ (id)resolveMapSearchCompletion:(id)completion withCompletionHander:(id)hander
{
  handerCopy = hander;
  completionCopy = completion;
  v7 = [[EKMapSearchCompletionResolverRequest alloc] initWithMapSearchCompletion:completionCopy completionHandler:handerCopy];

  [(EKMapSearchCompletionResolverRequest *)v7 beginResolution];

  return v7;
}

@end