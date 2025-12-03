@interface XPCAppRemovalService
+ (void)clearUserDefaultsDomain:(id)domain;
+ (void)removeFileAtPath:(id)path;
- (id)_bridgeDeleteMobileAssets;
- (void)_clearBridgeData;
- (void)_clearNanoPassKitData;
- (void)_clearNanoPreferencesSyncData;
- (void)_clearNanoRegistryData;
- (void)_clearNanoSystemSettingsData;
- (void)_clearPairedSyncData;
- (void)removeAppWithReply:(id)reply;
@end

@implementation XPCAppRemovalService

- (void)removeAppWithReply:(id)reply
{
  replyCopy = reply;
  [(XPCAppRemovalService *)self _clearBridgeData];
  [(XPCAppRemovalService *)self _clearNanoSystemSettingsData];
  [(XPCAppRemovalService *)self _clearNanoPreferencesSyncData];
  [(XPCAppRemovalService *)self _clearPairedSyncData];
  [(XPCAppRemovalService *)self _clearNanoRegistryData];
  [(XPCAppRemovalService *)self _clearAppConduitData];
  [(XPCAppRemovalService *)self _clearNanoTimeKitData];
  _clearNanoPassKitData = [(XPCAppRemovalService *)self _clearNanoPassKitData];
  if (replyCopy)
  {
    _clearNanoPassKitData = replyCopy[2](replyCopy, 0);
  }

  _objc_release_x8(_clearNanoPassKitData);
}

+ (void)clearUserDefaultsDomain:(id)domain
{
  domainCopy = domain;
  v4 = domainCopy;
  if (domainCopy)
  {
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = CFPreferencesCopyKeyList(domainCopy, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v6 = [(__CFArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          CFPreferencesSetValue(*(*(&v11 + 1) + 8 * v9), 0, v4, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(__CFArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    CFPreferencesSynchronize(v4, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v10 = [(__CFArray *)v5 count];
    NSLog(@"Cleared (%lu) values from domain: (%@)", v10, v4, v11);
  }
}

+ (void)removeFileAtPath:(id)path
{
  pathCopy = path;
  if (pathCopy)
  {
    v4 = +[NSFileManager defaultManager];
    v7 = 0;
    v5 = [v4 removeItemAtPath:pathCopy error:&v7];
    v6 = v7;

    if (v5)
    {
      NSLog(@"Removed file at path: (%@)", pathCopy);
    }

    else
    {
      NSLog(@"Failed to remove file at path: (%@) with error: (%@)", pathCopy, v6);
    }
  }
}

- (void)_clearBridgeData
{
  _bridgeDeleteMobileAssets = [(XPCAppRemovalService *)self _bridgeDeleteMobileAssets];
  [objc_opt_class() removeFileAtPath:@"/var/mobile/Library/Caches/BridgeIconCache"];
  v3 = objc_opt_class();

  [v3 clearUserDefaultsDomain:@"com.apple.Bridge"];
}

- (void)_clearNanoSystemSettingsData
{
  v2 = objc_opt_class();

  [v2 clearUserDefaultsDomain:@"com.apple.nanosystemsettings"];
}

- (void)_clearNanoPreferencesSyncData
{
  [objc_opt_class() clearUserDefaultsDomain:@"com.apple.nanoprefsyncd"];
  v2 = objc_opt_class();

  [v2 removeFileAtPath:@"/var/mobile/Library/NanoPreferencesSync"];
}

- (void)_clearPairedSyncData
{
  v2 = objc_opt_class();

  [v2 clearUserDefaultsDomain:@"com.apple.pairedsyncd"];
}

- (void)_clearNanoRegistryData
{
  [objc_opt_class() clearUserDefaultsDomain:@"com.apple.NanoRegistry"];
  [objc_opt_class() clearUserDefaultsDomain:@"com.apple.NanoRegistry.NRRootCommander.volatile"];
  [objc_opt_class() removeFileAtPath:@"/var/mobile/Library/DeviceRegistry"];
  [objc_opt_class() removeFileAtPath:@"/var/mobile/Library/DeviceRegistry.state"];

  [XPCAppRemovalServiceUnixProcessSignaler killProcessNamed:@"nanoregistryd"];
}

- (void)_clearNanoPassKitData
{
  [objc_opt_class() clearUserDefaultsDomain:@"com.apple.nanopassbook"];
  v2 = objc_opt_class();

  [v2 removeFileAtPath:@"/var/mobile/Library/Caches/com.apple.NanoPassKit"];
}

- (id)_bridgeDeleteMobileAssets
{
  v2 = objc_alloc_init(PBBridgeAssetsManager);
  [v2 purgeAllAssetsLocalOnly:1];

  return 0;
}

@end