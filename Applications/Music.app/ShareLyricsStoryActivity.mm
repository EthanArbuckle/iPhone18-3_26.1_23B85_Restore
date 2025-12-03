@interface ShareLyricsStoryActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (NSString)activityTitle;
- (NSString)activityType;
- (_TtC5Music24ShareLyricsStoryActivity)init;
- (id)_bundleIdentifierForActivityImageCreation;
- (void)_prepareWithActivityItems:(id)items completion:(id)completion;
@end

@implementation ShareLyricsStoryActivity

- (NSString)activityType
{
  selfCopy = self;
  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)activityTitle
{
  sub_10044BB14();
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (id)_bundleIdentifierForActivityImageCreation
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  selfCopy = self;
  v4 = sub_10077238C();

  return v4 & 1;
}

- (void)_prepareWithActivityItems:(id)items completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (items)
  {
    items = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = sub_10072B348;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  selfCopy = self;
  sub_100771190(items, v8, v7);
  sub_100020438(v8);
}

- (_TtC5Music24ShareLyricsStoryActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end