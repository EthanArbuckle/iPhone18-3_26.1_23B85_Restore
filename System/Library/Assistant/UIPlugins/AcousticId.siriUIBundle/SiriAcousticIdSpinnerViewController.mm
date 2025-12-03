@interface SiriAcousticIdSpinnerViewController
- (void)_aceObjectViewControllerWillBeRemoved;
- (void)loadView;
@end

@implementation SiriAcousticIdSpinnerViewController

- (void)loadView
{
  v3 = [[SiriAcousticIdSpinnerView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  [(SiriAcousticIdSpinnerViewController *)self setView:v3];
}

- (void)_aceObjectViewControllerWillBeRemoved
{
  delegate = [(SiriAcousticIdSpinnerViewController *)self delegate];
  view = [(SiriAcousticIdSpinnerViewController *)self view];
  [delegate siriViewController:self didHideVibrantView:view];
}

@end