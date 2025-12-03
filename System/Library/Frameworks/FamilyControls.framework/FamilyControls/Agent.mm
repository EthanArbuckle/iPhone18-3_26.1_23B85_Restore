@interface Agent
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)fetchAllSharedActivityWithReplyHandler:(id)handler;
- (void)getRemoteContentForLayerContextWithId:(int64_t)id style:(id)style tag:(id)tag reply:(id)reply;
- (void)removeAllActivityWithReplyHandler:(id)handler;
- (void)requestAuthorizationFor:(int64_t)for :(id)a4;
- (void)requestAuthorizationWithRecordIdentifier:(id)identifier replyHandler:(id)handler;
- (void)requestInternalAuthorizationForMember:(int64_t)member replyHandler:(id)handler;
- (void)resetAuthorizationWithRecordIdentifier:(id)identifier replyHandler:(id)handler;
- (void)revokeAuthorization:(id)authorization;
- (void)revokeInternalAuthorizationWithReplyHandler:(id)handler;
- (void)updateActivityWithReplyHandler:(id)handler;
@end

@implementation Agent

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_1000289AC(connectionCopy);

  return v9 & 1;
}

- (void)requestAuthorizationFor:(int64_t)for :(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = objc_opt_self();
  selfCopy = self;
  currentConnection = [v8 currentConnection];
  sub_1000399B4(for, sub_10002B874, v7, selfCopy, currentConnection);
}

- (void)revokeAuthorization:(id)authorization
{
  v4 = _Block_copy(authorization);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = objc_opt_self();
  selfCopy = self;
  currentConnection = [v6 currentConnection];
  v9 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager;
  v10 = selfCopy;

  sub_100008914(currentConnection, selfCopy + v9, v10, sub_10002B874, v5);
}

- (void)getRemoteContentForLayerContextWithId:(int64_t)id style:(id)style tag:(id)tag reply:(id)reply
{
  v10 = _Block_copy(reply);
  _Block_copy(v10);
  styleCopy = style;
  tagCopy = tag;
  selfCopy = self;
  sub_10002A0E0(id, styleCopy, tagCopy, selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (void)requestAuthorizationWithRecordIdentifier:(id)identifier replyHandler:(id)handler
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
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
  selfCopy = self;

  sub_10003A81C(sub_10002851C, v16);

  (*(v7 + 8))(v12, v6);
}

- (void)resetAuthorizationWithRecordIdentifier:(id)identifier replyHandler:(id)handler
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(handler);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager;
  selfCopy = self;
  sub_10000A4E4(v10, (&self->super.isa + v13), selfCopy, sub_10002B8A8, v12);

  (*(v7 + 8))(v10, v6);
}

- (void)requestInternalAuthorizationForMember:(int64_t)member replyHandler:(id)handler
{
  v5 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
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

    sub_10000C57C(v9, selfCopy + v10, sub_10002B8A8);
  }
}

- (void)revokeInternalAuthorizationWithReplyHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = OBJC_IVAR____TtC19FamilyControlsAgent5Agent_manager;
  selfCopy = self;
  sub_10000CEC0((&self->super.isa + v6), selfCopy, sub_10002B8A8, v5);
}

- (void)fetchAllSharedActivityWithReplyHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1000276A8(sub_10002B8A8, v5);
}

- (void)updateActivityWithReplyHandler:(id)handler
{
  v3 = _Block_copy(handler);
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

- (void)removeAllActivityWithReplyHandler:(id)handler
{
  v3 = _Block_copy(handler);
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