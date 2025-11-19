@interface PadScrollSearchTest
- (void)navigateToScrollView;
@end

@implementation PadScrollSearchTest

- (void)navigateToScrollView
{
  v7 = [(ApplicationTest *)self application];
  v3 = [v7 rootNavigationController];
  v4 = [v3 resetToDayView];
  v5 = [v3 showSearchAnimated:0 becomeFirstResponder:0 completion:0];
  searchResultsController = self->_searchResultsController;
  self->_searchResultsController = v5;
}

@end