@interface SLYahooWebAuthController
- (id)_webClient;
@end

@implementation SLYahooWebAuthController

- (id)_webClient
{
  v2 = objc_alloc_init(SLYahooWebClient);

  return v2;
}

@end