@interface RAPWebBundleConfiguration
- (id)debugOverrideServerURL;
- (id)entryPointUrl;
@end

@implementation RAPWebBundleConfiguration

- (id)debugOverrideServerURL
{
  v2 = GEOConfigGetString();
  if ([v2 length])
  {
    v3 = [NSURL URLWithString:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)entryPointUrl
{
  entryPointUrlBase = [(WebBundleConfiguration *)self entryPointUrlBase];
  v3 = [entryPointUrlBase URLByAppendingPathComponent:@"index.html"];

  return v3;
}

@end