@interface SuggestionSheetManager
- (void)suggestionSheetController:(id)controller didTransitionTo:(unint64_t)to;
- (void)suggestionSheetController:(id)controller shouldPerformTask:(unint64_t)task forSuggestion:(id)suggestion;
- (void)suggestionSheetControllerDidCancel:(id)cancel;
@end

@implementation SuggestionSheetManager

- (void)suggestionSheetController:(id)controller didTransitionTo:(unint64_t)to
{
  controllerCopy = controller;
  selfCopy = self;
  specialized SuggestionSheetManager.suggestionSheetController(_:didTransitionTo:)(to);
}

- (void)suggestionSheetControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  specialized SuggestionSheetManager.suggestionSheetControllerDidCancel(_:)();
}

- (void)suggestionSheetController:(id)controller shouldPerformTask:(unint64_t)task forSuggestion:(id)suggestion
{
  controllerCopy = controller;
  suggestionCopy = suggestion;
  selfCopy = self;
  SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)(controllerCopy, task, suggestionCopy);
}

@end