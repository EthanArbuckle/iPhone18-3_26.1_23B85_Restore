@interface UIPrintPreviewPageCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsPageInSelection;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation UIPrintPreviewPageCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"UIPrintPreviewPageCell" hasInstanceMethod:@"pageLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIPrintPreviewPageCell" hasInstanceMethod:@"checkmarkImageView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(UIPrintPreviewPageCellAccessibility *)self safeValueForKey:@"pageLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
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
  accessibilityTraits = [(UIPrintPreviewPageCellAccessibility *)&v7 accessibilityTraits];
  _axIsPageInSelection = [(UIPrintPreviewPageCellAccessibility *)self _axIsPageInSelection];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!_axIsPageInSelection)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (BOOL)_axIsPageInSelection
{
  v2 = [(UIPrintPreviewPageCellAccessibility *)self safeUIViewForKey:@"checkmarkImageView"];
  [v2 alpha];
  v4 = v3 > 0.1;

  return v4;
}

@end