@interface SKPaymentQueueClient
- (NSNumber)storeExternalVersion;
- (NSNumber)storeItemIdentifier;
- (SKPaymentQueueClientDelegate)delegate;
- (id)copyWithZone:(void *)a3;
- (id)plist;
- (void)setDelegate:(id)a3;
- (void)setStoreExternalVersion:(id)a3;
- (void)setStoreItemIdentifier:(id)a3;
@end

@implementation SKPaymentQueueClient

- (SKPaymentQueueClientDelegate)delegate
{
  v2 = SKPaymentQueueClient.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  SKPaymentQueueClient.delegate.setter();
}

- (NSNumber)storeExternalVersion
{
  v2 = SKPaymentQueueClient.storeExternalVersion.getter();

  return v2;
}

- (void)setStoreExternalVersion:(id)a3
{
  v5 = a3;
  v6 = self;
  SKPaymentQueueClient.storeExternalVersion.setter(a3);
}

- (NSNumber)storeItemIdentifier
{
  v2 = SKPaymentQueueClient.storeItemIdentifier.getter();

  return v2;
}

- (void)setStoreItemIdentifier:(id)a3
{
  v5 = a3;
  v6 = self;
  SKPaymentQueueClient.storeItemIdentifier.setter(a3);
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  SKPaymentQueueClient.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_1B256EB3C();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (id)plist
{
  v2 = self;
  sub_1B2495688();

  v3 = sub_1B256D86C();

  return v3;
}

@end