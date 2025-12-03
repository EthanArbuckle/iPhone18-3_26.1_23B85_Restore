@interface ShareModelStoryActivity
- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (BOOL)canPerformWithActivityItems:(id)items;
- (NSString)activityTitle;
- (NSString)activityType;
- (_TtC5Music23ShareModelStoryActivity)init;
- (id)_bundleIdentifierForActivityImageCreation;
@end

@implementation ShareModelStoryActivity

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
  v4 = sub_100552BCC();

  return v4 & 1;
}

- (BOOL)_presentActivityOnViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  v7 = _Block_copy(completion);
  if (v7)
  {
    *(swift_allocObject() + 16) = v7;
    v7 = sub_100115508;
  }

  controllerCopy = controller;
  selfCopy = self;
  v10 = sub_100552D10();
  sub_100020438(v7);

  return v10 & 1;
}

- (_TtC5Music23ShareModelStoryActivity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end