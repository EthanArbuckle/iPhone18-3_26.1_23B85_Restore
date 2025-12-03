@interface RCCopyTranscriptActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (BOOL)shouldShowTranscriptionActivity;
- (NSString)activityTitle;
- (UIImage)activityImage;
- (_TtC10VoiceMemos24RCCopyTranscriptActivity)initWithShareableCompositions:(id)compositions;
- (void)prepareWithActivityItems:(id)items;
@end

@implementation RCCopyTranscriptActivity

- (NSString)activityTitle
{
  mainBundle = [objc_opt_self() mainBundle];
  v8._object = 0x8000000100234CD0;
  v3._countAndFlagsBits = 0x4152545F59504F43;
  v3._object = 0xEF5450495243534ELL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD000000000000019;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, mainBundle, v4, v8);

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (UIImage)activityImage
{
  sharedStyleProvider = [objc_opt_self() sharedStyleProvider];
  copyTranscriptImage = [sharedStyleProvider copyTranscriptImage];

  return copyTranscriptImage;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  v3 = *(static Array._unconditionallyBridgeFromObjectiveC(_:)() + 16);

  return v3 == 1;
}

- (void)prepareWithActivityItems:(id)items
{
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10017E27C();
}

- (BOOL)shouldShowTranscriptionActivity
{
  selfCopy = self;
  v3 = sub_10017E72C();

  return v3 & 1;
}

- (_TtC10VoiceMemos24RCCopyTranscriptActivity)initWithShareableCompositions:(id)compositions
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for RCCopyTranscriptActivity();
  return [(RCUIActivity *)&v5 initWithShareableCompositions:compositions];
}

@end