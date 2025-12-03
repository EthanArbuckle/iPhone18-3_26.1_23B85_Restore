@interface RCAppStoreRatingPrompter
- (_TtC10VoiceMemos24RCAppStoreRatingPrompter)init;
- (_TtC10VoiceMemos24RCAppStoreRatingPrompter)initWithSavedRecordingsModel:(id)model;
- (void)applicationDidEnterForeground;
- (void)promptForRatingIfNeeded;
@end

@implementation RCAppStoreRatingPrompter

- (_TtC10VoiceMemos24RCAppStoreRatingPrompter)initWithSavedRecordingsModel:(id)model
{
  v4 = self + OBJC_IVAR____TtC10VoiceMemos24RCAppStoreRatingPrompter____lazy_storage___gatingController;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v5 = (&self->super.isa + OBJC_IVAR____TtC10VoiceMemos24RCAppStoreRatingPrompter_recordingCountProvider);
  *v5 = model;
  v5[1] = &off_10028FBF8;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RCAppStoreRatingPrompter();
  modelCopy = model;
  return [(RCAppStoreRatingPrompter *)&v8 init];
}

- (void)applicationDidEnterForeground
{
  selfCopy = self;
  sub_100110AC4();
}

- (void)promptForRatingIfNeeded
{
  selfCopy = self;
  sub_100110C04();
}

- (_TtC10VoiceMemos24RCAppStoreRatingPrompter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end