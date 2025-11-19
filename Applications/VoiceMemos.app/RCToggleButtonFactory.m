@interface RCToggleButtonFactory
+ (id)createPlaybackSettingsButton;
+ (id)createTranscriptionButton;
- (_TtC10VoiceMemos21RCToggleButtonFactory)init;
@end

@implementation RCToggleButtonFactory

+ (id)createPlaybackSettingsButton
{
  v2 = sub_1001A9A70();

  return v2;
}

+ (id)createTranscriptionButton
{
  v2 = sub_1001A9B88();

  return v2;
}

- (_TtC10VoiceMemos21RCToggleButtonFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RCToggleButtonFactory();
  return [(RCToggleButtonFactory *)&v3 init];
}

@end