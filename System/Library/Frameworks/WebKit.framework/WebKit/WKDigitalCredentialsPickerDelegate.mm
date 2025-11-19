@interface WKDigitalCredentialsPickerDelegate
- (WKDigitalCredentialsPickerDelegate)initWithDigitalCredentialsPickerDelegate:(id)a3;
@end

@implementation WKDigitalCredentialsPickerDelegate

- (WKDigitalCredentialsPickerDelegate)initWithDigitalCredentialsPickerDelegate:(id)a3
{
  v7.receiver = self;
  v7.super_class = WKDigitalCredentialsPickerDelegate;
  v4 = [(WKDigitalCredentialsPickerDelegate *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_digitalCredentialsPickerDelegate.m_weakReference, a3);
  }

  return v5;
}

@end