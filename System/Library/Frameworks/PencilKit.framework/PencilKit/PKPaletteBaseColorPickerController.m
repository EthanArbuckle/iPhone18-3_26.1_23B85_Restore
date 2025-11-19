@interface PKPaletteBaseColorPickerController
- (PKPaletteColorPickerControllerDelegate)delegate;
@end

@implementation PKPaletteBaseColorPickerController

- (PKPaletteColorPickerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end