@interface SHShazamKitUIServiceConnectionProvider
- (id)shazamKitUIServiceConnection;
@end

@implementation SHShazamKitUIServiceConnectionProvider

- (id)shazamKitUIServiceConnection
{
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.shazamd.ui" options:4096];
  v3 = SHShazamKitUIServiceInterface();
  [v2 setRemoteObjectInterface:v3];

  return v2;
}

@end