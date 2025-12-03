@interface WKCNContactPickerSingleSelectDelegate
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
@end

@implementation WKCNContactPickerSingleSelectDelegate

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  Weak = objc_loadWeak(&self->super._contactPickerDelegate.m_weakReference);

  [Weak contactPicker:picker didSelectContact:contact];
}

@end