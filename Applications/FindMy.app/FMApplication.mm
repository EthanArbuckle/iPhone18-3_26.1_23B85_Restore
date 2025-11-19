@interface FMApplication
- (BOOL)runTest:(id)a3 options:(id)a4;
- (_TtC6FindMy13FMApplication)init;
- (id)_extendLaunchTest;
@end

@implementation FMApplication

- (_TtC6FindMy13FMApplication)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMApplication();
  return [(FMApplication *)&v3 init];
}

- (id)_extendLaunchTest
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (BOOL)runTest:(id)a3 options:(id)a4
{
  v4 = a4;
  if (!a3)
  {
    v6 = 0;
    v8 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v4)
  {
LABEL_3:
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v9 = self;
  v10 = sub_100457FF8(v6, v8, v4);

  return v10 & 1;
}

@end