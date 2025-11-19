@interface WKCNContactPickerMultiSelectDelegate
- (void)contactPicker:(id)a3 didSelectContacts:(id)a4;
@end

@implementation WKCNContactPickerMultiSelectDelegate

- (void)contactPicker:(id)a3 didSelectContacts:(id)a4
{
  Weak = objc_loadWeak(&self->super._contactPickerDelegate.m_weakReference);

  [Weak contactPicker:a3 didSelectContacts:a4];
}

@end