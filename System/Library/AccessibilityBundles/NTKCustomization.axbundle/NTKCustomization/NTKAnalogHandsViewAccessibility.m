@interface NTKAnalogHandsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityLabel;
@end

@implementation NTKAnalogHandsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"NTKAnalogHandsView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(NTKAnalogHandsViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (v3)
  {
    v4 = [(NTKAnalogHandsViewAccessibility *)self isAccessibilityUserDefinedElement];
    v5 = [v4 BOOLValue];

    return v5;
  }

  else
  {

    return [(NTKAnalogHandsViewAccessibility *)self _accessibilityViewIsVisible];
  }
}

- (id)accessibilityLabel
{
  v3 = [(NTKAnalogHandsViewAccessibility *)self accessibilityUserDefinedLabel];

  if (v3)
  {
    [(NTKAnalogHandsViewAccessibility *)self accessibilityUserDefinedLabel];
  }

  else
  {
    AXClockTimeVoiceOverSpokenStringForWatchFaces();
  }
  v4 = ;

  return v4;
}

- (CGRect)accessibilityFrame
{
  v2 = [(NTKAnalogHandsViewAccessibility *)self accessibilityPath];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(NTKAnalogHandsViewAccessibility *)self _accessibilityParentView];
  UIAccessibilityPointForPoint();
  v10 = v9;
  v12 = v11;

  v13 = [(NTKAnalogHandsViewAccessibility *)self accessibilityPath];
  if (v13)
  {
    if (!-[NTKAnalogHandsViewAccessibility isAccessibilityElement](self, "isAccessibilityElement") || ![v13 containsPoint:{x, y}])
    {
      v15 = 0;
      goto LABEL_8;
    }

    v14 = self;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = NTKAnalogHandsViewAccessibility;
    v14 = [(NTKAnalogHandsViewAccessibility *)&v17 _accessibilityHitTest:v7 withEvent:v10, v12];
  }

  v15 = v14;
LABEL_8:

  return v15;
}

- (BOOL)canBecomeFocused
{
  if (([(NTKAnalogHandsViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = NTKAnalogHandsViewAccessibility;
  return [(NTKAnalogHandsViewAccessibility *)&v4 canBecomeFocused];
}

@end