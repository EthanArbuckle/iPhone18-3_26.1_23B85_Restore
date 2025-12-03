@interface WKCNContactPickerDelegate
- (WKCNContactPickerDelegate)initWithContactPickerDelegate:(id)delegate;
- (void)contactPickerDidCancel:(id)cancel;
@end

@implementation WKCNContactPickerDelegate

- (WKCNContactPickerDelegate)initWithContactPickerDelegate:(id)delegate
{
  v7.receiver = self;
  v7.super_class = WKCNContactPickerDelegate;
  v4 = [(WKCNContactPickerDelegate *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_contactPickerDelegate.m_weakReference, delegate);
  }

  return v5;
}

- (void)contactPickerDidCancel:(id)cancel
{
  Weak = objc_loadWeak(&self->_contactPickerDelegate.m_weakReference);

  [Weak contactPickerDidCancel:cancel];
}

@end