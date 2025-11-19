@interface NDSUSNavigation
- (_TtC23NewDeviceSetupUIService15NDSUSNavigation)init;
- (void)proxCardFlowDidDismiss;
@end

@implementation NDSUSNavigation

- (void)proxCardFlowDidDismiss
{
  v3 = sub_100003320(&qword_100026E08, &qword_100015630);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v17 - v6;
  v8 = objc_opt_self();
  v9 = self;
  v10 = [v8 sharedManager];
  if (v10)
  {
    v11 = v10;
    v12 = String._bridgeToObjectiveC()();
    [v11 logType:1 inFunction:"MBLog(_:)" atLine:11 withString:v12];

    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    type metadata accessor for MainActor();
    v14 = v9;
    v15 = static MainActor.shared.getter();
    v16 = swift_allocObject();
    v16[2] = v15;
    v16[3] = &protocol witness table for MainActor;
    v16[4] = v14;
    sub_10000BEAC(0, 0, v7, &unk_100015698, v16);
  }

  else
  {
    __break(1u);
  }
}

- (_TtC23NewDeviceSetupUIService15NDSUSNavigation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end