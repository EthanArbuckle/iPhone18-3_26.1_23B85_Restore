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
  v4 = [(SiriAcousticIdSpinnerViewController *)self delegate];
  v3 = [(SiriAcousticIdSpinnerViewController *)self view];
  [v4 siriViewController:self didHideVibrantView:v3];
}

@end