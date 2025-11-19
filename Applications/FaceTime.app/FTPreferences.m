@interface FTPreferences
- (NSString)domain;
- (_TtC8FaceTime13FTPreferences)init;
@end

@implementation FTPreferences

- (NSString)domain
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (_TtC8FaceTime13FTPreferences)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.isa + OBJC_IVAR____TtC8FaceTime13FTPreferences____lazy_storage___enableInterstitialLinkSharingFlow) = 2;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(FTPreferences *)&v5 init];
}

@end