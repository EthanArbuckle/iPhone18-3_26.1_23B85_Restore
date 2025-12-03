@interface PHAbstractDialerView
- (id)senderIdentityMenuForDialerField:(id)field selectedSenderIdentity:(id)identity;
- (void)dealloc;
- (void)dialerField:(id)field stringWasPasted:(id)pasted;
- (void)dialerLCDFieldTextDidChange:(id)change;
- (void)updateIDSStatus;
@end

@implementation PHAbstractDialerView

- (void)dealloc
{
  [(DialerLCDFieldProtocol *)self->_lcdView setDelegate:0];
  v3.receiver = self;
  v3.super_class = PHAbstractDialerView;
  [(PHAbstractDialerView *)&v3 dealloc];
}

- (void)dialerLCDFieldTextDidChange:(id)change
{
  if (self->_lcdView == change)
  {
    delegate = self->_delegate;
    if (objc_opt_respondsToSelector())
    {
      v5 = self->_delegate;

      [(DialerViewDelegate *)v5 dialerViewTextDidChange:self];
    }
  }
}

- (void)dialerField:(id)field stringWasPasted:(id)pasted
{
  pastedCopy = pasted;
  if (self->_lcdView == field)
  {
    delegate = self->_delegate;
    v8 = pastedCopy;
    if (objc_opt_respondsToSelector())
    {
      [(DialerViewDelegate *)self->_delegate dialerView:self stringWasPasted:v8];
    }
  }

  _objc_release_x2();
}

- (id)senderIdentityMenuForDialerField:(id)field selectedSenderIdentity:(id)identity
{
  identityCopy = identity;
  if (self->_lcdView == field && (delegate = self->_delegate, (objc_opt_respondsToSelector() & 1) != 0))
  {
    v8 = [(DialerViewDelegate *)self->_delegate senderIdentityMenuForDialerView:self selectedSenderIdentity:identityCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)updateIDSStatus
{
  delegate = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    v4 = self->_delegate;

    [(DialerViewDelegate *)v4 updateIDSStatus];
  }
}

@end