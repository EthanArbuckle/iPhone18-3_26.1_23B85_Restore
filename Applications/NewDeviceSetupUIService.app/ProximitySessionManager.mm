@interface ProximitySessionManager
- (void)extensionDeviceLost;
@end

@implementation ProximitySessionManager

- (void)extensionDeviceLost
{
  v3 = sub_100003320(&qword_100026E08, &qword_100015630);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v15 - v6;
  v8 = objc_opt_self();

  v9 = [v8 sharedManager];
  if (v9)
  {
    v10 = v9;
    v11 = String._bridgeToObjectiveC()();
    [v10 logFaultInFunction:"MBLogFault(_:)" atLine:15 withString:v11];

    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    type metadata accessor for MainActor();

    v13 = static MainActor.shared.getter();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = &protocol witness table for MainActor;
    v14[4] = self;
    sub_10000C16C(0, 0, v7, &unk_100015438, v14);
  }

  else
  {
    __break(1u);
  }
}

@end