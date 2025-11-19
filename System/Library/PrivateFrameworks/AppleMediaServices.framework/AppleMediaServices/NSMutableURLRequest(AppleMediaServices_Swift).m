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
  v5 = [v4 bundleIdentifier];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [MEMORY[0x1E696AE30] processInfo];
    v7 = [v8 processName];
  }

  if ([v7 length])
  {
    v9 = [AMSUserAgent userAgentForProcessInfo:v10];
    if (v9)
    {
      [a1 setValue:v9 forHTTPHeaderField:@"User-Agent"];
    }
  }
}

- (void)ams_addRequestingProcessWithClient:()AppleMediaServices_Swift
{
  v5 = a3;
  if (os_variant_has_internal_content())
  {
    v4 = [v5 bundleIdentifier];
    [a1 setValue:v4 forHTTPHeaderField:@"X-Apple-Requesting-Process"];
  }
}

- (void)ams_addIssuingProcessHeader
{
  if (os_variant_has_internal_content())
  {
    v3 = +[AMSProcessInfo currentProcess];
    v2 = [v3 bundleIdentifier];
    [a1 setValue:v2 forHTTPHeaderField:@"X-Apple-Issuing-Process"];
  }
}

@end