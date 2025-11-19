@interface PKPaletteSystemColorPickerController
- (BOOL)_shouldConvertColorPickerColorFromDarkToLight;
- (BOOL)supportsAlpha;
- (PKPaletteSystemColorPickerController)init;
- (id)selectedColor;
- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5;
- (void)dismissEyeDropper;
- (void)setSelectedColor:(id)a3;
- (void)setSupportsAlpha:(BOOL)a3;
@end

@implementation PKPaletteSystemColorPickerController

- (PKPaletteSystemColorPickerController)init
{
  v6.receiver = self;
  v6.super_class = PKPaletteSystemColorPickerController;
  v2 = [(PKPaletteSystemColorPickerController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DC8A0]);
    colorPickerViewController = v2->_colorPickerViewController;
    v2->_colorPickerViewController = v3;

    [(UIColorPickerViewController *)v2->_colorPickerViewController _setShouldUseDarkGridInDarkMode:1];
    [(UIColorPickerViewController *)v2->_colorPickerViewController setDelegate:v2];
    v2->_colorMaximumLinearExposure = 1.0;
  }

  return v2;
}

- (void)dismissEyeDropper
{
  v3 = os_log_create("com.apple.pencilkit", "PKPalette");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C7CCA000, v3, OS_LOG_TYPE_DEFAULT, "Dismiss eye dropper, don't reshow color picker.", v5, 2u);
  }

  v4 = [(PKPaletteSystemColorPickerController *)self colorPickerViewController];
  [v4 dismissEyedropper:0];
}

- (id)selectedColor
{
  v3 = [(PKPaletteSystemColorPickerController *)self colorPickerViewController];
  v4 = [v3 selectedColor];

  if ([(PKPaletteSystemColorPickerController *)self _shouldConvertColorPickerColorFromDarkToLight])
  {
    v5 = MEMORY[0x1E69DC888];
    v6 = [(PKPaletteSystemColorPickerController *)self colorPickerViewController];
    v7 = [v6 selectedColor];
    v8 = [v5 pk_convertColorPickerColor:v7 fromUserInterfaceStyle:2 to:1];

    v4 = v8;
  }

  return v4;
}

- (void)setSelectedColor:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (v4)
  {
    v5 = v4;
    if ([(PKPaletteSystemColorPickerController *)self _shouldConvertColorPickerColorFromDarkToLight])
    {
      v6 = [MEMORY[0x1E69DC888] pk_convertColorPickerColor:v5 fromUserInterfaceStyle:2 to:1];

      v5 = v6;
    }

    v7 = [(PKPaletteSystemColorPickerController *)self colorPickerViewController];
    [v7 setSelectedColor:v5];
  }

  else
  {
    v5 = [(PKPaletteSystemColorPickerController *)self colorPickerViewController];
    [v5 setSelectedColor:0];
  }
}

- (BOOL)supportsAlpha
{
  v2 = [(PKPaletteSystemColorPickerController *)self colorPickerViewController];
  v3 = [v2 supportsAlpha];

  return v3;
}

- (void)setSupportsAlpha:(BOOL)a3
{
  v3 = a3;
  v4 = [(PKPaletteSystemColorPickerController *)self colorPickerViewController];
  [v4 setSupportsAlpha:v3];
}

- (BOOL)_shouldConvertColorPickerColorFromDarkToLight
{
  if ([(PKPaletteSystemColorPickerController *)self colorUserInterfaceStyle]&& [(PKPaletteSystemColorPickerController *)self colorUserInterfaceStyle]!= 2)
  {
    return 0;
  }

  v3 = [(PKPaletteSystemColorPickerController *)self colorPickerViewController];
  v4 = [v3 traitCollection];
  v5 = [v4 userInterfaceStyle] == 2;

  return v5;
}

- (void)colorPickerViewController:(id)a3 didSelectColor:(id)a4 continuously:(BOOL)a5
{
  v5 = a5;
  v7 = [(PKPaletteBaseColorPickerController *)self delegate:a3];
  [v7 colorPickerControllerDidChangeSelectedColor:self isContinuousColorSelection:v5];
}

@end