@interface SUMaskedViewAccessibility
- (BOOL)accessibilityElementsHidden;
@end

@implementation SUMaskedViewAccessibility

- (BOOL)accessibilityElementsHidden
{
  [(SUMaskedViewAccessibility *)self accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  mainScreen = [MEMORY[0x29EDC7C40] mainScreen];
  [mainScreen bounds];
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  v18 = CGRectIntersection(v17, v19);
  width = v18.size.width;
  height = v18.size.height;

  if (width < v8 * 0.5 || height < v10 * 0.5)
  {
    return 1;
  }

  v16.receiver = self;
  v16.super_class = SUMaskedViewAccessibility;
  return [(SUMaskedViewAccessibility *)&v16 accessibilityElementsHidden];
}

@end