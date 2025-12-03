@interface UpdatesManager_Swift
+ (_TtC9appstored20UpdatesManager_Swift)shared;
- (void)autoUpdateEnabled:(id)enabled;
- (void)confirmAgentRequestedUpdateAll:(id)all;
- (void)dropAllUpdatesIncludingVPP:(BOOL)p completionHandler:(id)handler;
- (void)getManagedUpdatesWithRequestToken:(XPCRequestToken *)token replyHandler:(id)handler;
- (void)getUpdateMetadataForBundleID:(NSString *)d replyHandler:(id)handler;
- (void)getUpdatesWithRequestToken:(XPCRequestToken *)token replyHandler:(id)handler;
- (void)handleAccountChangeNotification;
- (void)isTVProviderApp:(unint64_t)app withReplyHandler:(id)handler;
- (void)noteUpdatesStateChanged:(id)changed logKey:(id)key;
- (void)refreshUpdateCountWithRequestToken:(XPCRequestToken *)token replyHandler:(id)handler;
- (void)refreshUpdateForApp:(int64_t)app token:(XPCRequestToken *)token replyHandler:(id)handler;
- (void)reloadApplicationBadgeWithReason:(id)reason;
- (void)reloadFromServerInBackgroundWithToken:(XPCRequestToken *)token completionBlock:(id)block;
- (void)reloadFromServerWithRequestToken:(XPCRequestToken *)token replyHandler:(id)handler;
- (void)reloadManagedUpdatesWithRequestToken:(XPCRequestToken *)token replyHandler:(id)handler;
- (void)setAutoUpdateEnabled:(BOOL)enabled withReplyHandler:(id)handler;
- (void)setupFollowingMigration;
- (void)showPendingUpdatesBadgeWithRequestToken:(id)token;
- (void)updateAllWithOrder:(NSArray *)order requestToken:(XPCRequestToken *)token replyHandler:(id)handler;
- (void)verifyAllPendingUpdatesWithCompletionHandler:(id)handler;
- (void)verifyPendingUpdates:(id)updates bag:(id)bag;
- (void)verifyUpdatesFollowingExternalAppInstall:(id)install;
@end

@implementation UpdatesManager_Swift

+ (_TtC9appstored20UpdatesManager_Swift)shared
{
  if (qword_10059B510 != -1)
  {
    swift_once();
  }

  return v2;
}

- (void)autoUpdateEnabled:(id)enabled
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(enabled);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1004376B0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004376B8;
  v12[5] = v11;

  sub_1001BD9B4(0, 0, v7, &unk_1004376C0, v12);
}

- (void)confirmAgentRequestedUpdateAll:(id)all
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(all);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100437690;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100437698;
  v12[5] = v11;

  sub_1001BD9B4(0, 0, v7, &unk_1004376A0, v12);
}

- (void)dropAllUpdatesIncludingVPP:(BOOL)p completionHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = p;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100437670;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100437678;
  v14[5] = v13;

  sub_1001BD9B4(0, 0, v9, &unk_100437680, v14);
}

- (void)isTVProviderApp:(unint64_t)app withReplyHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = app;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100437630;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100437638;
  v14[5] = v13;

  sub_1001BD9B4(0, 0, v9, &unk_100437640, v14);
}

- (void)getManagedUpdatesWithRequestToken:(XPCRequestToken *)token replyHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = token;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100437610;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100437618;
  v14[5] = v13;
  tokenCopy = token;

  sub_1001BD9B4(0, 0, v9, &unk_100437620, v14);
}

- (void)noteUpdatesStateChanged:(id)changed logKey:(id)key
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  keyCopy = key;

  sub_1001214F8(v5, v7, key);
}

- (void)refreshUpdateCountWithRequestToken:(XPCRequestToken *)token replyHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = token;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1004375A8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1004375B0;
  v14[5] = v13;
  tokenCopy = token;

  sub_1001BD9B4(0, 0, v9, &unk_1004375B8, v14);
}

- (void)refreshUpdateForApp:(int64_t)app token:(XPCRequestToken *)token replyHandler:(id)handler
{
  v9 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = app;
  v13[3] = token;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100437578;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100437580;
  v16[5] = v15;
  tokenCopy = token;

  sub_1001BD9B4(0, 0, v11, &unk_100437588, v16);
}

- (void)reloadApplicationBadgeWithReason:(id)reason
{
  v4 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = v7;
  v11[6] = v9;

  sub_10019F620(0, 0, v6, &unk_100437568, v11);
}

- (void)reloadFromServerWithRequestToken:(XPCRequestToken *)token replyHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = token;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100437548;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100437550;
  v14[5] = v13;
  tokenCopy = token;

  sub_1001BD9B4(0, 0, v9, &unk_100437558, v14);
}

- (void)reloadFromServerInBackgroundWithToken:(XPCRequestToken *)token completionBlock:(id)block
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(block);
  v11 = swift_allocObject();
  v11[2] = token;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100437528;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100437530;
  v14[5] = v13;
  tokenCopy = token;

  sub_1001BD9B4(0, 0, v9, &unk_100437538, v14);
}

- (void)reloadManagedUpdatesWithRequestToken:(XPCRequestToken *)token replyHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = token;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100437508;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100437510;
  v14[5] = v13;
  tokenCopy = token;

  sub_1001BD9B4(0, 0, v9, &unk_100437518, v14);
}

- (void)setAutoUpdateEnabled:(BOOL)enabled withReplyHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = enabled;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1004374D8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1004374E0;
  v14[5] = v13;

  sub_1001BD9B4(0, 0, v9, &unk_1004374E8, v14);
}

- (void)setupFollowingMigration
{

  sub_10012628C();
}

- (void)showPendingUpdatesBadgeWithRequestToken:(id)token
{
  tokenCopy = token;

  sub_100126E08(tokenCopy);
}

- (void)updateAllWithOrder:(NSArray *)order requestToken:(XPCRequestToken *)token replyHandler:(id)handler
{
  v9 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = order;
  v13[3] = token;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1004374B8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1004374C0;
  v16[5] = v15;
  orderCopy = order;
  tokenCopy = token;

  sub_1001BD9B4(0, 0, v11, &unk_1004374C8, v16);
}

- (void)getUpdateMetadataForBundleID:(NSString *)d replyHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100437498;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1004374A0;
  v14[5] = v13;
  dCopy = d;

  sub_1001BD9B4(0, 0, v9, &unk_1004374A8, v14);
}

- (void)getUpdatesWithRequestToken:(XPCRequestToken *)token replyHandler:(id)handler
{
  v7 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = token;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100437478;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100437480;
  v14[5] = v13;
  tokenCopy = token;

  sub_1001BD9B4(0, 0, v9, &unk_100437488, v14);
}

- (void)verifyAllPendingUpdatesWithCompletionHandler:(id)handler
{
  v5 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100437468;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1004366D0;
  v12[5] = v11;

  sub_1001BD9B4(0, 0, v7, &unk_1004344E0, v12);
}

- (void)verifyPendingUpdates:(id)updates bag:(id)bag
{
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  bagCopy = bag;

  sub_10012A7B4(v5, bagCopy);
}

- (void)verifyUpdatesFollowingExternalAppInstall:(id)install
{
  v4 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = self;

  sub_10019F02C(0, 0, v6, &unk_100437458, v9);
}

- (void)handleAccountChangeNotification
{
  v3 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  swift_retain_n();
  sub_100139A4C(0, 0, v5, 0, 0, &unk_100437438, v7);

  sub_100005518(v5, &qword_10059C3E0);
}

@end