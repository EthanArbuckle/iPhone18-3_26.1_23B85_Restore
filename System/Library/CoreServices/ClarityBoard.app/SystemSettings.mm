@interface SystemSettings
- (void)airplaneModeChanged;
@end

@implementation SystemSettings

- (void)airplaneModeChanged
{
  v3 = sub_10002B6CC(&qword_10032D050);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  selfCopy = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_1000B85D8(0, 0, v5, &unk_100299FB0, v9);
}

@end