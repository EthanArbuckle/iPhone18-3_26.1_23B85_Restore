@interface SystemAssistantPromptEntryView
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)shouldUseVisualIntelligenceDirectRouting;
- (CGSize)intrinsicContentSize;
- (_TtC4Siri30SystemAssistantPromptEntryView)initWithFrame:(CGRect)frame;
- (_TtC4Siri30SystemAssistantPromptEntryView)initWithFrame:(CGRect)frame dictationReplacementAction:(id)action;
- (_TtP4Siri38SystemAssistantPromptEntryViewDelegate_)delegate;
- (void)animateOutTextFieldAndButton:(id)button;
- (void)clearText;
- (void)closeButtonTapped;
- (void)keyboardWillHideWithNotification:(id)notification;
- (void)layoutSubviews;
- (void)makeTextViewVisible:(BOOL)visible;
- (void)prefillWithText:(id)text;
- (void)promptEntryViewDidSubmitWithoutView;
- (void)promptEntryViewDidSubmitWithoutViewForSuggestionWithInvocationText:(id)text;
- (void)promptEntryViewDidSubmitWithoutViewForSuggestionWithInvocationText:(id)text suggestionRequestType:(int64_t)type;
- (void)resetIsInTamaleAndCollapsed;
- (void)resignKeyboard;
- (void)selectAllText;
- (void)setIsInAmbient:(BOOL)ambient;
- (void)setIsInGenerativeAssistantTextFollowup;
- (void)setKeyboardSuggestions:(id)suggestions;
- (void)setText:(id)text;
- (void)stopLatencyAnimationIfNeeded;
- (void)updateIsInTamaleAndCollapsed:(BOOL)collapsed;
@end

@implementation SystemAssistantPromptEntryView

- (BOOL)shouldUseVisualIntelligenceDirectRouting
{
  if (*(self + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_requestSourceIsQuickTypeTamale) == 1)
  {
    v5 = &type metadata for SiriUIFeaturesFlags;
    v6 = sub_100017934();
    v4[0] = 2;
    v2 = isFeatureEnabled(_:)();
    sub_100006114(v4);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (CGSize)intrinsicContentSize
{
  [*(self + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView) intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtP4Siri38SystemAssistantPromptEntryViewDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC4Siri30SystemAssistantPromptEntryView)initWithFrame:(CGRect)frame dictationReplacementAction:(id)action
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  actionCopy = action;
  return sub_1000BC860(action, x, y, width, height);
}

- (void)keyboardWillHideWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000BDA50();

  (*(v5 + 8))(v7, v4);
}

- (void)setIsInAmbient:(BOOL)ambient
{
  selfCopy = self;
  dispatch thunk of IntelligenceUI.PromptEntryView.isLeadingButtonVisible.setter();
}

- (void)updateIsInTamaleAndCollapsed:(BOOL)collapsed
{
  selfCopy = self;
  sub_1000BDDE8(collapsed);
}

- (void)resetIsInTamaleAndCollapsed
{
  selfCopy = self;
  sub_1000BED84();
}

- (void)animateOutTextFieldAndButton:(id)button
{
  v4 = _Block_copy(button);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1000C0610(sub_1000C49A8, v5);
}

- (void)closeButtonTapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong tamaleCloseButtonTapped];

    swift_unknownObjectRelease();
  }
}

- (void)setText:(id)text
{
  textCopy = text;
  selfCopy = self;
  v5 = IntelligenceUI.PromptEntryView.textView.getter();
  [v5 setText:textCopy];
}

- (void)clearText
{
  v3 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView;
  selfCopy = self;
  v4 = IntelligenceUI.PromptEntryView.textView.getter();
  v5 = String._bridgeToObjectiveC()();
  [v4 setText:v5];

  [*(self + v3) invalidateIntrinsicContentSize];
}

- (void)resignKeyboard
{
  v2 = UIApp;
  if (UIApp)
  {
    v3 = SASPPTTestNameSiriBringupToTyping;
    selfCopy = self;
    [v2 finishedIPTest:v3];
    v5 = IntelligenceUI.PromptEntryView.textView.getter();
    [v5 resignFirstResponder];
  }

  else
  {
    __break(1u);
  }
}

- (void)prefillWithText:(id)text
{
  v4 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView;
  textCopy = text;
  selfCopy = self;
  v6 = IntelligenceUI.PromptEntryView.textView.getter();
  [v6 setText:textCopy];

  [*(self + v4) invalidateIntrinsicContentSize];
  sub_1000C34CC();
}

- (void)setIsInGenerativeAssistantTextFollowup
{
  selfCopy = self;
  sub_1000C106C();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000C17B4();
}

- (BOOL)becomeFirstResponder
{
  selfCopy = self;
  v3 = IntelligenceUI.PromptEntryView.textView.getter();
  becomeFirstResponder = [v3 becomeFirstResponder];

  return becomeFirstResponder;
}

- (BOOL)resignFirstResponder
{
  selfCopy = self;
  v3 = sub_1000C18FC();

  return v3 & 1;
}

- (void)promptEntryViewDidSubmitWithoutViewForSuggestionWithInvocationText:(id)text
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_textIsProvidedBySuggestion) = 1;
  v5 = (self + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_invocationTextForSuggestion);
  *v5 = v4;
  v5[1] = v6;
  selfCopy = self;

  sub_1000C3AFC();
}

- (void)promptEntryViewDidSubmitWithoutViewForSuggestionWithInvocationText:(id)text suggestionRequestType:(int64_t)type
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_textIsProvidedBySuggestion) = 1;
  v7 = (self + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_invocationTextForSuggestion);
  *v7 = v6;
  v7[1] = v8;
  selfCopy = self;

  *(selfCopy + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_suggestionRequestTypeForSuggestionText) = type;

  sub_1000C3AFC();
}

- (void)promptEntryViewDidSubmitWithoutView
{
  selfCopy = self;
  sub_1000C3AFC();
}

- (void)makeTextViewVisible:(BOOL)visible
{
  visibleCopy = visible;
  selfCopy = self;
  v4 = IntelligenceUI.PromptEntryView.textView.getter();
  v5 = v4;
  v6 = 0.0;
  if (visibleCopy)
  {
    v6 = 1.0;
  }

  [v4 setAlpha:v6];
}

- (void)stopLatencyAnimationIfNeeded
{
  selfCopy = self;
  sub_1000C1E34();
}

- (void)setKeyboardSuggestions:(id)suggestions
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000C2250(v4);
}

- (void)selectAllText
{
  selfCopy = self;
  v2 = IntelligenceUI.PromptEntryView.textView.getter();
  [v2 selectAll:0];
}

- (_TtC4Siri30SystemAssistantPromptEntryView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end