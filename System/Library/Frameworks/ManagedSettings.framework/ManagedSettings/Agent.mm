@interface Agent
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC20ManagedSettingsAgent5Agent)init;
- (void)clearAllSettingsForRecordIdentifier:(id)identifier storeContainer:(id)container storeName:(id)name replyHandler:(id)handler;
- (void)clearEffectiveSubscription:(BOOL)subscription;
- (void)deleteStores:(id)stores recordIdentifier:(id)identifier storeContainer:(id)container replyHandler:(id)handler;
- (void)handleAction:(int64_t)action categoryIdentifier:(id)identifier replyHandler:(id)handler;
- (void)storeNamesForRecordIdentifier:(id)identifier storeContainer:(id)container replyHandler:(id)handler;
- (void)subscribeToEffectiveChangesForGroups:(id)groups objC:(BOOL)c;
- (void)updateStoreWithNewSettings:(id)settings removedSettings:(id)removedSettings newProperties:(id)properties fullReplacement:(BOOL)replacement recordIdentifier:(id)identifier storeContainer:(id)container storeName:(id)name replyHandler:(id)self0;
@end

@implementation Agent

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100001938(connectionCopy);

  return v9 & 1;
}

- (void)subscribeToEffectiveChangesForGroups:(id)groups objC:(BOOL)c
{
  groupsCopy = groups;
  selfCopy = self;
  sub_1000021C8(groupsCopy, c);
}

- (_TtC20ManagedSettingsAgent5Agent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)clearAllSettingsForRecordIdentifier:(id)identifier storeContainer:(id)container storeName:(id)name replyHandler:(id)handler
{
  v9 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  v13 = _Block_copy(handler);
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  _Block_copy(v13);
  selfCopy = self;
  sub_10002D270(v12, v16, v18, v19, v21, selfCopy, v13);
  _Block_release(v13);
  _Block_release(v13);

  sub_100008630(v12, &unk_10007B400, &unk_100066D80);
}

- (void)deleteStores:(id)stores recordIdentifier:(id)identifier storeContainer:(id)container replyHandler:(id)handler
{
  v10 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  }

  else
  {
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;
  _Block_copy(v14);
  storesCopy = stores;
  selfCopy = self;
  sub_10002DB84(storesCopy, v13, v17, v19, selfCopy, v14);
  _Block_release(v14);
  _Block_release(v14);

  sub_100008630(v13, &unk_10007B400, &unk_100066D80);
}

- (void)updateStoreWithNewSettings:(id)settings removedSettings:(id)removedSettings newProperties:(id)properties fullReplacement:(BOOL)replacement recordIdentifier:(id)identifier storeContainer:(id)container storeName:(id)name replyHandler:(id)self0
{
  replacementCopy = replacement;
  v15 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v32 - v17;
  v19 = _Block_copy(handler);
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  }

  else
  {
    v21 = type metadata accessor for UUID();
    (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;
  _Block_copy(v19);
  settingsCopy = settings;
  removedSettingsCopy = removedSettings;
  propertiesCopy = properties;
  selfCopy = self;
  sub_10002EF7C(settingsCopy, removedSettingsCopy, propertiesCopy, replacementCopy, v18, v22, v24, v25, v27, selfCopy, v19);
  _Block_release(v19);
  _Block_release(v19);

  sub_100008630(v18, &unk_10007B400, &unk_100066D80);
}

- (void)storeNamesForRecordIdentifier:(id)identifier storeContainer:(id)container replyHandler:(id)handler
{
  v8 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = type metadata accessor for UUID();
    (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  }

  else
  {
    v14 = type metadata accessor for UUID();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;
  _Block_copy(v12);
  selfCopy = self;
  sub_10002F68C(v11, v15, v17, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);

  sub_100008630(v11, &unk_10007B400, &unk_100066D80);
}

- (void)handleAction:(int64_t)action categoryIdentifier:(id)identifier replyHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  selfCopy = self;
  sub_1000306D8(action, v8, v10, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)clearEffectiveSubscription:(BOOL)subscription
{
  v5 = objc_opt_self();
  selfCopy = self;
  currentConnection = [v5 currentConnection];
  if (currentConnection)
  {
    v7 = *(&selfCopy->super.isa + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_publisherCenter);
    v8 = currentConnection;
    sub_100009A5C([currentConnection processIdentifier], subscription);
  }
}

@end