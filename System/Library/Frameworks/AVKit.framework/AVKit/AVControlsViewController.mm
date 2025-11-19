@interface AVControlsViewController
- (AVControlsViewController)init;
- (AVControlsViewControllerDelegate)delegate;
@end

@implementation AVControlsViewController

- (AVControlsViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AVControlsViewController)init
{
  v3.receiver = self;
  v3.super_class = AVControlsViewController;
  result = [(AVControlsViewController *)&v3 init];
  if (result)
  {
    result->_visibleControls = 0;
    result->_requiresLinearPlayback = 0;
  }

  return result;
}

@end