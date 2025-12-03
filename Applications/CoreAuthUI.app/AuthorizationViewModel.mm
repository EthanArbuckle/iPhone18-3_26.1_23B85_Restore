@interface AuthorizationViewModel
- (_TtC10CoreAuthUI22AuthorizationViewModel)init;
- (void)authenticationResult:(id)result error:(id)error context:(id)context;
- (void)biometricNoMatch;
- (void)biometryDidBecomeIdle;
@end

@implementation AuthorizationViewModel

- (_TtC10CoreAuthUI22AuthorizationViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)authenticationResult:(id)result error:(id)error context:(id)context
{
  if (result)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  errorCopy = error;
  contextCopy = context;
  selfCopy = self;
  sub_1000688AC(error);
}

- (void)biometricNoMatch
{
  selfCopy = self;
  sub_100067418();
}

- (void)biometryDidBecomeIdle
{
  v3 = sub_1000282B4(&qword_1000B0150, &qword_100078578);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  sub_100067B18(0, 0, v6, &unk_100079F58, v8);
}

@end