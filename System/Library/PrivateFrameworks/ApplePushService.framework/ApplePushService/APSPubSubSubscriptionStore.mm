@interface APSPubSubSubscriptionStore
- (APSPubSubSubscriptionStore)init;
- (APSPubSubSubscriptionStore)initWithMessageStore:(id)a3;
- (BOOL)deleteSubscription:(id)a3;
- (BOOL)saveSubscription:(id)a3 inMemoryOnly:(BOOL)a4;
- (id)allSubscriptionsForEnvironment:(id)a3 userName:(id)a4;
- (id)allSubscriptionsForTopic:(id)a3 environment:(id)a4 userName:(id)a5;
- (id)databaseSubscriptionsForEnvironment:(id)a3 userName:(id)a4;
- (id)inMemorySubscriptionsForEnvironment:(id)a3 userName:(id)a4;
- (id)lookupSubscriptionForChannelID:(id)a3 pushTopic:(id)a4 environment:(id)a5 userName:(id)a6;
- (void)updateChannel:(id)a3;
@end

@implementation APSPubSubSubscriptionStore

- (APSPubSubSubscriptionStore)initWithMessageStore:(id)a3
{
  v4 = a3;
  sub_1000D19F8(0);
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1000DDBFC(&_swiftEmptyArrayStorage);
  }

  else
  {
    v5 = &_swiftEmptySetSingleton;
  }

  *(&self->super.isa + OBJC_IVAR___APSPubSubSubscriptionStore_inMemorySubscriptions) = v5;
  *(&self->super.isa + OBJC_IVAR___APSPubSubSubscriptionStore_messageStore) = v4;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PubSubSubscriptionStore();
  return [(APSPubSubSubscriptionStore *)&v7 init];
}

- (BOOL)saveSubscription:(id)a3 inMemoryOnly:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1000DA738(v6, a4);

  return v8 & 1;
}

- (BOOL)deleteSubscription:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1000DAB18(v4);

  return self & 1;
}

- (id)allSubscriptionsForTopic:(id)a3 environment:(id)a4 userName:(id)a5
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = self;
  sub_1000DADC4(v6, v8, v9, v11, v12, v14);

  sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v16.super.isa;
}

- (id)allSubscriptionsForEnvironment:(id)a3 userName:(id)a4
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = self;
  sub_1000DB448(v5, v7, v8, v10);

  sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v12.super.isa;
}

- (id)inMemorySubscriptionsForEnvironment:(id)a3 userName:(id)a4
{
  v4 = *((swift_isaMask & self->super.isa) + 0x68);
  v5 = self;
  v6 = v4();
  sub_1000DD8A8(v6);

  sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (id)databaseSubscriptionsForEnvironment:(id)a3 userName:(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR___APSPubSubSubscriptionStore_messageStore);
  v7 = self;
  result = [v6 allRegisteredChannelsForEnvironment:a3 userName:a4];
  if (result)
  {
    v9 = result;

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)lookupSubscriptionForChannelID:(id)a3 pushTopic:(id)a4 environment:(id)a5 userName:(id)a6
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = self;
  sub_1000DBB78(v7, v9, v10, v12, v13, v15, v16, v18);
  v21 = v20;

  return v21;
}

- (void)updateChannel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000DC0F4(v4);
}

- (APSPubSubSubscriptionStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end