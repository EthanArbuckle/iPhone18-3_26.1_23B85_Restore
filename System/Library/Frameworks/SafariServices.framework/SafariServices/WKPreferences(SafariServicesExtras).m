@interface WKPreferences(SafariServicesExtras)
- (void)sf_applySafariStorageBlockingPolicy;
@end

@implementation WKPreferences(SafariServicesExtras)

- (void)sf_applySafariStorageBlockingPolicy
{
  v4 = [MEMORY[0x1E695AC00] sharedHTTPCookieStorage];
  v2 = [v4 cookieAcceptPolicy] - 1;
  if (v2 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = qword_1D47DE720[v2];
  }

  [a1 _setStorageBlockingPolicy:v3];
}

@end