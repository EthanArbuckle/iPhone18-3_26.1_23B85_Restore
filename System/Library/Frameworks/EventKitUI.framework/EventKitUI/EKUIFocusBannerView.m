@interface EKUIFocusBannerView
- (EKUIFocusBannerViewDelegate)delegate;
@end

@implementation EKUIFocusBannerView

- (EKUIFocusBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end