@interface NSMutableURLRequest(AppleMediaServices_Swift)
- (void)ams_addIssuingProcessHeader;
- (void)ams_addRequestingProcessWithClient:()AppleMediaServices_Swift;
- (void)ams_addUserAgentHeaderFromClient:()AppleMediaServices_Swift;
@end

@implementation NSMutableURLRequest(AppleMediaServices_Swift)

- (void)ams_addUserAgentHeaderFromClient:()AppleMediaServices_Swift
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[AMSProcessInfo currentProcess];
  }

  v10 = v4;
  bundleIdentifier = [v4 bundleIdentifier];
  v6 = bundleIdentifier;
  if (bundleIdentifier)
  {
    processName = bundleIdentifier;
  }

  else
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
  }

  if ([processName length])
  {
    v9 = [AMSUserAgent userAgentForProcessInfo:v10];
    if (v9)
    {
      [self setValue:v9 forHTTPHeaderField:@"User-Agent"];
    }
  }
}

- (void)ams_addRequestingProcessWithClient:()AppleMediaServices_Swift
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    bundleIdentifier = [v5 bundleIdentifier];
    [self setValue:bundleIdentifier forHTTPHeaderField:@"X-Apple-Requesting-Process"];
  }
}

- (void)ams_addIssuingProcessHeader
{
  if (os_variant_has_internal_content())
  {
    v3 = +[AMSProcessInfo currentProcess];
    bundleIdentifier = [v3 bundleIdentifier];
    [self setValue:bundleIdentifier forHTTPHeaderField:@"X-Apple-Issuing-Process"];
  }
}

@end