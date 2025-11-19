@interface SFNanoDomainContainerView
- (_SFBrowserView)browserView;
@end

@implementation SFNanoDomainContainerView

- (_SFBrowserView)browserView
{
  WeakRetained = objc_loadWeakRetained(&self->_browserView);

  return WeakRetained;
}

@end