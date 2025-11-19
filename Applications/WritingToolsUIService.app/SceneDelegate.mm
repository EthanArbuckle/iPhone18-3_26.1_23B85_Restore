@interface SceneDelegate
- (void)didDismissInputWarningforSessionWithUUID:(id)a3;
- (void)didEndWritingToolsSession:(id)a3 accepted:(BOOL)a4;
- (void)didStartMontaraRefinementForSessionWithUUID:(id)a3;
- (void)endWritingTools;
- (void)endWritingToolsWithError:(id)a3;
- (void)handoffFromUCBFromTool:(int64_t)a3 withPrompt:(id)a4;
- (void)localKeyboardChanged:(id)a3;
- (void)preferredContentSizeChanged:(CGSize)a3;
- (void)proofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6;
- (void)proofreadingSessionWithUUID:(id)a3 showDetailsForSuggestionWithUUID:(id)a4 relativeToRect:(CGRect)a5 inView:(id)a6;
- (void)proofreadingSessionWithUUID:(id)a3 updateState:(int64_t)a4 forSuggestionWithUUID:(id)a5;
- (void)remoteKeyboardChanged:(id)a3;
- (void)savePresentationStyle:(int64_t)a3;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)setRemainingRedoCount:(unint64_t)a3;
- (void)setRemainingUndoCount:(unint64_t)a3;
- (void)setSession:(id)a3;
- (void)setWindow:(id)a3;
- (void)showAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 buttonAction:(id)a6;
- (void)showContentWarningWithTitle:(id)a3 message:(id)a4;
- (void)showSmartReplyQuestionnaireWithRect:(CGRect)a3;
- (void)sourceResponderHorizontalSizeClassChanged:(int64_t)a3;
- (void)supressAssistantBarInUIService;
- (void)textSystemWillBeginEditingDuringSessionWithUUID:(id)a3;
- (void)updateKeyboardTrackingHeight:(double)a3;
- (void)updatePromptEntryState:(int64_t)a3;
- (void)willBeginWritingToolsSession:(id)a3 requestContexts:(id)a4;
@end

@implementation SceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_window) = a3;
  v3 = a3;
}

- (void)setSession:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_session);
  *(&self->super.super.isa + OBJC_IVAR____TtC21WritingToolsUIService13SceneDelegate_session) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000FD0D0(v8, v10);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000F687C(v4);
}

- (void)sceneDidBecomeActive:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100105828("SceneDelegate %@: scene did become active");
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100105828("SceneDelegate %@: scene will enter foreground");
}

- (void)localKeyboardChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000F6B08(v4);
}

- (void)remoteKeyboardChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000F7090(v4);
}

- (void)proofreadingSessionWithUUID:(id)a3 updateState:(int64_t)a4 forSuggestionWithUUID:(id)a5
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
  sub_100105C8C(v13, a4, v11);
  v14 = *(v7 + 8);
  v14(v11, v6);
  v14(v13, v6);
}

- (void)proofreadingSessionWithUUID:(id)a3 showDetailsForSuggestionWithUUID:(id)a4 relativeToRect:(CGRect)a5 inView:(id)a6
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

- (void)textSystemWillBeginEditingDuringSessionWithUUID:(id)a3
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

- (void)didDismissInputWarningforSessionWithUUID:(id)a3
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

- (void)setRemainingUndoCount:(unint64_t)a3
{
  v4 = self;
  sub_1000F7CB4(a3);
}

- (void)setRemainingRedoCount:(unint64_t)a3
{
  v4 = self;
  sub_1000F7ECC(a3);
}

- (void)willBeginWritingToolsSession:(id)a3 requestContexts:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_1000F80DC(a3, sub_100105C84, v7);
}

- (void)didEndWritingToolsSession:(id)a3 accepted:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1000F86BC(v6, a4);
}

- (void)endWritingTools
{
  v2 = self;
  sub_1000F8AA4(0);
}

- (void)endWritingToolsWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_1000F8AA4(a3);
}

- (void)showContentWarningWithTitle:(id)a3 message:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = a4;
    v6 = self;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
    v9 = self;
    v7 = 0;
  }

  v10 = [objc_opt_self() actionForShowContentWarningWithTitle:v7 message:a4];

  sub_1000FA304(v10);
}

- (void)showAlertWithTitle:(id)a3 message:(id)a4 buttonTitle:(id)a5 buttonAction:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v7;
  v18 = self;
  sub_1000F8DD4(v8, v10, v11, v13, v14, v16, sub_100106A14, v17);
}

- (void)proofreadingSession:(id)a3 didUpdateState:(int64_t)a4 forSuggestionWithUUID:(id)a5 inContext:(id)a6
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = objc_opt_self();
  v16 = a3;
  v17 = a6;
  v18 = self;
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v20 = [v15 actionForProofreadingSession:v16 didUpdateState:a4 forSuggestionWithUUID:isa inContext:v17];

  sub_1000FA304(v20);
  (*(v11 + 8))(v14, v10);
}

- (void)preferredContentSizeChanged:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_1000F9638(width, height);
}

- (void)showSmartReplyQuestionnaireWithRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_1000F9B18(x, y, width, height);
}

- (void)handoffFromUCBFromTool:(int64_t)a3 withPrompt:(id)a4
{
  if (a4)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = self;
  sub_1000F9D68(a3, v6, v8);
}

- (void)updateKeyboardTrackingHeight:(double)a3
{
  v4 = self;
  sub_1000FA170(a3);
}

- (void)savePresentationStyle:(int64_t)a3
{
  v4 = self;
  sub_1000FA4B4(a3);
}

- (void)sourceResponderHorizontalSizeClassChanged:(int64_t)a3
{
  v4 = self;
  sub_1000FA734(a3);
}

- (void)updatePromptEntryState:(int64_t)a3
{
  v5 = objc_opt_self();
  v7 = self;
  v6 = [v5 actionForPromptEntryModeUpdateWithState:a3];
  sub_1000FA304(v6);
}

- (void)didStartMontaraRefinementForSessionWithUUID:(id)a3
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
  sub_1000FB490();

  (*(v5 + 8))(v8, v4);
}

- (void)supressAssistantBarInUIService
{
  v8 = [objc_opt_self() activeKeyboardSceneDelegate];
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

  if ([v8 respondsToSelector:"setHideSystemInputAssistantViewForWritingTools:"])
  {
    [v8 setHideSystemInputAssistantViewForWritingTools:1];
    v4 = v8;
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