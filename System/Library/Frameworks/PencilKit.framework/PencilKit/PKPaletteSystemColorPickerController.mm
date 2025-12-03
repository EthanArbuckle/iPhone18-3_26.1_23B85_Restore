@interface PKPaletteSystemColorPickerController
- (BOOL)_shouldConvertColorPickerColorFromDarkToLight;
- (BOOL)supportsAlpha;
- (PKPaletteSystemColorPickerController)init;
- (id)selectedColor;
- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously;
- (void)dismissEyeDropper;
- (void)setSelectedColor:(id)color;
- (void)setSupportsAlpha:(BOOL)alpha;
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

  colorPickerViewController = [(PKPaletteSystemColorPickerController *)self colorPickerViewController];
  [colorPickerViewController dismissEyedropper:0];
}

- (id)selectedColor
{
  colorPickerViewController = [(PKPaletteSystemColorPickerController *)self colorPickerViewController];
  selectedColor = [colorPickerViewController selectedColor];

  if ([(PKPaletteSystemColorPickerController *)self _shouldConvertColorPickerColorFromDarkToLight])
  {
    v5 = MEMORY[0x1E69DC888];
    colorPickerViewController2 = [(PKPaletteSystemColorPickerController *)self colorPickerViewController];
    selectedColor2 = [colorPickerViewController2 selectedColor];
    v8 = [v5 pk_convertColorPickerColor:selectedColor2 fromUserInterfaceStyle:2 to:1];

    selectedColor = v8;
  }

  return selectedColor;
}

- (void)setSelectedColor:(id)color
{
  colorCopy = color;
  v8 = colorCopy;
  if (colorCopy)
  {
    colorPickerViewController2 = colorCopy;
    if ([(PKPaletteSystemColorPickerController *)self _shouldConvertColorPickerColorFromDarkToLight])
    {
      v6 = [MEMORY[0x1E69DC888] pk_convertColorPickerColor:colorPickerViewController2 fromUserInterfaceStyle:2 to:1];

      colorPickerViewController2 = v6;
    }

    colorPickerViewController = [(PKPaletteSystemColorPickerController *)self colorPickerViewController];
    [colorPickerViewController setSelectedColor:colorPickerViewController2];
  }

  else
  {
    colorPickerViewController2 = [(PKPaletteSystemColorPickerController *)self colorPickerViewController];
    [colorPickerViewController2 setSelectedColor:0];
  }
}

- (BOOL)supportsAlpha
{
  colorPickerViewController = [(PKPaletteSystemColorPickerController *)self colorPickerViewController];
  supportsAlpha = [colorPickerViewController supportsAlpha];

  return supportsAlpha;
}

- (void)setSupportsAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  colorPickerViewController = [(PKPaletteSystemColorPickerController *)self colorPickerViewController];
  [colorPickerViewController setSupportsAlpha:alphaCopy];
}

- (BOOL)_shouldConvertColorPickerColorFromDarkToLight
{
  if ([(PKPaletteSystemColorPickerController *)self colorUserInterfaceStyle]&& [(PKPaletteSystemColorPickerController *)self colorUserInterfaceStyle]!= 2)
  {
    return 0;
  }

  colorPickerViewController = [(PKPaletteSystemColorPickerController *)self colorPickerViewController];
  traitCollection = [colorPickerViewController traitCollection];
  v5 = [traitCollection userInterfaceStyle] == 2;

  return v5;
}

- (void)colorPickerViewController:(id)controller didSelectColor:(id)color continuously:(BOOL)continuously
{
  continuouslyCopy = continuously;
  v7 = [(PKPaletteBaseColorPickerController *)self delegate:controller];
  [v7 colorPickerControllerDidChangeSelectedColor:self isContinuousColorSelection:continuouslyCopy];
}

@end