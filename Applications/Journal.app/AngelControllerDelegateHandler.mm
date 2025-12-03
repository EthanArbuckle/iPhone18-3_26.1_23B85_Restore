@interface AngelControllerDelegateHandler
- (_TtC7JournalP33_C5BE6988A08BB0DB179AC7EC1D49D5B530AngelControllerDelegateHandler)init;
- (void)suggestionSheetController:(id)controller didTransitionTo:(unint64_t)to;
- (void)suggestionSheetController:(id)controller shouldPerformTask:(unint64_t)task forSuggestion:(id)suggestion;
- (void)suggestionSheetControllerDidCancel:(id)cancel;
- (void)suggestionSheetControllerShouldShowBlankComposeView:(id)view;
@end

@implementation AngelControllerDelegateHandler

- (void)suggestionSheetController:(id)controller didTransitionTo:(unint64_t)to
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC7JournalP33_C5BE6988A08BB0DB179AC7EC1D49D5B530AngelControllerDelegateHandler_onDidTransitionTo);
  selfCopy = self;
  v5(to);
}

- (void)suggestionSheetControllerDidCancel:(id)cancel
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC7JournalP33_C5BE6988A08BB0DB179AC7EC1D49D5B530AngelControllerDelegateHandler_onCancel);
  selfCopy = self;
  v3();
}

- (void)suggestionSheetControllerShouldShowBlankComposeView:(id)view
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC7JournalP33_C5BE6988A08BB0DB179AC7EC1D49D5B530AngelControllerDelegateHandler_onCreateBlankEntry);
  selfCopy = self;
  v3();
}

- (void)suggestionSheetController:(id)controller shouldPerformTask:(unint64_t)task forSuggestion:(id)suggestion
{
  v7 = *(&self->super.isa + OBJC_IVAR____TtC7JournalP33_C5BE6988A08BB0DB179AC7EC1D49D5B530AngelControllerDelegateHandler_onPerformTask);
  suggestionCopy = suggestion;
  selfCopy = self;
  v7(task, suggestionCopy);
}

- (_TtC7JournalP33_C5BE6988A08BB0DB179AC7EC1D49D5B530AngelControllerDelegateHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end