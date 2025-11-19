@interface AXAssetAndDataClient
@end

@implementation AXAssetAndDataClient

void __AXAssetAndDataClient_block_invoke(id a1)
{
  v1 = [AXUIClient alloc];
  v5 = [NSNumber numberWithInt:getpid()];
  v2 = [NSString stringWithFormat:@"AXAssetClient-voice-assets-%@", v5];
  v3 = [v1 initWithIdentifier:v2 serviceBundleName:@"AXAssetAndDataServer"];
  v4 = AXAssetAndDataClient_Client;
  AXAssetAndDataClient_Client = v3;
}

@end