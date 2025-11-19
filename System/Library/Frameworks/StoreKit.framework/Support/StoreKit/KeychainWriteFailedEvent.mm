@interface KeychainWriteFailedEvent
- (BOOL)canCreatePayload;
- (NSString)errorDomain;
- (void)setErrorDomain:(id)a3;
@end

@implementation KeychainWriteFailedEvent

- (NSString)errorDomain
{
  sub_1001753A0();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setErrorDomain:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_10017543C(v4, v6);
}

- (BOOL)canCreatePayload
{
  v2 = self;
  v3 = sub_10017575C();

  return v3;
}

@end