@interface PUTilingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_isEligibleForFocusInteraction;
- (BOOL)accessibilityPerformEscape;
- (BOOL)canBecomeFocused;
- (CGSize)_accessibilityContentSize;
- (double)_accessibilityScrollWidthDistance;
- (id)_accessibilityScrollStatus;
@end

@implementation PUTilingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PUOneUpBarsController" hasInstanceMethod:@"browsingSession" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUBrowsingSession" hasInstanceMethod:@"viewModel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUBrowsingViewModel" hasInstanceMethod:@"isChromeVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"PUOneUpViewController" hasInstanceMethod:@"_barsController" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUTilingView" isKindOfClass:@"UIScrollView"];
  [validationsCopy validateClass:@"PUTilingView" hasInstanceMethod:@"layout" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUTilingLayout" hasInstanceMethod:@"preferredScrollInfo" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PUTilingScrollInfo" hasInstanceMethod:@"interpageSpacing" withFullSignature:{"{CGSize=dd}", 0}];
  [validationsCopy validateClass:@"PUScrubberView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"_isEligibleForFocusInteraction" withFullSignature:{"B", 0}];
}

- (BOOL)accessibilityPerformEscape
{
  v2 = [(PUTilingViewAccessibility *)self safeValueForKey:@"delegate"];
  v3 = [v2 safeValueForKey:@"_barsController"];

  v4 = [v3 safeValueForKey:@"browsingSession"];
  v5 = [v4 safeValueForKey:@"viewModel"];

  v6 = (v3 == 0) | [v5 safeBoolForKey:@"isChromeVisible"];
  if ((v6 & 1) == 0)
  {
    v8 = v3;
    AXPerformSafeBlock();
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  return (v6 & 1) == 0;
}

- (double)_accessibilityScrollWidthDistance
{
  v12.receiver = self;
  v12.super_class = PUTilingViewAccessibility;
  [(PUTilingViewAccessibility *)&v12 _accessibilityScrollWidthDistance];
  v4 = v3;
  v5 = [(PUTilingViewAccessibility *)self safeValueForKey:@"layout"];
  v6 = [v5 safeValueForKey:@"preferredScrollInfo"];

  objc_opt_class();
  v7 = [v6 safeValueForKey:@"interpageSpacing"];
  v8 = __UIAccessibilityCastAsClass();

  [v8 CGSizeValue];
  v10 = v4 + v9;

  return v10;
}

- (id)_accessibilityScrollStatus
{
  v2 = [(PUTilingViewAccessibility *)self safeValueForKey:@"delegate"];
  v3 = [v2 safeValueForKey:@"browsingSession"];
  v4 = accessibilityPULocalizedString(@"photo.scrubber.photo");
  v5 = AXScrollStatusForBrowsingSession(v3, v4);

  return v5;
}

- (CGSize)_accessibilityContentSize
{
  v2 = [(PUTilingViewAccessibility *)self safeValueForKey:@"layout"];
  [v2 safeCGRectForKey:@"contentBounds"];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v17.origin.x = v4;
  v17.origin.y = v6;
  v17.size.width = v8;
  v17.size.height = v10;
  MaxX = CGRectGetMaxX(v17);
  v18.origin.x = v4;
  v18.origin.y = v6;
  v18.size.width = v8;
  v18.size.height = v10;
  v12 = MaxX - CGRectGetMinX(v18);
  v19.origin.x = v4;
  v19.origin.y = v6;
  v19.size.width = v8;
  v19.size.height = v10;
  MaxY = CGRectGetMaxY(v19);
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  v14 = MaxY - CGRectGetMinY(v20);
  v15 = v12;
  result.height = v14;
  result.width = v15;
  return result;
}

- (BOOL)canBecomeFocused
{
  v5.receiver = self;
  v5.super_class = PUTilingViewAccessibility;
  canBecomeFocused = [(PUTilingViewAccessibility *)&v5 canBecomeFocused];
  return ([(PUTilingViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]| canBecomeFocused) & 1;
}

- (BOOL)_isEligibleForFocusInteraction
{
  if ([(PUTilingViewAccessibility *)self _accessibilityIsFKARunningForFocusItem])
  {
    v3 = [(PUTilingViewAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Puscrubberview.isa)];
    v4 = v3 == 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = PUTilingViewAccessibility;
    return [(PUTilingViewAccessibility *)&v6 _isEligibleForFocusInteraction];
  }

  return v4;
}

@end