@interface Agent
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)fetchAllSharedActivityWithReplyHandler:(id)a3;
- (void)getRemoteContentForLayerContextWithId:(int64_t)a3 style:(id)a4 tag:(id)a5 reply:(id)a6;
- (void)removeAllActivityWithReplyHandler:(id)a3;
- (void)requestAuthorizationFor:(int64_t)a3 :(id)a4;
- (void)requestAuthorizationWithRecordIdentifier:(id)a3 replyHandler:(id)a4;
- (void)requestInternalAuthorizationForMember:(int64_t)a3 replyHandler:(id)a4;
- (void)resetAuthorizationWithRecordIdentifier:(id)a3 replyHandler:(id)a4;
- (void)revokeAuthorization:(id)a3;
- (void)revokeInternalAuthorizationWithReplyHandler:(id)a3;
- (void)updateActivityWithReplyHandler:(id)a3;
@end

@implementation Agent

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1000289AC(v7);

  return v9 & 1;
}

- (void)requestAuthorizationFor:(int64_t)a3 :(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = objc_opt_self();
  v9 = self;
  v10 = [v8 currentConnection];
  sub_1000399B4(a3, sub_10002B874, v7, v9, v10);
}

- (void)revokeAuthorization:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = objc_opt_self();
  v7 = self;
  v8 = [v6 currentConnection];
  v9 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager;
  v10 = v7;

  sub_100008914(v8, v7 + v9, v10, sub_10002B874, v5);
}

- (void)getRemoteContentForLayerContextWithId:(int64_t)a3 style:(id)a4 tag:(id)a5 reply:(id)a6
{
  v10 = _Block_copy(a6);
  _Block_copy(v10);
  v11 = a4;
  v12 = a5;
  v13 = self;
  sub_10002A0E0(a3, v11, v12, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)requestAuthorizationWithRecordIdentifier:(id)a3 replyHandler:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  (*(v7 + 16))(v10, v12, v6);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = self;
  (*(v7 + 32))(v16 + v15, v10, v6);
  v17 = (v16 + ((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v17 = sub_10002B8A8;
  v17[1] = v14;
  v18 = self;

  sub_10003A81C(sub_10002851C, v16);

  (*(v7 + 8))(v12, v6);
}

- (void)resetAuthorizationWithRecordIdentifier:(id)a3 replyHandler:(id)a4
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager;
  v14 = self;
  sub_10000A4E4(v10, (&self->super.isa + v13), v14, sub_10002B8A8, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)requestInternalAuthorizationForMember:(int64_t)a3 replyHandler:(id)a4
{
  v5 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v5;
  v6 = self;
  v7 = FamilyControlsMember.init(rawValue:)();
  if (v8)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v9 = v7;
    v10 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager;

    sub_10000C57C(v9, v6 + v10, sub_10002B8A8);
  }
}

- (void)revokeInternalAuthorizationWithReplyHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager;
  v7 = self;
  sub_10000CEC0((&self->super.isa + v6), v7, sub_10002B8A8, v5);
}

- (void)fetchAllSharedActivityWithReplyHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1000276A8(sub_10002B8A8, v5);
}

- (void)updateActivityWithReplyHandler:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  if (qword_10006B7F0 != -1)
  {
    swift_once();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = sub_10002B8A8;
  *(v5 + 24) = v4;

  sub_100044FEC(sub_1000282D0, v5);
}

- (void)removeAllActivityWithReplyHandler:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  if (qword_10006B7F0 != -1)
  {
    swift_once();
  }

  v5 = swift_allocObject();
  *(v5 + 16) = sub_100028290;
  *(v5 + 24) = v4;

  sub_1000457E0(sub_10002B87C, v5);
}

@end