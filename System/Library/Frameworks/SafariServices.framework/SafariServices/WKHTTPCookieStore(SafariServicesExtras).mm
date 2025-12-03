@interface WKHTTPCookieStore(SafariServicesExtras)
- (void)sf_applySafariCookieStoragePolicy;
@end

@implementation WKHTTPCookieStore(SafariServicesExtras)

- (void)sf_applySafariCookieStoragePolicy
{
  mEMORY[0x1E695AC00] = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
  [mEMORY[0x1E695AC00] webui_applySafariCookieAcceptPolicy];
  [self _setCookieAcceptPolicy:objc_msgSend(mEMORY[0x1E695AC00] completionHandler:{"cookieAcceptPolicy"), &__block_literal_global_30}];
}

@end