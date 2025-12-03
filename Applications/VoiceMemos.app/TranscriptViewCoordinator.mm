@interface TranscriptViewCoordinator
- (BOOL)isPerformingLiveTranscription;
- (BOOL)isProcessingOrDisplayingFileTranscriptionForUUID:(id)d;
- (RCTimeController)timeController;
- (UIView)transcriptView;
- (_TtP10VoiceMemos18TranscriptViewHost_)transcriptViewHost;
- (void)beginFileTranscriptionForRecordingUUID:(id)d;
- (void)beginLiveTranscription:(id)transcription;
- (void)clearData;
- (void)didChangeHostViewWidth:(double)width;
- (void)didUpdateConfiguration;
- (void)didUpdateTranscriptViewData;
- (void)didUpdateTranscriptionState;
- (void)setTimeController:(id)controller;
- (void)setTranscriptView:(id)view;
- (void)setTranscriptViewHost:(id)host;
- (void)timeController:(id)controller didChangeCurrentTime:(double)time;
- (void)timeController:(id)controller didChangeCurrentTime:(double)time didChangeDuration:(double)duration;
- (void)willCollapseTranscriptView;
- (void)willDisplayTranscriptView;
- (void)willExpandTranscriptView;
- (void)windowSceneWillEnterForeground;
@end

@implementation TranscriptViewCoordinator

- (void)setTranscriptViewHost:(id)host
{
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
}

- (UIView)transcriptView
{
  v2 = sub_10002AC38();

  return v2;
}

- (void)didChangeHostViewWidth:(double)width
{
  selfCopy = self;
  sub_10002AE8C(width);
}

- (void)windowSceneWillEnterForeground
{
  *(self + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_isWindowSceneInForeground) = 1;
  selfCopy = self;
  sub_10002B04C(3);
}

- (RCTimeController)timeController
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setTimeController:(id)controller
{
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_timeController);
  *(self + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_timeController) = controller;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_10018B108(v4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

- (_TtP10VoiceMemos18TranscriptViewHost_)transcriptViewHost
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setTranscriptView:(id)view
{
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator____lazy_storage___transcriptView);
  *(self + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator____lazy_storage___transcriptView) = view;
  viewCopy = view;
}

- (void)beginFileTranscriptionForRecordingUUID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;

  sub_100179F30(v4, v6, 1);
}

- (void)beginLiveTranscription:(id)transcription
{
  transcriptionCopy = transcription;
  selfCopy = self;

  sub_10017A668(transcription);
}

- (void)clearData
{
  v2 = *(self + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_dataProvider);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  v5 = *(v2 + 48);
  *(v2 + 48) = 0x80;
  selfCopy = self;

  sub_100179B88(v3, v4, v5);
  sub_10017C6A8(v3, v4, v5);
  sub_10017C11C(0, 0xE000000000000000, _swiftEmptyArrayStorage);
}

- (BOOL)isPerformingLiveTranscription
{
  v2 = *(self + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_dataProvider);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  return v3 == 2 && v4 == 0 && v5 == 128;
}

- (BOOL)isProcessingOrDisplayingFileTranscriptionForUUID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = *(self + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_dataProvider);
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  LODWORD(v6) = *(v6 + 48);
  if (v6 >> 5 >= 3)
  {
    v10 = 0;
  }

  else if (v4 == v7 && v8 == v5)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

- (void)timeController:(id)controller didChangeCurrentTime:(double)time
{
  selfCopy = self;
  sub_10002B04C(0);
}

- (void)timeController:(id)controller didChangeCurrentTime:(double)time didChangeDuration:(double)duration
{
  selfCopy = self;
  sub_10002B04C(0);
}

- (void)didUpdateTranscriptViewData
{
  selfCopy = self;
  sub_10002B04C(1);
}

- (void)didUpdateTranscriptionState
{
  v2 = *(self + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_dataProvider);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  selfCopy = self;

  sub_10017C690(v3, v4, v5);
  sub_100115920(v3, v4, v5);

  sub_10017C6A8(v3, v4, v5);
}

- (void)didUpdateConfiguration
{
  selfCopy = self;
  sub_10002B04C(2);
}

- (void)willDisplayTranscriptView
{
  *(self + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_isDisplayingTranscriptView) = 1;
  selfCopy = self;
  sub_10002B04C(3);
}

- (void)willExpandTranscriptView
{
  selfCopy = self;
  sub_10018B7CC();
}

- (void)willCollapseTranscriptView
{
  selfCopy = self;
  sub_10018B81C();
}

@end