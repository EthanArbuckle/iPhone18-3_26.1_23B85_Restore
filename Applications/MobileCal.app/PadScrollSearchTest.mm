@interface PadScrollSearchTest
- (void)navigateToScrollView;
@end

@implementation PadScrollSearchTest

- (void)navigateToScrollView
{
  application = [(ApplicationTest *)self application];
  rootNavigationController = [application rootNavigationController];
  resetToDayView = [rootNavigationController resetToDayView];
  v5 = [rootNavigationController showSearchAnimated:0 becomeFirstResponder:0 completion:0];
  searchResultsController = self->_searchResultsController;
  self->_searchResultsController = v5;
}

@end