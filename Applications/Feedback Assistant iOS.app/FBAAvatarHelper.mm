@interface FBAAvatarHelper
+ (id)contactImageForEmailAddress:(id)a3;
- (_TtC18Feedback_Assistant15FBAAvatarHelper)init;
@end

@implementation FBAAvatarHelper

- (_TtC18Feedback_Assistant15FBAAvatarHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FBAAvatarHelper();
  return [(FBAAvatarHelper *)&v3 init];
}

+ (id)contactImageForEmailAddress:(id)a3
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = sub_100070554(v3, v4);

  return v5;
}

@end