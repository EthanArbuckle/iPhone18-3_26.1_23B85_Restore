@interface SKPaymentQueueClient
- (NSNumber)storeExternalVersion;
- (NSNumber)storeItemIdentifier;
- (SKPaymentQueueClientDelegate)delegate;
- (id)copyWithZone:(void *)zone;
- (id)plist;
- (void)setDelegate:(id)delegate;
- (void)setStoreExternalVersion:(id)version;
- (void)setStoreItemIdentifier:(id)identifier;
@end

@implementation SKPaymentQueueClient

- (SKPaymentQueueClientDelegate)delegate
{
  v2 = SKPaymentQueueClient.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  SKPaymentQueueClient.delegate.setter();
}

- (NSNumber)storeExternalVersion
{
  v2 = SKPaymentQueueClient.storeExternalVersion.getter();

  return v2;
}

- (void)setStoreExternalVersion:(id)version
{
  versionCopy = version;
  selfCopy = self;
  SKPaymentQueueClient.storeExternalVersion.setter(version);
}

- (NSNumber)storeItemIdentifier
{
  v2 = SKPaymentQueueClient.storeItemIdentifier.getter();

  return v2;
}

- (void)setStoreItemIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  SKPaymentQueueClient.storeItemIdentifier.setter(identifier);
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  SKPaymentQueueClient.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_1B256EB3C();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (id)plist
{
  selfCopy = self;
  sub_1B2495688();

  v3 = sub_1B256D86C();

  return v3;
}

@end