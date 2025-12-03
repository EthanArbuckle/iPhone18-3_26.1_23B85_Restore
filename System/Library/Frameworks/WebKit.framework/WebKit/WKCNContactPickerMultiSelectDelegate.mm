@interface WKCNContactPickerMultiSelectDelegate
- (void)contactPicker:(id)picker didSelectContacts:(id)contacts;
@end

@implementation WKCNContactPickerMultiSelectDelegate

- (void)contactPicker:(id)picker didSelectContacts:(id)contacts
{
  Weak = objc_loadWeak(&self->super._contactPickerDelegate.m_weakReference);

  [Weak contactPicker:picker didSelectContacts:contacts];
}

@end