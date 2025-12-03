@interface ALXPCClient
- (void)onData:(id)data;
@end

@implementation ALXPCClient

- (void)onData:(id)data
{
  dataCopy = data;

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  ALXPCClient.onData(_:)(v4, v6);
  outlined consume of Data._Representation(v4, v6);
}

@end