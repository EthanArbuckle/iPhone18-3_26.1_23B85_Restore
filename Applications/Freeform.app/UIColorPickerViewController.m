@interface UIColorPickerViewController
- (BOOL)p_isColorSpaceP3ForColor:(id)a3;
- (id)p_colorToSelectFromColorMatchingSelectedColorSpaceIfPossible:(id)a3;
- (void)crl_ifVisuallyDifferentSetSelectedColor:(id)a3 preservingColorSpaceIfPossible:(BOOL)a4;
@end

@implementation UIColorPickerViewController

- (void)crl_ifVisuallyDifferentSetSelectedColor:(id)a3 preservingColorSpaceIfPossible:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11 = v6;
  if (!v6 || (-[UIColorPickerViewController selectedColor](self, "selectedColor"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v11 _isSimilarToColor:v7 withinPercentage:0.0009765625], v7, v6 = v11, (v8 & 1) == 0))
  {
    v9 = v6;
    if (v4)
    {
      v10 = [(UIColorPickerViewController *)self p_colorToSelectFromColorMatchingSelectedColorSpaceIfPossible:v9];

      v9 = v10;
    }

    [(UIColorPickerViewController *)self setSelectedColor:v9];

    v6 = v11;
  }
}

- (id)p_colorToSelectFromColorMatchingSelectedColorSpaceIfPossible:(id)a3
{
  v4 = a3;
  v5 = [(UIColorPickerViewController *)self p_isColorSpaceP3ForColor:v4];
  v6 = [(UIColorPickerViewController *)self selectedColor];
  v7 = [(UIColorPickerViewController *)self p_isColorSpaceP3ForColor:v6];

  v8 = v4;
  v9 = v8;
  v10 = v8;
  if (v7)
  {
    v10 = v8;
    if ((v5 & 1) == 0)
    {
      v11 = [v8 CGColor];
      v12 = sub_1000CCE28();
      CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v12, kCGRenderingIntentDefault, v11, 0);
      v10 = [UIColor colorWithCGColor:CopyByMatchingToColorSpace];

      CGColorRelease(CopyByMatchingToColorSpace);
    }
  }

  return v10;
}

- (BOOL)p_isColorSpaceP3ForColor:(id)a3
{
  ColorSpace = CGColorGetColorSpace([a3 CGColor]);
  Name = CGColorSpaceGetName(ColorSpace);
  if (Name)
  {
    LOBYTE(Name) = CFEqual(Name, kCGColorSpaceDisplayP3) != 0;
  }

  return Name;
}

@end