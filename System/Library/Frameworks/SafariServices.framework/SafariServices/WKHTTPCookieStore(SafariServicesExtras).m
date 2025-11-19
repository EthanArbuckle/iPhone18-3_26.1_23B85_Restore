@interface WKHTTPCookieStore(SafariServicesExtras)
- (void)sf_applySafariCookieStoragePolicy;
@end

@implementation WKHTTPCookieStore(SafariServicesExtras)

- (void)sf_applySafariCookieStoragePolicy
{
  v2 = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
  [v2 webui_applySafariCookieAcceptPolicy];
  [a1 _setCookieAcceptPolicy:objc_msgSend(v2 completionHandler:{"cookieAcceptPolicy"), &__block_literal_global_30}];
}

@end