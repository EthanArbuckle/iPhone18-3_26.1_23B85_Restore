@interface RCPlaybackSettingsViewDataSourceHelper
+ (NSString)enhanceCellIdentifier;
+ (NSString)generalSettingsSectionIdentifier;
+ (NSString)layerMixCellIdentifier;
+ (NSString)layerMixSectionHeaderCellIdentifier;
+ (NSString)layerMixSectionIdentifier;
+ (NSString)playbackSpeedSectionHeaderCellIdentifier;
+ (NSString)playbackSpeedSectionIdentifier;
+ (NSString)playbackSpeedSliderCellIdentifier;
+ (NSString)removeSilenceCellIdentifier;
+ (NSString)speechIsolatorSectionIdentifier;
+ (NSString)speechIsolatorSliderCellIdentifier;
+ (NSString)speechIsolatorToggleCellIdentifier;
+ (id)buildDiffableDataSourceSnapshotWithSpatialAudioRecording:(BOOL)recording multitrackRecording:(BOOL)multitrackRecording speechIsolatorEnabled:(BOOL)enabled;
- (_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper)init;
@end

@implementation RCPlaybackSettingsViewDataSourceHelper

+ (NSString)playbackSpeedSectionIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)generalSettingsSectionIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)speechIsolatorSectionIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)layerMixSectionIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)playbackSpeedSectionHeaderCellIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)layerMixSectionHeaderCellIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)playbackSpeedSliderCellIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)enhanceCellIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)removeSilenceCellIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)layerMixCellIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)speechIsolatorToggleCellIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (NSString)speechIsolatorSliderCellIdentifier
{
  v2 = String._bridgeToObjectiveC()();

  return v2;
}

+ (id)buildDiffableDataSourceSnapshotWithSpatialAudioRecording:(BOOL)recording multitrackRecording:(BOOL)multitrackRecording speechIsolatorEnabled:(BOOL)enabled
{
  v8 = sub_1000C773C(&qword_1002CF8E8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = &v15 - v11;
  sub_1000E52DC(recording, multitrackRecording, enabled);
  v13.super.isa = NSDiffableDataSourceSnapshot._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v12, v8);

  return v13.super.isa;
}

- (_TtC10VoiceMemos38RCPlaybackSettingsViewDataSourceHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RCPlaybackSettingsViewDataSourceHelper();
  return [(RCPlaybackSettingsViewDataSourceHelper *)&v3 init];
}

@end