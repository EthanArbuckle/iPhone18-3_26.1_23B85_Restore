@interface SRCarPlayPresentation
- (BOOL)didReceiveUpdateVisualResponseCommand:(id)a3;
- (BOOL)shouldProceedToNextCommandAtSpeechSynthesisEnd;
- (BOOL)shouldResumeInterruptedAudioPlaybackForAttendingState:(BOOL)a3;
- (SRCarPlayPresentation)init;
- (SRCarPlayPresentation)initWithDelegate:(id)a3 dataSource:(id)a4;
- (SiriUIPresentationDataSource)dataSource;
- (SiriUIPresentationDelegate)delegate;
- (id)viewController;
- (void)autodismiss;
- (void)configureForRequestOptions:(id)a3;
- (void)conversation:(id)a3 didChangeWithTransaction:(id)a4;
- (void)dealloc;
- (void)handleRequestEndBehavior:(id)a3 isAttending:(BOOL)a4;
- (void)handleRequestToCeaseAttending;
- (void)hasContentAtPoint:(CGPoint)a3 completion:(id)a4;
- (void)siriDidDeactivateWithCompletion:(id)a3;
- (void)siriDidOpenURL:(id)a3 bundleId:(id)a4 inPlace:(BOOL)a5;
- (void)siriDidStopSpeakingWithIdentifier:(id)a3 speechQueueIsEmpty:(BOOL)a4;
- (void)siriDidTransitionFromState:(int64_t)a3 event:(int64_t)a4;
- (void)siriIsIdleAndQuietStatusDidChange:(BOOL)a3 isAttending:(BOOL)a4;
- (void)siriRequestWillStartWithRequestOptions:(id)a3;
- (void)siriWillBePresented:(int64_t)a3;
@end

@implementation SRCarPlayPresentation

- (void)autodismiss
{
  v2 = self;
  sub_1000077AC();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  [v3 cancelPreviousPerformRequestsWithTarget:v4];
  v5.receiver = v4;
  v5.super_class = type metadata accessor for SRCarPlayPresentation();
  [(SRCarPlayPresentation *)&v5 dealloc];
}

- (SRCarPlayPresentation)initWithDelegate:(id)a3 dataSource:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_100007FAC();
}

- (void)configureForRequestOptions:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100008C90(v4);
}

- (id)viewController
{
  result = *(self + OBJC_IVAR___SRCarPlayPresentation_carPlayViewController);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

- (BOOL)shouldResumeInterruptedAudioPlaybackForAttendingState:(BOOL)a3
{
  if (a3)
  {
    return *(self + OBJC_IVAR___SRCarPlayPresentation_shouldResumeMediaOnIdle);
  }

  else
  {
    return 1;
  }
}

- (void)conversation:(id)a3 didChangeWithTransaction:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_10000BADC(a3, a4);
}

- (void)siriRequestWillStartWithRequestOptions:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10000E048(a3);
}

- (void)siriDidStopSpeakingWithIdentifier:(id)a3 speechQueueIsEmpty:(BOOL)a4
{
  if (a3)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = *(self + OBJC_IVAR___SRCarPlayPresentation_carPlayViewController);
  if (v9)
  {
    v10 = self;
    v11 = v9;
    sub_10000E9A0(v6, v8, a4);
  }

  else
  {
    __break(1u);
  }
}

- (void)siriIsIdleAndQuietStatusDidChange:(BOOL)a3 isAttending:(BOOL)a4
{
  v6 = self;
  sub_10000F39C(a3, a4);
}

- (void)siriDidTransitionFromState:(int64_t)a3 event:(int64_t)a4
{
  v6 = self;
  sub_10000FB68(a3, a4);
}

- (SiriUIPresentationDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (SiriUIPresentationDataSource)dataSource
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (SRCarPlayPresentation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)didReceiveUpdateVisualResponseCommand:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10009A604(a3);

  return 1;
}

- (void)hasContentAtPoint:(CGPoint)a3 completion:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = sub_100093B6C(&qword_10018DFE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = x;
  v12[3] = y;
  *(v12 + 4) = v11;
  *(v12 + 5) = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000F7540;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000F7160;
  v15[5] = v14;
  v16 = self;
  sub_1000A80AC(0, 0, v10, &unk_1000F7550, v15);
}

- (BOOL)shouldProceedToNextCommandAtSpeechSynthesisEnd
{
  v2 = self;
  sub_10009A968();
  v4 = v3;

  return v4 & 1;
}

- (void)handleRequestEndBehavior:(id)a3 isAttending:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_10009B384(v6, a4);
}

- (void)siriDidDeactivateWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_10009E670;
  }

  else
  {
    v5 = 0;
  }

  v6 = self;
  sub_10009B9C4(v5);
  sub_10009E660(v5);
}

- (void)siriWillBePresented:(int64_t)a3
{
  v4 = self;
  sub_10009BB3C(a3);
}

- (void)siriDidOpenURL:(id)a3 bundleId:(id)a4 inPlace:(BOOL)a5
{
  v8 = sub_100093B6C(&unk_10018E310);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  if (a3)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  }

  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = self;
  sub_10009E3C4(v10);

  sub_10009E588(v10);
}

- (void)handleRequestToCeaseAttending
{
  v2 = self;
  sub_10009C890();
}

@end