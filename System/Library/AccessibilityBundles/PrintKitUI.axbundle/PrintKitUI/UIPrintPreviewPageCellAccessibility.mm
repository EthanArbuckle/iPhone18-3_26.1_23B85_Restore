@interface UIPrintPreviewPageCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axIsPageInSelection;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIPrintPreviewPageCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIPrintPreviewPageCell" hasInstanceMethod:@"pageLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UIPrintPreviewPageCell" hasInstanceMethod:@"checkmarkImageView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(UIPrintPreviewPageCellAccessibility *)self safeValueForKey:@"pageLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(UIPrintPreviewPageCellAccessibility *)self safeValueForKey:@"pageLabel"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = UIPrintPreviewPageCellAccessibility;
  v3 = [(UIPrintPreviewPageCellAccessibility *)&v7 accessibilityTraits];
  v4 = [(UIPrintPreviewPageCellAccessibility *)self _axIsPageInSelection];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (BOOL)_axIsPageInSelection
{
  v2 = [(UIPrintPreviewPageCellAccessibility *)self safeUIViewForKey:@"checkmarkImageView"];
  [v2 alpha];
  v4 = v3 > 0.1;

  return v4;
}

@end