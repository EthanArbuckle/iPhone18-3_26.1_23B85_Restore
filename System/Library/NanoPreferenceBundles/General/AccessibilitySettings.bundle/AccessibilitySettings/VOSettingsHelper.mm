@interface VOSettingsHelper
+ (float)speakingRate;
+ (void)setSpeakingRate:(float)rate;
- (_TtC21AccessibilitySettings16VOSettingsHelper)init;
@end

@implementation VOSettingsHelper

+ (float)speakingRate
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v3 = swift_allocObject();
  *(v3 + 16) = ObjCClassMetadata;
  sub_23BD02C7C(&unk_23BD09AE8, v3);
  v5 = v4;

  return v5;
}

+ (void)setSpeakingRate:(float)rate
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v5 = swift_allocObject();
  *(v5 + 16) = ObjCClassMetadata;
  *(v5 + 24) = rate;
  sub_23BD02F9C(&unk_23BD09AE0, v5);
}

- (_TtC21AccessibilitySettings16VOSettingsHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for VOSettingsHelper();
  return [(VOSettingsHelper *)&v3 init];
}

@end