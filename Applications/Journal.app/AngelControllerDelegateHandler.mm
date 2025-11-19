@interface AngelControllerDelegateHandler
- (_TtC7JournalP33_C5BE6988A08BB0DB179AC7EC1D49D5B530AngelControllerDelegateHandler)init;
- (void)suggestionSheetController:(id)a3 didTransitionTo:(unint64_t)a4;
- (void)suggestionSheetController:(id)a3 shouldPerformTask:(unint64_t)a4 forSuggestion:(id)a5;
- (void)suggestionSheetControllerDidCancel:(id)a3;
- (void)suggestionSheetControllerShouldShowBlankComposeView:(id)a3;
@end

@implementation AngelControllerDelegateHandler

- (void)suggestionSheetController:(id)a3 didTransitionTo:(unint64_t)a4
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC7JournalP33_C5BE6988A08BB0DB179AC7EC1D49D5B530AngelControllerDelegateHandler_onDidTransitionTo);
  v6 = self;
  v5(a4);
}

- (void)suggestionSheetControllerDidCancel:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC7JournalP33_C5BE6988A08BB0DB179AC7EC1D49D5B530AngelControllerDelegateHandler_onCancel);
  v4 = self;
  v3();
}

- (void)suggestionSheetControllerShouldShowBlankComposeView:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC7JournalP33_C5BE6988A08BB0DB179AC7EC1D49D5B530AngelControllerDelegateHandler_onCreateBlankEntry);
  v4 = self;
  v3();
}

- (void)suggestionSheetController:(id)a3 shouldPerformTask:(unint64_t)a4 forSuggestion:(id)a5
{
  v7 = *(&self->super.isa + OBJC_IVAR____TtC7JournalP33_C5BE6988A08BB0DB179AC7EC1D49D5B530AngelControllerDelegateHandler_onPerformTask);
  v9 = a5;
  v8 = self;
  v7(a4, v9);
}

- (_TtC7JournalP33_C5BE6988A08BB0DB179AC7EC1D49D5B530AngelControllerDelegateHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end