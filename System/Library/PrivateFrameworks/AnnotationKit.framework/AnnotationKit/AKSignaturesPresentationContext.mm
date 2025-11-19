@interface AKSignaturesPresentationContext
- (UIView)sourceView;
- (UIViewController)presentingViewController;
@end

@implementation AKSignaturesPresentationContext

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

@end