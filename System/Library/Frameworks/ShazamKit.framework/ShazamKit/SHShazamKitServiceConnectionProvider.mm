@interface SHShazamKitServiceConnectionProvider
- (id)shazamKitServiceConnection;
@end

@implementation SHShazamKitServiceConnectionProvider

- (id)shazamKitServiceConnection
{
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.shazamd" options:4096];
  v3 = SHShazamKitServiceInterface();
  [v2 setRemoteObjectInterface:v3];

  v4 = SHShazamKitClientInterface();
  [v2 setExportedInterface:v4];

  return v2;
}

@end