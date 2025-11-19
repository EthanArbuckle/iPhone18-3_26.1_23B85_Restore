@interface NSExtension(CX)
- (BOOL)isEnabledViaPlugInKit;
- (id)containingAppURL;
- (id)localizedContainingAppName;
- (id)localizedName;
- (id)plugInKitProxy;
@end

@implementation NSExtension(CX)

- (id)localizedName
{
  v1 = [a1 _plugIn];
  v2 = [v1 localizedName];

  return v2;
}

- (id)localizedContainingAppName
{
  v1 = [a1 _plugIn];
  v2 = [v1 localizedContainingName];

  return v2;
}

- (id)containingAppURL
{
  v1 = [a1 _plugIn];
  v2 = [v1 containingUrl];

  return v2;
}

- (id)plugInKitProxy
{
  v1 = MEMORY[0x1E6963678];
  v2 = [a1 _plugIn];
  v3 = [v2 uuid];
  v4 = [v1 pluginKitProxyForUUID:v3];

  return v4;
}

- (BOOL)isEnabledViaPlugInKit
{
  v1 = [a1 _plugIn];
  v2 = [v1 userElection] == 1;

  return v2;
}

@end