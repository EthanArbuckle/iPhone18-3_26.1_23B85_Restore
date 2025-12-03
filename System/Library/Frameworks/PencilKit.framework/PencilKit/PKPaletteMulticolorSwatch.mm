@interface PKPaletteMulticolorSwatch
- (BOOL)wantsColorBulletVisible;
- (PKPaletteMulticolorSwatch)init;
- (id)newColorBackgroundView;
- (id)presentationColor;
@end

@implementation PKPaletteMulticolorSwatch

- (PKPaletteMulticolorSwatch)init
{
  v7.receiver = self;
  v7.super_class = PKPaletteMulticolorSwatch;
  v2 = [(PKPaletteColorSwatch *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(PKPaletteMulticolorSwatch *)v2 setAccessibilityIdentifier:@"PKPalette-Multicolor-Swatch"];
    v4 = _PencilKitBundle();
    v5 = [v4 localizedStringForKey:@"Show More Colors" value:@"Show More Colors" table:@"Localizable"];
    [(PKPaletteMulticolorSwatch *)v3 setLargeContentTitle:v5];
  }

  return v3;
}

- (id)presentationColor
{
  v5.receiver = self;
  v5.super_class = PKPaletteMulticolorSwatch;
  presentationColor = [(PKPaletteColorSwatch *)&v5 presentationColor];
  v3 = [presentationColor colorWithAlphaComponent:1.0];

  return v3;
}

- (id)newColorBackgroundView
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  v3 = MEMORY[0x1E69DCAB8];
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v3 imageNamed:@"palette_multicolor_button" inBundle:v4 compatibleWithTraitCollection:0];
  [v2 setImage:v5];

  return v2;
}

- (BOOL)wantsColorBulletVisible
{
  v6.receiver = self;
  v6.super_class = PKPaletteMulticolorSwatch;
  if ([(PKPaletteColorSwatch *)&v6 wantsColorBulletVisible])
  {
    return 1;
  }

  swatchColor = [(PKPaletteColorSwatch *)self swatchColor];
  v3 = swatchColor != 0;

  return v3;
}

@end