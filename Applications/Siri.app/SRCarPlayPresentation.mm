@interface SRCarPlayPresentation
- (BOOL)didReceiveUpdateVisualResponseCommand:(id)command;
- (BOOL)shouldProceedToNextCommandAtSpeechSynthesisEnd;
- (BOOL)shouldResumeInterruptedAudioPlaybackForAttendingState:(BOOL)state;
- (SRCarPlayPresentation)init;
- (SRCarPlayPresentation)initWithDelegate:(id)delegate dataSource:(id)source;
- (SiriUIPresentationDataSource)dataSource;
- (SiriUIPresentationDelegate)delegate;
- (id)viewController;
- (void)autodismiss;
- (void)configureForRequestOptions:(id)options;
- (void)conversation:(id)conversation didChangeWithTransaction:(id)transaction;
- (void)dealloc;
- (void)handleRequestEndBehavior:(id)behavior isAttending:(BOOL)attending;
- (void)handleRequestToCeaseAttending;
- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion;
- (void)siriDidDeactivateWithCompletion:(id)completion;
- (void)siriDidOpenURL:(id)l bundleId:(id)id inPlace:(BOOL)place;
- (void)siriDidStopSpeakingWithIdentifier:(id)identifier speechQueueIsEmpty:(BOOL)empty;
- (void)siriDidTransitionFromState:(int64_t)state event:(int64_t)event;
- (void)siriIsIdleAndQuietStatusDidChange:(BOOL)change isAttending:(BOOL)attending;
- (void)siriRequestWillStartWithRequestOptions:(id)options;
- (void)siriWillBePresented:(int64_t)presented;
@end

@implementation SRCarPlayPresentation

- (void)autodismiss
{
  selfCopy = self;
  sub_1000077AC();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  [v3 cancelPreviousPerformRequestsWithTarget:selfCopy];
  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for SRCarPlayPresentation();
  [(SRCarPlayPresentation *)&v5 dealloc];
}

- (SRCarPlayPresentation)initWithDelegate:(id)delegate dataSource:(id)source
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_100007FAC();
}

- (void)configureForRequestOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  sub_100008C90(optionsCopy);
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

- (BOOL)shouldResumeInterruptedAudioPlaybackForAttendingState:(BOOL)state
{
  if (state)
  {
    return *(self + OBJC_IVAR___SRCarPlayPresentation_shouldResumeMediaOnIdle);
  }

  else
  {
    return 1;
  }
}

- (void)conversation:(id)conversation didChangeWithTransaction:(id)transaction
{
  conversationCopy = conversation;
  transactionCopy = transaction;
  selfCopy = self;
  sub_10000BADC(conversation, transaction);
}

- (void)siriRequestWillStartWithRequestOptions:(id)options
{
  optionsCopy = options;
  selfCopy = self;
  sub_10000E048(options);
}

- (void)siriDidStopSpeakingWithIdentifier:(id)identifier speechQueueIsEmpty:(BOOL)empty
{
  if (identifier)
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
    selfCopy = self;
    v11 = v9;
    sub_10000E9A0(v6, v8, empty);
  }

  else
  {
    __break(1u);
  }
}

- (void)siriIsIdleAndQuietStatusDidChange:(BOOL)change isAttending:(BOOL)attending
{
  selfCopy = self;
  sub_10000F39C(change, attending);
}

- (void)siriDidTransitionFromState:(int64_t)state event:(int64_t)event
{
  selfCopy = self;
  sub_10000FB68(state, event);
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

- (BOOL)didReceiveUpdateVisualResponseCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_10009A604(command);

  return 1;
}

- (void)hasContentAtPoint:(CGPoint)point completion:(id)completion
{
  y = point.y;
  x = point.x;
  v8 = sub_100093B6C(&qword_10018DFE0);
  __chkstk_darwin(v8 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
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
  selfCopy = self;
  sub_1000A80AC(0, 0, v10, &unk_1000F7550, v15);
}

- (BOOL)shouldProceedToNextCommandAtSpeechSynthesisEnd
{
  selfCopy = self;
  sub_10009A968();
  v4 = v3;

  return v4 & 1;
}

- (void)handleRequestEndBehavior:(id)behavior isAttending:(BOOL)attending
{
  behaviorCopy = behavior;
  selfCopy = self;
  sub_10009B384(behaviorCopy, attending);
}

- (void)siriDidDeactivateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  if (v4)
  {
    *(swift_allocObject() + 16) = v4;
    v5 = sub_10009E670;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  sub_10009B9C4(v5);
  sub_10009E660(v5);
}

- (void)siriWillBePresented:(int64_t)presented
{
  selfCopy = self;
  sub_10009BB3C(presented);
}

- (void)siriDidOpenURL:(id)l bundleId:(id)id inPlace:(BOOL)place
{
  v8 = sub_100093B6C(&unk_10018E310);
  __chkstk_darwin(v8 - 8);
  v10 = &v14 - v9;
  if (l)
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

  if (id)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  selfCopy = self;
  sub_10009E3C4(v10);

  sub_10009E588(v10);
}

- (void)handleRequestToCeaseAttending
{
  selfCopy = self;
  sub_10009C890();
}

@end