@interface ALXPCClient
- (void)onData:(id)a3;
@end

@implementation ALXPCClient

- (void)onData:(id)a3
{
  v3 = a3;

  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  ALXPCClient.onData(_:)(v4, v6);
  outlined consume of Data._Representation(v4, v6);
}

@end