@interface ParagraphViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation ParagraphViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MusicApplication.ParagraphView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.ParagraphView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"MusicApplication.ParagraphView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(ParagraphViewAccessibility *)self _axLabel];
  v3 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];
  v5 = [v4 length] != 0;

  return v5;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = ParagraphViewAccessibility;
  [(ParagraphViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(ParagraphViewAccessibility *)self _accessibilityDescendantOfType:objc_opt_class()];
  v4 = __UIAccessibilityCastAsClass();

  v5 = [v4 text];
  v6 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v7 = [v5 stringByTrimmingCharactersInSet:v6];
  v8 = [v7 length];

  if (!v8)
  {
    [v4 setIsAccessibilityElement:0];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = ParagraphViewAccessibility;
  [(ParagraphViewAccessibility *)&v3 layoutSubviews];
  [(ParagraphViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end