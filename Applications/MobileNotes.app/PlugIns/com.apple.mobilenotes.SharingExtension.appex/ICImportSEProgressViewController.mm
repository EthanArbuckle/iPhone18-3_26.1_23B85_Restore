@interface ICImportSEProgressViewController
- (UIActivityIndicatorView)statusActivityIndicator;
- (UILabel)statusLabel;
@end

@implementation ICImportSEProgressViewController

- (UILabel)statusLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_statusLabel);

  return WeakRetained;
}

- (UIActivityIndicatorView)statusActivityIndicator
{
  WeakRetained = objc_loadWeakRetained(&self->_statusActivityIndicator);

  return WeakRetained;
}

@end