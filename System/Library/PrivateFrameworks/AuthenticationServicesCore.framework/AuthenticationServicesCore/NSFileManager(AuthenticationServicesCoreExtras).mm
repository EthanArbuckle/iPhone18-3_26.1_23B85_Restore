@interface NSFileManager(AuthenticationServicesCoreExtras)
- (id)as_authenticationServicesManagedConfigurationURL;
@end

@implementation NSFileManager(AuthenticationServicesCoreExtras)

- (id)as_authenticationServicesManagedConfigurationURL
{
  v1 = [a1 safari_mobileSafariContainerDirectoryURL];
  v2 = [v1 URLByAppendingPathComponent:@"Library/Safari"];

  v3 = [v2 URLByAppendingPathComponent:@"AuthenticationServicesManagedConfiguration.plist"];

  return v3;
}

@end