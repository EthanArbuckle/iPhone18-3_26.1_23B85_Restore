@interface AEAudiobookAnalyticsRecorder
+ (AEAudiobookAnalyticsRecorder)sharedRecorder;
- (AEAudiobookAnalyticsRecorder)init;
- (AEAudiobookAnalyticsRecorderTrackerHosting)trackerHost;
- (void)forceEndPlaySession;
- (void)networkChanged:(id)changed;
- (void)player:(id)player audiobookWillChange:(id)change;
- (void)player:(id)player bitRateChangedFrom:(float)from to:(float)to;
- (void)player:(id)player isScrubbing:(BOOL)scrubbing;
- (void)player:(id)player playbackRateDidChange:(float)change;
- (void)player:(id)player stateDidChangeFrom:(int64_t)from to:(int64_t)to;
- (void)routeChanged:(id)changed;
- (void)skipController:(id)controller willBeginSkippingInDirection:(unint64_t)direction;
- (void)skipControllerDidEndSkipping:(id)skipping actionSource:(unint64_t)source;
- (void)startRecordingAnalyticsWithSessionHost:(id)host;
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

- (void)routeChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_10E228(changedCopy);
}

- (void)networkChanged:(id)changed
{
  sub_11BF80(0, &qword_22C5A8);
  *(swift_allocObject() + 16) = self;
  selfCopy = self;
  sub_139AE0();
}

- (void)startRecordingAnalyticsWithSessionHost:(id)host
{
  sub_11BF80(0, &qword_22C5A8);
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = host;
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_139AE0();

  swift_unknownObjectRelease();
}

- (void)forceEndPlaySession
{
  sub_11BF80(0, &qword_22C5A8);
  *(swift_allocObject() + 16) = self;
  selfCopy = self;
  sub_139AE0();
}

- (AEAudiobookAnalyticsRecorder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)skipController:(id)controller willBeginSkippingInDirection:(unint64_t)direction
{
  v4 = *(self + OBJC_IVAR___AEAudiobookAnalyticsRecorder_player);
  selfCopy = self;
  [v4 positionInCurrentAudiobook];
  *(selfCopy + OBJC_IVAR___AEAudiobookAnalyticsRecorder_skipStartMediaTime) = v5;
}

- (void)skipControllerDidEndSkipping:(id)skipping actionSource:(unint64_t)source
{
  v6 = sub_1395E0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!source)
  {
    v10 = &enum case for SkipActionType.unknown(_:);
LABEL_5:
    (*(v7 + 104))(v9, *v10, v6);
    selfCopy = self;
    sub_10F99C(v9);

    (*(v7 + 8))(v9, v6);
    return;
  }

  if (source == 1)
  {
    v10 = &enum case for SkipActionType.buttonTap(_:);
    goto LABEL_5;
  }

  type metadata accessor for BKAudiobookActionSource(0);
  v13[1] = source;
  selfCopy2 = self;
  sub_139CE0();
  __break(1u);
}

- (void)player:(id)player audiobookWillChange:(id)change
{
  if (*(self + OBJC_IVAR___AEAudiobookAnalyticsRecorder_analyticsSessionAssertion))
  {
    selfCopy = self;
    sub_10EF30();
  }
}

- (void)player:(id)player stateDidChangeFrom:(int64_t)from to:(int64_t)to
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_11B258(player, to);
  swift_unknownObjectRelease();
}

- (void)player:(id)player playbackRateDidChange:(float)change
{
  v4 = OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionPlaybackRate;
  if (*(self + OBJC_IVAR___AEAudiobookAnalyticsRecorder_playSessionPlaybackRate) != change)
  {
    selfCopy = self;
    sub_111520();
    *(self + v4) = change;
  }
}

- (void)player:(id)player isScrubbing:(BOOL)scrubbing
{
  scrubbingCopy = scrubbing;
  v7 = sub_1395E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (scrubbingCopy)
  {
    selfCopy = self;
    [player positionInCurrentAudiobook];
    v11 = selfCopy;
    *(selfCopy + OBJC_IVAR___AEAudiobookAnalyticsRecorder_skipStartMediaTime) = v12;
  }

  else
  {
    (*(v8 + 104))(v10, enum case for SkipActionType.scrubbing(_:), v7);
    selfCopy2 = self;
    swift_unknownObjectRetain();
    sub_10F99C(v10);
    swift_unknownObjectRelease();

    (*(v8 + 8))(v10, v7);
  }
}

- (void)player:(id)player bitRateChangedFrom:(float)from to:(float)to
{
  sub_11BF80(0, &qword_22C5A8);
  v8 = swift_allocObject();
  *(v8 + 16) = self;
  *(v8 + 24) = to;
  *(v8 + 28) = from;
  selfCopy = self;
  sub_139AE0();
}

@end