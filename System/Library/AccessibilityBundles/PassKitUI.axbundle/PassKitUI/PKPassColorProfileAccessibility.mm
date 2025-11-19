@interface PKPassColorProfileAccessibility
- (id)_imageForGlyph:(id)a3 color:(id)a4;
@end

@implementation PKPassColorProfileAccessibility

- (id)_imageForGlyph:(id)a3 color:(id)a4
{
  v9.receiver = self;
  v9.super_class = PKPassColorProfileAccessibility;
  v5 = a3;
  v6 = [(PKPassColorProfileAccessibility *)&v9 _imageForGlyph:v5 color:a4];
  v7 = [v5 accessibilityIdentifier];

  [v6 setAccessibilityIdentifier:v7];

  return v6;
}

@end