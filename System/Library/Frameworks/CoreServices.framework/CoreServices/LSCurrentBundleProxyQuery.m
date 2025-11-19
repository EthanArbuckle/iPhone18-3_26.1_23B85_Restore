@interface LSCurrentBundleProxyQuery
@end

@implementation LSCurrentBundleProxyQuery

void __53___LSCurrentBundleProxyQuery_currentBundleProxyQuery__block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(*(a1 + 32)) _init];
  v2 = +[_LSCurrentBundleProxyQuery currentBundleProxyQuery]::result;
  +[_LSCurrentBundleProxyQuery currentBundleProxyQuery]::result = v1;
}

@end