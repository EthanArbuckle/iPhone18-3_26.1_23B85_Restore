@interface WKNavigationAction(SafariServicesExtras)
- (uint64_t)_wk_shouldAskAboutInsecureFormSubmission;
@end

@implementation WKNavigationAction(SafariServicesExtras)

- (uint64_t)_wk_shouldAskAboutInsecureFormSubmission
{
  if ([self navigationType] != 1)
  {
    return 0;
  }

  request = [self request];
  hTTPMethod = [request HTTPMethod];
  v4 = [hTTPMethod isEqualToString:@"GET"];

  if (v4)
  {
    return 0;
  }

  request2 = [self request];
  v7 = [request2 URL];
  scheme = [v7 scheme];
  v9 = [scheme isEqualToString:@"http"];

  return v9;
}

@end