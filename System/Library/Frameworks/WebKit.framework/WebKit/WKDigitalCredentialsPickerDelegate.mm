@interface WKDigitalCredentialsPickerDelegate
- (WKDigitalCredentialsPickerDelegate)initWithDigitalCredentialsPickerDelegate:(id)delegate;
@end

@implementation WKDigitalCredentialsPickerDelegate

- (WKDigitalCredentialsPickerDelegate)initWithDigitalCredentialsPickerDelegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = WKDigitalCredentialsPickerDelegate;
  v4 = [(WKDigitalCredentialsPickerDelegate *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_digitalCredentialsPickerDelegate.m_weakReference, delegate);
  }

  return v5;
}

@end