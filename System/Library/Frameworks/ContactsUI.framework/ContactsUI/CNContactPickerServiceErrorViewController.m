@interface CNContactPickerServiceErrorViewController
- (CNContactPickerContentDelegate)delegate;
@end

@implementation CNContactPickerServiceErrorViewController

- (CNContactPickerContentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end