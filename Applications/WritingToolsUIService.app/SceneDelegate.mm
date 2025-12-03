@interface SceneDelegate
- (void)didDismissInputWarningforSessionWithUUID:(id)d;
- (void)didEndWritingToolsSession:(id)session accepted:(BOOL)accepted;
- (void)didStartMontaraRefinementForSessionWithUUID:(id)d;
- (void)endWritingTools;
- (void)endWritingToolsWithError:(id)error;
- (void)handoffFromUCBFromTool:(int64_t)tool withPrompt:(id)prompt;
- (void)localKeyboardChanged:(id)changed;
- (void)preferredContentSizeChanged:(CGSize)changed;
- (void)proofreadingSession:(id)session didUpdateState:(int64_t)state forSuggestionWithUUID:(id)d inContext:(id)context;
- (void)proofreadingSessionWithUUID:(id)d showDetailsForSuggestionWithUUID:(id)iD relativeToRect:(CGRect)rect inView:(id)view;
- (void)proofreadingSessionWithUUID:(id)d updateState:(int64_t)state forSuggestionWithUUID:(id)iD;
- (void)remoteKeyboardChanged:(id)changed;
- (void)savePresentationStyle:(int64_t)style;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)setRemainingRedoCount:(unint64_t)count;
- (void)setRemainingUndoCount:(unint64_t)count;
- (void)setSession:(id)session;
- (void)setWindow:(id)window;
- (void)showAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle buttonAction:(id)action;
- (void)showContentWarningWithTitle:(id)title message:(id)message;
- (void)showSmartReplyQuestionnaireWithRect:(CGRect)rect;
- (void)sourceResponderHorizontalSizeClassChanged:(int64_t)changed;
- (void)supressAssistantBarInUIService;
- (void)textSystemWillBeginEditingDuringSessionWithUUID:(id)d;
- (void)updateKeyboardTrackingHeight:(double)height;
- (void)updatePromptEntryState:(int64_t)state;
- (void)willBeginWritingToolsSession:(id)session requestContexts:(id)contexts;
@end

@implementation SceneDelegate

- (void)setWindow:(id)window
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_window) = window;
  windowCopy = window;
}

- (void)setSession:(id)session
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_session);
  *(&self->super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_session) = session;
  sessionCopy = session;
}

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  sub_1000FD0D0(sceneCopy, optionsCopy);
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  sub_1000F687C(disconnectCopy);
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_100105828("SceneDelegate %@: scene did become active");
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  selfCopy = self;
  sub_100105828("SceneDelegate %@: scene will enter foreground");
}

- (void)localKeyboardChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1000F6B08(changedCopy);
}

- (void)remoteKeyboardChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1000F7090(changedCopy);
}

- (void)proofreadingSessionWithUUID:(id)d updateState:(int64_t)state forSuggestionWithUUID:(id)iD
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v15 - v12;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100105C8C(v13, state, v11);
  v14 = *(v7 + 8);
  v14(v11, v6);
  v14(v13, v6);
}

- (void)proofreadingSessionWithUUID:(id)d showDetailsForSuggestionWithUUID:(id)iD relativeToRect:(CGRect)rect inView:(id)view
{
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  __chkstk_darwin(v8);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

- (void)textSystemWillBeginEditingDuringSessionWithUUID:(id)d
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

- (void)didDismissInputWarningforSessionWithUUID:(id)d
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100105D60(v7);
  (*(v4 + 8))(v7, v3);
}

- (void)setRemainingUndoCount:(unint64_t)count
{
  selfCopy = self;
  sub_1000F7CB4(count);
}

- (void)setRemainingRedoCount:(unint64_t)count
{
  selfCopy = self;
  sub_1000F7ECC(count);
}

- (void)willBeginWritingToolsSession:(id)session requestContexts:(id)contexts
{
  v6 = _Block_copy(contexts);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  sessionCopy = session;
  selfCopy = self;
  sub_1000F80DC(session, sub_100105C84, v7);
}

- (void)didEndWritingToolsSession:(id)session accepted:(BOOL)accepted
{
  sessionCopy = session;
  selfCopy = self;
  sub_1000F86BC(sessionCopy, accepted);
}

- (void)endWritingTools
{
  selfCopy = self;
  sub_1000F8AA4(0);
}

- (void)endWritingToolsWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_1000F8AA4(error);
}

- (void)showContentWarningWithTitle:(id)title message:(id)message
{
  if (title)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    messageCopy = message;
    selfCopy = self;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    messageCopy2 = message;
    selfCopy2 = self;
    v7 = 0;
  }

  v10 = [objc_opt_self() actionForShowContentWarningWithTitle:v7 message:message];

  sub_1000FA304(v10);
}

- (void)showAlertWithTitle:(id)title message:(id)message buttonTitle:(id)buttonTitle buttonAction:(id)action
{
  v7 = _Block_copy(action);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v7;
  selfCopy = self;
  sub_1000F8DD4(v8, v10, v11, v13, v14, v16, sub_100106A14, v17);
}

- (void)proofreadingSession:(id)session didUpdateState:(int64_t)state forSuggestionWithUUID:(id)d inContext:(id)context
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = objc_opt_self();
  sessionCopy = session;
  contextCopy = context;
  selfCopy = self;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v20 = [v15 actionForProofreadingSession:sessionCopy didUpdateState:state forSuggestionWithUUID:isa inContext:contextCopy];

  sub_1000FA304(v20);
  (*(v11 + 8))(v14, v10);
}

- (void)preferredContentSizeChanged:(CGSize)changed
{
  height = changed.height;
  width = changed.width;
  selfCopy = self;
  sub_1000F9638(width, height);
}

- (void)showSmartReplyQuestionnaireWithRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  sub_1000F9B18(x, y, width, height);
}

- (void)handoffFromUCBFromTool:(int64_t)tool withPrompt:(id)prompt
{
  if (prompt)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  selfCopy = self;
  sub_1000F9D68(tool, v6, v8);
}

- (void)updateKeyboardTrackingHeight:(double)height
{
  selfCopy = self;
  sub_1000FA170(height);
}

- (void)savePresentationStyle:(int64_t)style
{
  selfCopy = self;
  sub_1000FA4B4(style);
}

- (void)sourceResponderHorizontalSizeClassChanged:(int64_t)changed
{
  selfCopy = self;
  sub_1000FA734(changed);
}

- (void)updatePromptEntryState:(int64_t)state
{
  v5 = objc_opt_self();
  selfCopy = self;
  v6 = [v5 actionForPromptEntryModeUpdateWithState:state];
  sub_1000FA304(v6);
}

- (void)didStartMontaraRefinementForSessionWithUUID:(id)d
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000FB490();

  (*(v5 + 8))(v8, v4);
}

- (void)supressAssistantBarInUIService
{
  activeKeyboardSceneDelegate = [objc_opt_self() activeKeyboardSceneDelegate];
  if (qword_10025A6E0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F34C(v0, qword_100276F08);
  v1 = static os_log_type_t.debug.getter();
  v2 = Logger.logObject.getter();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, v1, "Requested assistant bar suppression", v3, 2u);
  }

  if ([activeKeyboardSceneDelegate respondsToSelector:"setHideSystemInputAssistantViewForWritingTools:"])
  {
    [activeKeyboardSceneDelegate setHideSystemInputAssistantViewForWritingTools:1];
    v4 = activeKeyboardSceneDelegate;
  }

  else
  {
    v5 = static os_log_type_t.error.getter();
    v6 = Logger.logObject.getter();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, v5, "Unexpected failure to request assistant bar suppression", v7, 2u);
    }

    v4 = v6;
  }
}

@end