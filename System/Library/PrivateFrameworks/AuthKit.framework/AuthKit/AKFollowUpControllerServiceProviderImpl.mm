@interface AKFollowUpControllerServiceProviderImpl
- (id)serviceControllerForContext:(id)a3;
@end

@implementation AKFollowUpControllerServiceProviderImpl

- (id)serviceControllerForContext:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [AKFollowUpRequestProvider alloc];
  v7 = [(AKURLRequestProviderImpl *)v3 initWithContext:location[0] urlBagKey:AKURLBagKeyFetchFollowUps];
  v4 = [AKServiceControllerImpl alloc];
  v6 = [(AKServiceControllerImpl *)v4 initWithRequestProvider:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end