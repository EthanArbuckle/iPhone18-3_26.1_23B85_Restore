@interface WKCNContactPickerSingleSelectDelegate
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
@end

@implementation WKCNContactPickerSingleSelectDelegate

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  Weak = objc_loadWeak(&self->super._contactPickerDelegate.m_weakReference);

  [Weak contactPicker:a3 didSelectContact:a4];
}

@end