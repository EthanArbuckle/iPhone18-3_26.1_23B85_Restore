@interface SuggestionSheetManager
- (void)suggestionSheetController:(id)a3 didTransitionTo:(unint64_t)a4;
- (void)suggestionSheetController:(id)a3 shouldPerformTask:(unint64_t)a4 forSuggestion:(id)a5;
- (void)suggestionSheetControllerDidCancel:(id)a3;
@end

@implementation SuggestionSheetManager

- (void)suggestionSheetController:(id)a3 didTransitionTo:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  specialized SuggestionSheetManager.suggestionSheetController(_:didTransitionTo:)(a4);
}

- (void)suggestionSheetControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized SuggestionSheetManager.suggestionSheetControllerDidCancel(_:)();
}

- (void)suggestionSheetController:(id)a3 shouldPerformTask:(unint64_t)a4 forSuggestion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = self;
  SuggestionSheetManager.suggestionSheetController(_:shouldPerform:for:)(v8, a4, v9);
}

@end