@interface TranscriptViewCoordinator
- (BOOL)isPerformingLiveTranscription;
- (BOOL)isProcessingOrDisplayingFileTranscriptionForUUID:(id)a3;
- (RCTimeController)timeController;
- (UIView)transcriptView;
- (_TtP10VoiceMemos18TranscriptViewHost_)transcriptViewHost;
- (void)beginFileTranscriptionForRecordingUUID:(id)a3;
- (void)beginLiveTranscription:(id)a3;
- (void)clearData;
- (void)didChangeHostViewWidth:(double)a3;
- (void)didUpdateConfiguration;
- (void)didUpdateTranscriptViewData;
- (void)didUpdateTranscriptionState;
- (void)setTimeController:(id)a3;
- (void)setTranscriptView:(id)a3;
- (void)setTranscriptViewHost:(id)a3;
- (void)timeController:(id)a3 didChangeCurrentTime:(double)a4;
- (void)timeController:(id)a3 didChangeCurrentTime:(double)a4 didChangeDuration:(double)a5;
- (void)willCollapseTranscriptView;
- (void)willDisplayTranscriptView;
- (void)willExpandTranscriptView;
- (void)windowSceneWillEnterForeground;
@end

@implementation TranscriptViewCoordinator

- (void)setTranscriptViewHost:(id)a3
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

- (void)didChangeHostViewWidth:(double)a3
{
  v4 = self;
  sub_10002AE8C(a3);
}

- (void)windowSceneWillEnterForeground
{
  *(self + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_isWindowSceneInForeground) = 1;
  v2 = self;
  sub_10002B04C(3);
}

- (RCTimeController)timeController
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setTimeController:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_timeController);
  *(self + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_timeController) = a3;
  swift_unknownObjectRetain_n();
  v5 = self;
  sub_10018B108(v4);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

- (_TtP10VoiceMemos18TranscriptViewHost_)transcriptViewHost
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setTranscriptView:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator____lazy_storage___transcriptView);
  *(self + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator____lazy_storage___transcriptView) = a3;
  v3 = a3;
}

- (void)beginFileTranscriptionForRecordingUUID:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;

  sub_100179F30(v4, v6, 1);
}

- (void)beginLiveTranscription:(id)a3
{
  v5 = a3;
  v6 = self;

  sub_10017A668(a3);
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
  v6 = self;

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

- (BOOL)isProcessingOrDisplayingFileTranscriptionForUUID:(id)a3
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

- (void)timeController:(id)a3 didChangeCurrentTime:(double)a4
{
  v4 = self;
  sub_10002B04C(0);
}

- (void)timeController:(id)a3 didChangeCurrentTime:(double)a4 didChangeDuration:(double)a5
{
  v5 = self;
  sub_10002B04C(0);
}

- (void)didUpdateTranscriptViewData
{
  v2 = self;
  sub_10002B04C(1);
}

- (void)didUpdateTranscriptionState
{
  v2 = *(self + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_dataProvider);
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  v6 = self;

  sub_10017C690(v3, v4, v5);
  sub_100115920(v3, v4, v5);

  sub_10017C6A8(v3, v4, v5);
}

- (void)didUpdateConfiguration
{
  v2 = self;
  sub_10002B04C(2);
}

- (void)willDisplayTranscriptView
{
  *(self + OBJC_IVAR____TtC10VoiceMemos25TranscriptViewCoordinator_isDisplayingTranscriptView) = 1;
  v2 = self;
  sub_10002B04C(3);
}

- (void)willExpandTranscriptView
{
  v2 = self;
  sub_10018B7CC();
}

- (void)willCollapseTranscriptView
{
  v2 = self;
  sub_10018B81C();
}

@end