@interface MapsAppTestLongNavigation
- (BOOL)runTest;
- (_TtC4Maps25MapsAppTestLongNavigation)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5;
@end

@implementation MapsAppTestLongNavigation

- (BOOL)runTest
{
  v2 = self;
  v3 = sub_1003864CC();

  return v3 & 1;
}

- (_TtC4Maps25MapsAppTestLongNavigation)initWithApplication:(id)a3 testName:(id)a4 options:(id)a5
{
  v5 = a5;
  if (!a4)
  {
    v6 = 0;
    v8 = 0;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v5)
  {
LABEL_3:
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v9 = swift_unknownObjectRetain();
  return sub_1003882CC(v9, v6, v8, v5);
}

@end