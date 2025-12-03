@interface HODiscoverWebViewCacheValue
+ (id)valueWithWebView:(id)view;
@end

@implementation HODiscoverWebViewCacheValue

+ (id)valueWithWebView:(id)view
{
  viewCopy = view;
  v4 = objc_alloc_init(HODiscoverWebViewCacheValue);
  [(HODiscoverWebViewCacheValue *)v4 setWebView:viewCopy];

  [(HODiscoverWebViewCacheValue *)v4 setNavigationState:0];

  return v4;
}

@end