@interface NSFileManager(AuthenticationServicesCoreExtras)
- (id)as_authenticationServicesManagedConfigurationURL;
@end

@implementation NSFileManager(AuthenticationServicesCoreExtras)

- (id)as_authenticationServicesManagedConfigurationURL
{
  safari_mobileSafariContainerDirectoryURL = [self safari_mobileSafariContainerDirectoryURL];
  v2 = [safari_mobileSafariContainerDirectoryURL URLByAppendingPathComponent:@"Library/Safari"];

  v3 = [v2 URLByAppendingPathComponent:@"AuthenticationServicesManagedConfiguration.plist"];

  return v3;
}

@end