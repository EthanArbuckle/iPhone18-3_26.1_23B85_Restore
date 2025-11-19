@interface SceneUIServerHandle
- (_TtC22ProximityReaderSceneUI19SceneUIServerHandle)init;
- (void)activateRemoteUI:(id)a3 internalEndpoint:(id)a4 reply:(id)a5;
- (void)deactivateRemoteUI:(id)a3;
- (void)invalidateRemoteUI:(id)a3;
@end

@implementation SceneUIServerHandle

- (void)activateRemoteUI:(id)a3 internalEndpoint:(id)a4 reply:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v7);
  v9 = a4;
  v10 = self;
  sub_100007AA0(v8, v9, v10, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)invalidateRemoteUI:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_100005B58(sub_1000079D0, v5);
}

- (void)deactivateRemoteUI:(id)a3
{
  v4 = sub_100002388(&qword_100021930, &unk_100013460);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = self;
  v9 = sub_100008C08();
  sub_1000023F4(v9, v7);
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {

    sub_100002FAC(v7, &qword_100021930, &unk_100013460);
  }

  else
  {
    v12 = sub_100008DA0();
    v13 = sub_100008DA8();
    sub_100008DB4(v12 & 1, v8, 0xD000000000000016, 0x8000000100014F20, v13, v14);

    (*(v11 + 8))(v7, v10);
  }
}

- (_TtC22ProximityReaderSceneUI19SceneUIServerHandle)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end