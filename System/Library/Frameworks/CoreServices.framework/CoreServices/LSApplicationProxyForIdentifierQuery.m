@interface LSApplicationProxyForIdentifierQuery
@end

@implementation LSApplicationProxyForIdentifierQuery

void __71___LSApplicationProxyForIdentifierQuery_alwaysAllowedBundleIdentifiers__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1EEF8F1A8];
  v1 = +[_LSApplicationProxyForIdentifierQuery alwaysAllowedBundleIdentifiers]::result;
  +[_LSApplicationProxyForIdentifierQuery alwaysAllowedBundleIdentifiers]::result = v0;
}

@end