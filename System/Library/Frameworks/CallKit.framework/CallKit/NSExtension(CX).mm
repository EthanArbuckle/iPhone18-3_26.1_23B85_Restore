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
  _plugIn = [self _plugIn];
  localizedName = [_plugIn localizedName];

  return localizedName;
}

- (id)localizedContainingAppName
{
  _plugIn = [self _plugIn];
  localizedContainingName = [_plugIn localizedContainingName];

  return localizedContainingName;
}

- (id)containingAppURL
{
  _plugIn = [self _plugIn];
  containingUrl = [_plugIn containingUrl];

  return containingUrl;
}

- (id)plugInKitProxy
{
  v1 = MEMORY[0x1E6963678];
  _plugIn = [self _plugIn];
  uuid = [_plugIn uuid];
  v4 = [v1 pluginKitProxyForUUID:uuid];

  return v4;
}

- (BOOL)isEnabledViaPlugInKit
{
  _plugIn = [self _plugIn];
  v2 = [_plugIn userElection] == 1;

  return v2;
}

@end