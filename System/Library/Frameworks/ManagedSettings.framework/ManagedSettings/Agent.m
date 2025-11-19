@interface Agent
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC20ManagedSettingsAgent5Agent)init;
- (void)clearAllSettingsForRecordIdentifier:(id)a3 storeContainer:(id)a4 storeName:(id)a5 replyHandler:(id)a6;
- (void)clearEffectiveSubscription:(BOOL)a3;
- (void)deleteStores:(id)a3 recordIdentifier:(id)a4 storeContainer:(id)a5 replyHandler:(id)a6;
- (void)handleAction:(int64_t)a3 categoryIdentifier:(id)a4 replyHandler:(id)a5;
- (void)storeNamesForRecordIdentifier:(id)a3 storeContainer:(id)a4 replyHandler:(id)a5;
- (void)subscribeToEffectiveChangesForGroups:(id)a3 objC:(BOOL)a4;
- (void)updateStoreWithNewSettings:(id)a3 removedSettings:(id)a4 newProperties:(id)a5 fullReplacement:(BOOL)a6 recordIdentifier:(id)a7 storeContainer:(id)a8 storeName:(id)a9 replyHandler:(id)a10;
@end

@implementation Agent

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100001938(v7);

  return v9 & 1;
}

- (void)subscribeToEffectiveChangesForGroups:(id)a3 objC:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1000021C8(v6, a4);
}

- (_TtC20ManagedSettingsAgent5Agent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)clearAllSettingsForRecordIdentifier:(id)a3 storeContainer:(id)a4 storeName:(id)a5 replyHandler:(id)a6
{
  v9 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v23 - v11;
  v13 = _Block_copy(a6);
  if (a3)
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
  v22 = self;
  sub_10002D270(v12, v16, v18, v19, v21, v22, v13);
  _Block_release(v13);
  _Block_release(v13);

  sub_100008630(v12, &unk_10007B400, &unk_100066D80);
}

- (void)deleteStores:(id)a3 recordIdentifier:(id)a4 storeContainer:(id)a5 replyHandler:(id)a6
{
  v10 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(a6);
  if (a4)
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
  v20 = a3;
  v21 = self;
  sub_10002DB84(v20, v13, v17, v19, v21, v14);
  _Block_release(v14);
  _Block_release(v14);

  sub_100008630(v13, &unk_10007B400, &unk_100066D80);
}

- (void)updateStoreWithNewSettings:(id)a3 removedSettings:(id)a4 newProperties:(id)a5 fullReplacement:(BOOL)a6 recordIdentifier:(id)a7 storeContainer:(id)a8 storeName:(id)a9 replyHandler:(id)a10
{
  v33 = a6;
  v15 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v32 - v17;
  v19 = _Block_copy(a10);
  if (a7)
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
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = self;
  sub_10002EF7C(v28, v29, v30, v33, v18, v22, v24, v25, v27, v31, v19);
  _Block_release(v19);
  _Block_release(v19);

  sub_100008630(v18, &unk_10007B400, &unk_100066D80);
}

- (void)storeNamesForRecordIdentifier:(id)a3 storeContainer:(id)a4 replyHandler:(id)a5
{
  v8 = sub_10000637C(&unk_10007B400, &unk_100066D80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  if (a3)
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
  v18 = self;
  sub_10002F68C(v11, v15, v17, v18, v12);
  _Block_release(v12);
  _Block_release(v12);

  sub_100008630(v11, &unk_10007B400, &unk_100066D80);
}

- (void)handleAction:(int64_t)a3 categoryIdentifier:(id)a4 replyHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = self;
  sub_1000306D8(a3, v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)clearEffectiveSubscription:(BOOL)a3
{
  v5 = objc_opt_self();
  v9 = self;
  v6 = [v5 currentConnection];
  if (v6)
  {
    v7 = *(&v9->super.isa + OBJC_IVAR____TtC20ManagedSettingsAgent5Agent_publisherCenter);
    v8 = v6;
    sub_100009A5C([v6 processIdentifier], a3);
  }
}

@end