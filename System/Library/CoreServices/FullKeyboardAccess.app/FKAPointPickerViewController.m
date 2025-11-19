@interface FKAPointPickerViewController
- (FKAPointPickerViewControllerDelegate)delegate;
@end

@implementation FKAPointPickerViewController

- (FKAPointPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end