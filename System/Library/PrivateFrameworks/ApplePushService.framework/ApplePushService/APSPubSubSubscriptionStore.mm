@interface APSPubSubSubscriptionStore
- (APSPubSubSubscriptionStore)init;
- (APSPubSubSubscriptionStore)initWithMessageStore:(id)store;
- (BOOL)deleteSubscription:(id)subscription;
- (BOOL)saveSubscription:(id)subscription inMemoryOnly:(BOOL)only;
- (id)allSubscriptionsForEnvironment:(id)environment userName:(id)name;
- (id)allSubscriptionsForTopic:(id)topic environment:(id)environment userName:(id)name;
- (id)databaseSubscriptionsForEnvironment:(id)environment userName:(id)name;
- (id)inMemorySubscriptionsForEnvironment:(id)environment userName:(id)name;
- (id)lookupSubscriptionForChannelID:(id)d pushTopic:(id)topic environment:(id)environment userName:(id)name;
- (void)updateChannel:(id)channel;
@end

@implementation APSPubSubSubscriptionStore

- (APSPubSubSubscriptionStore)initWithMessageStore:(id)store
{
  storeCopy = store;
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
  *(&self->super.isa + OBJC_IVAR___APSPubSubSubscriptionStore_messageStore) = storeCopy;
  v7.receiver = self;
  v7.super_class = type metadata accessor for PubSubSubscriptionStore();
  return [(APSPubSubSubscriptionStore *)&v7 init];
}

- (BOOL)saveSubscription:(id)subscription inMemoryOnly:(BOOL)only
{
  subscriptionCopy = subscription;
  selfCopy = self;
  v8 = sub_1000DA738(subscriptionCopy, only);

  return v8 & 1;
}

- (BOOL)deleteSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  selfCopy = self;
  LOBYTE(self) = sub_1000DAB18(subscriptionCopy);

  return self & 1;
}

- (id)allSubscriptionsForTopic:(id)topic environment:(id)environment userName:(id)name
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  selfCopy = self;
  sub_1000DADC4(v6, v8, v9, v11, v12, v14);

  sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
  v16.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v16.super.isa;
}

- (id)allSubscriptionsForEnvironment:(id)environment userName:(id)name
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  sub_1000DB448(v5, v7, v8, v10);

  sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
  v12.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v12.super.isa;
}

- (id)inMemorySubscriptionsForEnvironment:(id)environment userName:(id)name
{
  v4 = *((swift_isaMask & self->super.isa) + 0x68);
  selfCopy = self;
  v6 = v4();
  sub_1000DD8A8(v6);

  sub_1000DDFA8(0, &qword_1001BD380, PKPublicChannel_ptr);
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (id)databaseSubscriptionsForEnvironment:(id)environment userName:(id)name
{
  v6 = *(&self->super.isa + OBJC_IVAR___APSPubSubSubscriptionStore_messageStore);
  selfCopy = self;
  result = [v6 allRegisteredChannelsForEnvironment:environment userName:name];
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

- (id)lookupSubscriptionForChannelID:(id)d pushTopic:(id)topic environment:(id)environment userName:(id)name
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  selfCopy = self;
  sub_1000DBB78(v7, v9, v10, v12, v13, v15, v16, v18);
  v21 = v20;

  return v21;
}

- (void)updateChannel:(id)channel
{
  channelCopy = channel;
  selfCopy = self;
  sub_1000DC0F4(channelCopy);
}

- (APSPubSubSubscriptionStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end