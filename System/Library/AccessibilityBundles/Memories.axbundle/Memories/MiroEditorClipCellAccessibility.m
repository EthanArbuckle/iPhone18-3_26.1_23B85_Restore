@interface MiroEditorClipCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_axMediaAsset;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MiroEditorClipCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MiroEditorClipCell" hasInstanceMethod:@"clipProvider" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PMClipProvider" hasInstanceMethod:@"phAsset" withFullSignature:{"@", 0}];
}

- (id)_axMediaAsset
{
  objc_opt_class();
  v3 = [(MiroEditorClipCellAccessibility *)self safeValueForKeyPath:@"clipProvider.phAsset"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (id)accessibilityLabel
{
  v2 = [(MiroEditorClipCellAccessibility *)self _axMediaAsset];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(MiroEditorClipCellAccessibility *)self _axMediaAsset];
  v3 = [v2 accessibilityValue];

  return v3;
}

@end