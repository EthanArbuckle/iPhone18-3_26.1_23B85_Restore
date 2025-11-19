@interface FMR1GlyphButtonAccessibility
- (id)accessibilityPath;
- (unint64_t)accessibilityTraits;
@end

@implementation FMR1GlyphButtonAccessibility

- (id)accessibilityPath
{
  [(FMR1GlyphButtonAccessibility *)self safeCGRectForKey:@"bounds"];
  v4 = [MEMORY[0x29EDC7948] bezierPathWithOvalInRect:{0.0, 0.0, v3, v3}];
  v5 = UIAccessibilityConvertPathToScreenCoordinates(v4, self);

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = FMR1GlyphButtonAccessibility;
  return *MEMORY[0x29EDC7F70] | [(FMR1GlyphButtonAccessibility *)&v3 accessibilityTraits];
}

@end