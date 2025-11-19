@interface WBSSavedAccountStore
@end

@implementation WBSSavedAccountStore

uint64_t __62__WBSSavedAccountStore_WebsiteNameExtras__websiteNameProvider__block_invoke()
{
  v0 = [[_ASWebsiteNameProvider alloc] initForPasswordManager];
  v1 = websiteNameProvider_websiteNameProvider;
  websiteNameProvider_websiteNameProvider = v0;

  v2 = websiteNameProvider_websiteNameProvider;

  return [v2 beginLoadingBuiltInAndRemotelyUpdatableWebsiteNames];
}

@end