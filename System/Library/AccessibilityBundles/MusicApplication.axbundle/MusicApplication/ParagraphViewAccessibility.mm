@interface ParagraphViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation ParagraphViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MusicApplication.ParagraphView" hasInstanceMethod:@"title" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.ParagraphView" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MusicApplication.ParagraphView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (BOOL)isAccessibilityElement
{
  _axLabel = [(ParagraphViewAccessibility *)self _axLabel];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v4 = [_axLabel stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
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

  text = [v4 text];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v7 = [text stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
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