@interface MiroEditorClipCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_axMediaAsset;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation MiroEditorClipCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MiroEditorClipCell" hasInstanceMethod:@"clipProvider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PMClipProvider" hasInstanceMethod:@"phAsset" withFullSignature:{"@", 0}];
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
  _axMediaAsset = [(MiroEditorClipCellAccessibility *)self _axMediaAsset];
  accessibilityLabel = [_axMediaAsset accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  _axMediaAsset = [(MiroEditorClipCellAccessibility *)self _axMediaAsset];
  accessibilityValue = [_axMediaAsset accessibilityValue];

  return accessibilityValue;
}

@end