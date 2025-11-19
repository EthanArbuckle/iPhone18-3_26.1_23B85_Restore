@interface PKPaletteStandardColorPickerController
- (PKPaletteStandardColorPickerController)init;
@end

@implementation PKPaletteStandardColorPickerController

- (PKPaletteStandardColorPickerController)init
{
  v6.receiver = self;
  v6.super_class = PKPaletteStandardColorPickerController;
  v2 = [(PKPaletteStandardColorPickerController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD258]);
    colorPickerViewController = v2->_colorPickerViewController;
    v2->_colorPickerViewController = v3;

    v2->_colorMaximumLinearExposure = 1.0;
  }

  return v2;
}

@end