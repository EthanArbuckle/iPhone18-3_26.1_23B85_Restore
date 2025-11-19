@interface PKPaletteColorPickerControllerFactory
+ (id)makeColorPickerController;
@end

@implementation PKPaletteColorPickerControllerFactory

+ (id)makeColorPickerController
{
  v2 = objc_alloc_init(PKPaletteSystemColorPickerController);

  return v2;
}

@end