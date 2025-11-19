@interface LockScreenClient
- (void)setLockScreenState:(int64_t)a3 userInfo:(id)a4;
@end

@implementation LockScreenClient

- (void)setLockScreenState:(int64_t)a3 userInfo:(id)a4
{
  sub_10000FC54(0, &qword_10001D430, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v15 - v9;
  if (a4)
  {
    sub_10000D1A8();
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  type metadata accessor for MainActor();
  swift_retain_n();
  v13 = static MainActor.shared.getter();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = self;
  v14[5] = a3;
  v14[6] = v11;
  sub_10000887C(0, 0, v10, &unk_1000112A8, v14);
}

@end