@interface MapsAppTestLongNavigation
- (BOOL)runTest;
- (_TtC4Maps25MapsAppTestLongNavigation)initWithApplication:(id)application testName:(id)name options:(id)options;
@end

@implementation MapsAppTestLongNavigation

- (BOOL)runTest
{
  selfCopy = self;
  v3 = sub_1003864CC();

  return v3 & 1;
}

- (_TtC4Maps25MapsAppTestLongNavigation)initWithApplication:(id)application testName:(id)name options:(id)options
{
  optionsCopy = options;
  if (!name)
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
  v9 = swift_unknownObjectRetain();
  return sub_1003882CC(v9, v6, v8, optionsCopy);
}

@end