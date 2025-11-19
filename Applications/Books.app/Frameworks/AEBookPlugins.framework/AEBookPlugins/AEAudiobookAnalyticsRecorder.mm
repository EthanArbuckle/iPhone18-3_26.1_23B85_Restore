@interface AEAudiobookAnalyticsRecorder
+ (AEAudiobookAnalyticsRecorder)sharedRecorder;
- (AEAudiobookAnalyticsRecorder)init;
- (AEAudiobookAnalyticsRecorderTrackerHosting)trackerHost;
- (void)forceEndPlaySession;
- (void)networkChanged:(id)a3;
- (void)player:(id)a3 audiobookWillChange:(id)a4;
- (void)player:(id)a3 bitRateChangedFrom:(float)a4 to:(float)a5;
- (void)player:(id)a3 isScrubbing:(BOOL)a4;
- (void)player:(id)a3 playbackRateDidChange:(float)a4;
- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5;
- (void)routeChanged:(id)a3;
- (void)skipController:(id)a3 willBeginSkippingInDirection:(unint64_t)a4;
- (void)skipControllerDidEndSkipping:(id)a3 actionSource:(unint64_t)a4;
- (void)startRecordingAnalyticsWithSessionHost:(id)a3;
@end

@implementation AEAudiobookAnalyticsRecorder

- (AEAudiobookAnalyticsRecorderTrackerHosting)trackerHost
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

+ (AEAudiobookAnalyticsRecorder)sharedRecorder
{
  if (qword_22C580 != -1)
  {
    swift_once();
  }

  v3 = qword_22C588;

  return v3;
}

- (void)routeChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10E228(v4);
}

- (void)networkChanged:(id)a3
{
  sub_11BF80(0, &qword_22C5A8);
  *(swift_allocObject() + 16) = self;
  v4 = self;
  sub_139AE0();
}

- (void)startRecordingAnalyticsWithSessionHost:(id)a3
{
  sub_11BF80(0, &qword_22C5A8);
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = a3;
  swift_unknownObjectRetain_n();
  v6 = self;
  sub_139AE0();

  swift_unknownObjectRelease();
}

- (void)forceEndPlaySession
{
  sub_11BF80(0, &qword_22C5A8);
  *(swift_allocObject() + 16) = self;
  v3 = self;
  sub_139AE0();
}

- (AEAudiobookAnalyticsRecorder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)skipController:(id)a3 willBeginSkippingInDirection:(unint64_t)a4
{
  v4 = *(self + OBJC_IVAR___AEAudiobookAnalyticsRecorder_player);
  v6 = self;
  [v4 positionInCurrentAudiobook];
  *(v6 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_skipStartMediaTime) = v5;
}

- (void)skipControllerDidEndSkipping:(id)a3 actionSource:(unint64_t)a4
{
  v6 = sub_1395E0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a4)
  {
    v10 = &enum case for SkipActionType.unknown(_:);
LABEL_5:
    (*(v7 + 104))(v9, *v10, v6);
    v11 = self;
    sub_10F99C(v9);

    (*(v7 + 8))(v9, v6);
    return;
  }

  if (a4 == 1)
  {
    v10 = &enum case for SkipActionType.buttonTap(_:);
    goto LABEL_5;
  }

  type metadata accessor for BKAudiobookActionSource(0);
  v13[1] = a4;
  v12 = self;
  sub_139CE0();
  __break(1u);
}

- (void)player:(id)a3 audiobookWillChange:(id)a4
{
  if (*(self + OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionAssertion))
  {
    v4 = self;
    sub_10EF30();
  }
}

- (void)player:(id)a3 stateDidChangeFrom:(int64_t)a4 to:(int64_t)a5
{
  swift_unknownObjectRetain();
  v8 = self;
  sub_11B258(a3, a5);
  swift_unknownObjectRelease();
}

- (void)player:(id)a3 playbackRateDidChange:(float)a4
{
  v4 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionPlaybackRate;
  if (*(self + OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionPlaybackRate) != a4)
  {
    v7 = self;
    sub_111520();
    *(self + v4) = a4;
  }
}

- (void)player:(id)a3 isScrubbing:(BOOL)a4
{
  v4 = a4;
  v7 = sub_1395E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4)
  {
    v15 = self;
    [a3 positionInCurrentAudiobook];
    v11 = v15;
    *(v15 + OBJC_IVAR___AEAudiobookAnalyticsRecorder_skipStartMediaTime) = v12;
  }

  else
  {
    (*(v8 + 104))(v10, enum case for SkipActionType.scrubbing(_:), v7);
    v13 = self;
    swift_unknownObjectRetain();
    sub_10F99C(v10);
    swift_unknownObjectRelease();

    (*(v8 + 8))(v10, v7);
  }
}

- (void)player:(id)a3 bitRateChangedFrom:(float)a4 to:(float)a5
{
  sub_11BF80(0, &qword_22C5A8);
  v8 = swift_allocObject();
  *(v8 + 16) = self;
  *(v8 + 24) = a5;
  *(v8 + 28) = a4;
  v9 = self;
  sub_139AE0();
}

@end