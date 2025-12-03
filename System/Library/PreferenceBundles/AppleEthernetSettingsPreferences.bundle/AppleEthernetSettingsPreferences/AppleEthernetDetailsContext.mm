@interface AppleEthernetDetailsContext
- (AppleEthernetDetailsContextDelegate)delegate;
- (void)setIsPrivacyProxyEnabled:(BOOL)enabled;
@end

@implementation AppleEthernetDetailsContext

- (void)setIsPrivacyProxyEnabled:(BOOL)enabled
{
  self->_privacyProxyIsEnabled = enabled;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained detailsContextChanged];
}

- (AppleEthernetDetailsContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end