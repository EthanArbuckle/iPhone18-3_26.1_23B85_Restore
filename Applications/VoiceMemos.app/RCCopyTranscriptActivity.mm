@interface RCCopyTranscriptActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (BOOL)shouldShowTranscriptionActivity;
- (NSString)activityTitle;
- (UIImage)activityImage;
- (_TtC10VoiceMemos24RCCopyTranscriptActivity)initWithShareableCompositions:(id)a3;
- (void)prepareWithActivityItems:(id)a3;
@end

@implementation RCCopyTranscriptActivity

- (NSString)activityTitle
{
  v2 = [objc_opt_self() mainBundle];
  v8._object = 0x8000000100234CD0;
  v3._countAndFlagsBits = 0x4152545F59504F43;
  v3._object = 0xEF5450495243534ELL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD000000000000019;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v8);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (UIImage)activityImage
{
  v2 = [objc_opt_self() sharedStyleProvider];
  v3 = [v2 copyTranscriptImage];

  return v3;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v3 = *(static Array._unconditionallyBridgeFromObjectiveC(_:)() + 16);

  return v3 == 1;
}

- (void)prepareWithActivityItems:(id)a3
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_10017E27C();
}

- (BOOL)shouldShowTranscriptionActivity
{
  v2 = self;
  v3 = sub_10017E72C();

  return v3 & 1;
}

- (_TtC10VoiceMemos24RCCopyTranscriptActivity)initWithShareableCompositions:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for RCCopyTranscriptActivity();
  return [(RCUIActivity *)&v5 initWithShareableCompositions:a3];
}

@end