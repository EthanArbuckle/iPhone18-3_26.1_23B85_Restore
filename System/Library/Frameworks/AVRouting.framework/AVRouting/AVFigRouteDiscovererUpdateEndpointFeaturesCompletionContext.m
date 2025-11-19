@interface AVFigRouteDiscovererUpdateEndpointFeaturesCompletionContext
- (AVFigRouteDiscovererUpdateEndpointFeaturesCompletionContext)initWithCompletionHandler:(id)a3;
- (void)dealloc;
@end

@implementation AVFigRouteDiscovererUpdateEndpointFeaturesCompletionContext

- (AVFigRouteDiscovererUpdateEndpointFeaturesCompletionContext)initWithCompletionHandler:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVFigRouteDiscovererUpdateEndpointFeaturesCompletionContext;
  v4 = [(AVFigRouteDiscovererUpdateEndpointFeaturesCompletionContext *)&v6 init];
  v4->_completionHandler = [a3 copy];
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVFigRouteDiscovererUpdateEndpointFeaturesCompletionContext;
  [(AVFigRouteDiscovererUpdateEndpointFeaturesCompletionContext *)&v3 dealloc];
}

@end