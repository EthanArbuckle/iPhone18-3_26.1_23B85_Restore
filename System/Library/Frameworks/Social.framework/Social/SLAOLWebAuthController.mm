@interface SLAOLWebAuthController
- (id)_webClient;
@end

@implementation SLAOLWebAuthController

- (id)_webClient
{
  v2 = objc_alloc_init(SLAOLWebClient);

  return v2;
}

@end