@interface HODiscoverWebViewCacheValue
+ (id)valueWithWebView:(id)a3;
@end

@implementation HODiscoverWebViewCacheValue

+ (id)valueWithWebView:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HODiscoverWebViewCacheValue);
  [(HODiscoverWebViewCacheValue *)v4 setWebView:v3];

  [(HODiscoverWebViewCacheValue *)v4 setNavigationState:0];

  return v4;
}

@end