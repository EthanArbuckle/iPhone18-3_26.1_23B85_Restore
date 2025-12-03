@interface KeychainWriteFailedEvent
- (BOOL)canCreatePayload;
- (NSString)errorDomain;
- (void)setErrorDomain:(id)domain;
@end

@implementation KeychainWriteFailedEvent

- (NSString)errorDomain
{
  sub_1001753A0();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setErrorDomain:(id)domain
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  sub_10017543C(v4, v6);
}

- (BOOL)canCreatePayload
{
  selfCopy = self;
  v3 = sub_10017575C();

  return v3;
}

@end