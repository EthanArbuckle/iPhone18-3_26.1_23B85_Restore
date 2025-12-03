@interface UIColorPickerViewController
- (BOOL)p_isColorSpaceP3ForColor:(id)color;
- (id)p_colorToSelectFromColorMatchingSelectedColorSpaceIfPossible:(id)possible;
- (void)crl_ifVisuallyDifferentSetSelectedColor:(id)color preservingColorSpaceIfPossible:(BOOL)possible;
@end

@implementation UIColorPickerViewController

- (void)crl_ifVisuallyDifferentSetSelectedColor:(id)color preservingColorSpaceIfPossible:(BOOL)possible
{
  possibleCopy = possible;
  colorCopy = color;
  v11 = colorCopy;
  if (!colorCopy || (-[UIColorPickerViewController selectedColor](self, "selectedColor"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v11 _isSimilarToColor:v7 withinPercentage:0.0009765625], v7, colorCopy = v11, (v8 & 1) == 0))
  {
    v9 = colorCopy;
    if (possibleCopy)
    {
      v10 = [(UIColorPickerViewController *)self p_colorToSelectFromColorMatchingSelectedColorSpaceIfPossible:v9];

      v9 = v10;
    }

    [(UIColorPickerViewController *)self setSelectedColor:v9];

    colorCopy = v11;
  }
}

- (id)p_colorToSelectFromColorMatchingSelectedColorSpaceIfPossible:(id)possible
{
  possibleCopy = possible;
  v5 = [(UIColorPickerViewController *)self p_isColorSpaceP3ForColor:possibleCopy];
  selectedColor = [(UIColorPickerViewController *)self selectedColor];
  v7 = [(UIColorPickerViewController *)self p_isColorSpaceP3ForColor:selectedColor];

  v8 = possibleCopy;
  v9 = v8;
  v10 = v8;
  if (v7)
  {
    v10 = v8;
    if ((v5 & 1) == 0)
    {
      cGColor = [v8 CGColor];
      v12 = sub_1000CCE28();
      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v12, kCGRenderingIntentDefault, cGColor, 0);
      v10 = [UIColor colorWithCGColor:CopyByMatchingToColorSpace];

      CGColorRelease(CopyByMatchingToColorSpace);
    }
  }

  return v10;
}

- (BOOL)p_isColorSpaceP3ForColor:(id)color
{
  ColorSpace = CGColorGetColorSpace([color CGColor]);
  Name = CGColorSpaceGetName(ColorSpace);
  if (Name)
  {
    LOBYTE(Name) = CFEqual(Name, kCGColorSpaceDisplayP3) != 0;
  }

  return Name;
}

@end