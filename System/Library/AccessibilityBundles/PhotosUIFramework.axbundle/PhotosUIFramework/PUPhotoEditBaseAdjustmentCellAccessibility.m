@interface PUPhotoEditBaseAdjustmentCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_isEligibleForFocusInteraction;
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PUPhotoEditBaseAdjustmentCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PUPhotoEditBaseAdjustmentCell" hasInstanceMethod:@"maxValue" withFullSignature:{"d", 0}];
  [v3 validateClass:@"PUPhotoEditBaseAdjustmentCell" hasInstanceMethod:@"minValue" withFullSignature:{"d", 0}];
  [v3 validateClass:@"PUPhotoEditBaseAdjustmentCell" hasInstanceMethod:@"value" withFullSignature:{"d", 0}];
  [v3 validateClass:@"PUPhotoEditBaseAdjustmentCell" hasInstanceMethod:@"identityValue" withFullSignature:{"d", 0}];
  [v3 validateClass:@"PUPhotoEditBaseAdjustmentCell" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"PUPhotoEditBaseAdjustmentCell" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"_isEligibleForFocusInteraction" withFullSignature:{"B", 0}];
}

- (id)accessibilityLabel
{
  [(PUPhotoEditBaseAdjustmentCellAccessibility *)self safeCGFloatForKey:@"maxValue"];
  v4 = v3;
  [(PUPhotoEditBaseAdjustmentCellAccessibility *)self safeCGFloatForKey:@"minValue"];
  v6 = v5;
  [(PUPhotoEditBaseAdjustmentCellAccessibility *)self safeCGFloatForKey:@"value"];
  v8 = v7;
  [(PUPhotoEditBaseAdjustmentCellAccessibility *)self safeCGFloatForKey:@"identityValue"];
  v10.n128_f64[0] = AXScaledSliderValues(v8, v6, v4, v9);
  v10.n128_f32[0] = v10.n128_f64[0];

  return MEMORY[0x2A1C5E4D0](0, v10);
}

- (id)accessibilityValue
{
  if (([(PUPhotoEditBaseAdjustmentCellAccessibility *)self safeBoolForKey:@"isEnabled"]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = accessibilityPULocalizedString(@"adjustments.tool.off");
  }

  return v2;
}

- (BOOL)_isEligibleForFocusInteraction
{
  if (([(PUPhotoEditBaseAdjustmentCellAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = PUPhotoEditBaseAdjustmentCellAccessibility;
  return [(PUPhotoEditBaseAdjustmentCellAccessibility *)&v4 _isEligibleForFocusInteraction];
}

@end