@interface MusicApplication
+ (id)_defaultContentSizeCategory;
- (id)_extendLaunchTest;
- (void)startedTest:(id)test;
@end

@implementation MusicApplication

+ (id)_defaultContentSizeCategory
{
  swift_getObjCClassMetadata();
  v2 = static Application._defaultContentSizeCategory()();

  return v2;
}

- (void)startedTest:(id)test
{
  if (test)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8.value._countAndFlagsBits = v4;
  v8.value._object = v6;
  Application.startedTest(_:)(v8);
}

- (id)_extendLaunchTest
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

@end