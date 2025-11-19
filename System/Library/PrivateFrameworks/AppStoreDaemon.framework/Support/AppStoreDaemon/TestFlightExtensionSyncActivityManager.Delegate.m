@interface TestFlightExtensionSyncActivityManager.Delegate
- (_TtCC9appstored38TestFlightExtensionSyncActivityManagerP33_7B68A6CA0C2D7084A2592258C0EEA6498Delegate)init;
- (void)testFlightServiceHost:(id)a3 didUpdateExtensionStatus:(int64_t)a4;
@end

@implementation TestFlightExtensionSyncActivityManager.Delegate

- (void)testFlightServiceHost:(id)a3 didUpdateExtensionStatus:(int64_t)a4
{
  v4 = sub_100085D40(&qword_10059C3E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    sub_10019F02C(0, 0, v6, &unk_100436F70, v10);
  }
}

- (_TtCC9appstored38TestFlightExtensionSyncActivityManagerP33_7B68A6CA0C2D7084A2592258C0EEA6498Delegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end