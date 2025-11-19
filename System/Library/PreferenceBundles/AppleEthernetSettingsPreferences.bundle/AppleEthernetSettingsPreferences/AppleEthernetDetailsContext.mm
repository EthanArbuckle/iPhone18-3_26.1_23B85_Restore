@interface AppleEthernetDetailsContext
- (AppleEthernetDetailsContextDelegate)delegate;
- (void)setIsPrivacyProxyEnabled:(BOOL)a3;
@end

@implementation AppleEthernetDetailsContext

- (void)setIsPrivacyProxyEnabled:(BOOL)a3
{
  self->_privacyProxyIsEnabled = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained detailsContextChanged];
}

- (AppleEthernetDetailsContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end