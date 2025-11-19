@interface SystemAssistantPromptEntryView
- (BOOL)becomeFirstResponder;
- (BOOL)resignFirstResponder;
- (BOOL)shouldUseVisualIntelligenceDirectRouting;
- (CGSize)intrinsicContentSize;
- (_TtC4Siri30SystemAssistantPromptEntryView)initWithFrame:(CGRect)a3;
- (_TtC4Siri30SystemAssistantPromptEntryView)initWithFrame:(CGRect)a3 dictationReplacementAction:(id)a4;
- (_TtP4Siri38SystemAssistantPromptEntryViewDelegate_)delegate;
- (void)animateOutTextFieldAndButton:(id)a3;
- (void)clearText;
- (void)closeButtonTapped;
- (void)keyboardWillHideWithNotification:(id)a3;
- (void)layoutSubviews;
- (void)makeTextViewVisible:(BOOL)a3;
- (void)prefillWithText:(id)a3;
- (void)promptEntryViewDidSubmitWithoutView;
- (void)promptEntryViewDidSubmitWithoutViewForSuggestionWithInvocationText:(id)a3;
- (void)promptEntryViewDidSubmitWithoutViewForSuggestionWithInvocationText:(id)a3 suggestionRequestType:(int64_t)a4;
- (void)resetIsInTamaleAndCollapsed;
- (void)resignKeyboard;
- (void)selectAllText;
- (void)setIsInAmbient:(BOOL)a3;
- (void)setIsInGenerativeAssistantTextFollowup;
- (void)setKeyboardSuggestions:(id)a3;
- (void)setText:(id)a3;
- (void)stopLatencyAnimationIfNeeded;
- (void)updateIsInTamaleAndCollapsed:(BOOL)a3;
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

- (_TtC4Siri30SystemAssistantPromptEntryView)initWithFrame:(CGRect)a3 dictationReplacementAction:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  return sub_1000BC860(a4, x, y, width, height);
}

- (void)keyboardWillHideWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1000BDA50();

  (*(v5 + 8))(v7, v4);
}

- (void)setIsInAmbient:(BOOL)a3
{
  v3 = self;
  dispatch thunk of IntelligenceUI.PromptEntryView.isLeadingButtonVisible.setter();
}

- (void)updateIsInTamaleAndCollapsed:(BOOL)a3
{
  v4 = self;
  sub_1000BDDE8(a3);
}

- (void)resetIsInTamaleAndCollapsed
{
  v2 = self;
  sub_1000BED84();
}

- (void)animateOutTextFieldAndButton:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
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

- (void)setText:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = IntelligenceUI.PromptEntryView.textView.getter();
  [v5 setText:v4];
}

- (void)clearText
{
  v3 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView;
  v6 = self;
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
    v4 = self;
    [v2 finishedIPTest:v3];
    v5 = IntelligenceUI.PromptEntryView.textView.getter();
    [v5 resignFirstResponder];
  }

  else
  {
    __break(1u);
  }
}

- (void)prefillWithText:(id)a3
{
  v4 = OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_entryView;
  v5 = a3;
  v7 = self;
  v6 = IntelligenceUI.PromptEntryView.textView.getter();
  [v6 setText:v5];

  [*(self + v4) invalidateIntrinsicContentSize];
  sub_1000C34CC();
}

- (void)setIsInGenerativeAssistantTextFollowup
{
  v2 = self;
  sub_1000C106C();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1000C17B4();
}

- (BOOL)becomeFirstResponder
{
  v2 = self;
  v3 = IntelligenceUI.PromptEntryView.textView.getter();
  v4 = [v3 becomeFirstResponder];

  return v4;
}

- (BOOL)resignFirstResponder
{
  v2 = self;
  v3 = sub_1000C18FC();

  return v3 & 1;
}

- (void)promptEntryViewDidSubmitWithoutViewForSuggestionWithInvocationText:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_textIsProvidedBySuggestion) = 1;
  v5 = (self + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_invocationTextForSuggestion);
  *v5 = v4;
  v5[1] = v6;
  v7 = self;

  sub_1000C3AFC();
}

- (void)promptEntryViewDidSubmitWithoutViewForSuggestionWithInvocationText:(id)a3 suggestionRequestType:(int64_t)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_textIsProvidedBySuggestion) = 1;
  v7 = (self + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_invocationTextForSuggestion);
  *v7 = v6;
  v7[1] = v8;
  v9 = self;

  *(v9 + OBJC_IVAR____TtC4Siri30SystemAssistantPromptEntryView_suggestionRequestTypeForSuggestionText) = a4;

  sub_1000C3AFC();
}

- (void)promptEntryViewDidSubmitWithoutView
{
  v2 = self;
  sub_1000C3AFC();
}

- (void)makeTextViewVisible:(BOOL)a3
{
  v3 = a3;
  v7 = self;
  v4 = IntelligenceUI.PromptEntryView.textView.getter();
  v5 = v4;
  v6 = 0.0;
  if (v3)
  {
    v6 = 1.0;
  }

  [v4 setAlpha:v6];
}

- (void)stopLatencyAnimationIfNeeded
{
  v2 = self;
  sub_1000C1E34();
}

- (void)setKeyboardSuggestions:(id)a3
{
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_1000C2250(v4);
}

- (void)selectAllText
{
  v3 = self;
  v2 = IntelligenceUI.PromptEntryView.textView.getter();
  [v2 selectAll:0];
}

- (_TtC4Siri30SystemAssistantPromptEntryView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end