@interface PKPassColorProfileAccessibility
- (id)_imageForGlyph:(id)glyph color:(id)color;
@end

@implementation PKPassColorProfileAccessibility

- (id)_imageForGlyph:(id)glyph color:(id)color
{
  v9.receiver = self;
  v9.super_class = PKPassColorProfileAccessibility;
  glyphCopy = glyph;
  v6 = [(PKPassColorProfileAccessibility *)&v9 _imageForGlyph:glyphCopy color:color];
  accessibilityIdentifier = [glyphCopy accessibilityIdentifier];

  [v6 setAccessibilityIdentifier:accessibilityIdentifier];

  return v6;
}

@end