@interface WKNavigationAction(SafariServicesExtras)
- (uint64_t)_wk_shouldAskAboutInsecureFormSubmission;
@end

@implementation WKNavigationAction(SafariServicesExtras)

- (uint64_t)_wk_shouldAskAboutInsecureFormSubmission
{
  if ([a1 navigationType] != 1)
  {
    return 0;
  }

  v2 = [a1 request];
  v3 = [v2 HTTPMethod];
  v4 = [v3 isEqualToString:@"GET"];

  if (v4)
  {
    return 0;
  }

  v6 = [a1 request];
  v7 = [v6 URL];
  v8 = [v7 scheme];
  v9 = [v8 isEqualToString:@"http"];

  return v9;
}

@end