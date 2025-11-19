@interface LyricsSharingActivityViewController.Activity
- (NSString)activityTitle;
- (_TtCC5Music35LyricsSharingActivityViewController8Activity)init;
- (void)performActivity;
@end

@implementation LyricsSharingActivityViewController.Activity

- (NSString)activityTitle
{

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)performActivity
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtCC5Music35LyricsSharingActivityViewController8Activity_performBlock);
  v4 = self;

  v2(v3);

  [(LyricsSharingActivityViewController.Activity *)v4 activityDidFinish:1];
}

- (_TtCC5Music35LyricsSharingActivityViewController8Activity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end