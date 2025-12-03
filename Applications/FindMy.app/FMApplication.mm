@interface FMApplication
- (BOOL)runTest:(id)test options:(id)options;
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

- (BOOL)runTest:(id)test options:(id)options
{
  optionsCopy = options;
  if (!test)
  {
    v6 = 0;
    v8 = 0;
    if (!options)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (optionsCopy)
  {
LABEL_3:
    optionsCopy = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  selfCopy = self;
  v10 = sub_100457FF8(v6, v8, optionsCopy);

  return v10 & 1;
}

@end