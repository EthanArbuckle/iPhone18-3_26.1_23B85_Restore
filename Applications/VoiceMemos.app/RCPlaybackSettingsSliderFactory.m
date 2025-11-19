@interface RCPlaybackSettingsSliderFactory
+ (id)createLayerMixSlider;
+ (id)createPlaybackSpeedSlider;
+ (id)createSpeechIsolatorSlider;
- (_TtC10VoiceMemos31RCPlaybackSettingsSliderFactory)init;
@end

@implementation RCPlaybackSettingsSliderFactory

+ (id)createPlaybackSpeedSlider
{
  v2 = sub_1001369BC();

  return v2;
}

+ (id)createLayerMixSlider
{
  v2 = sub_100136E14();

  return v2;
}

+ (id)createSpeechIsolatorSlider
{
  v2 = sub_1001371DC();

  return v2;
}

- (_TtC10VoiceMemos31RCPlaybackSettingsSliderFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RCPlaybackSettingsSliderFactory();
  return [(RCPlaybackSettingsSliderFactory *)&v3 init];
}

@end