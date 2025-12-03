@interface NTKAnalogHandsViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (CGRect)accessibilityFrame;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)accessibilityLabel;
@end

@implementation NTKAnalogHandsViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NTKAnalogHandsView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
}

- (BOOL)isAccessibilityElement
{
  isAccessibilityUserDefinedElement = [(NTKAnalogHandsViewAccessibility *)self isAccessibilityUserDefinedElement];

  if (isAccessibilityUserDefinedElement)
  {
    isAccessibilityUserDefinedElement2 = [(NTKAnalogHandsViewAccessibility *)self isAccessibilityUserDefinedElement];
    bOOLValue = [isAccessibilityUserDefinedElement2 BOOLValue];

    return bOOLValue;
  }

  else
  {

    return [(NTKAnalogHandsViewAccessibility *)self _accessibilityViewIsVisible];
  }
}

- (id)accessibilityLabel
{
  accessibilityUserDefinedLabel = [(NTKAnalogHandsViewAccessibility *)self accessibilityUserDefinedLabel];

  if (accessibilityUserDefinedLabel)
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
  accessibilityPath = [(NTKAnalogHandsViewAccessibility *)self accessibilityPath];
  [accessibilityPath bounds];
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

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  _accessibilityParentView = [(NTKAnalogHandsViewAccessibility *)self _accessibilityParentView];
  UIAccessibilityPointForPoint();
  v10 = v9;
  v12 = v11;

  accessibilityPath = [(NTKAnalogHandsViewAccessibility *)self accessibilityPath];
  if (accessibilityPath)
  {
    if (!-[NTKAnalogHandsViewAccessibility isAccessibilityElement](self, "isAccessibilityElement") || ![accessibilityPath containsPoint:{x, y}])
    {
      v15 = 0;
      goto LABEL_8;
    }

    selfCopy = self;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = NTKAnalogHandsViewAccessibility;
    selfCopy = [(NTKAnalogHandsViewAccessibility *)&v17 _accessibilityHitTest:eventCopy withEvent:v10, v12];
  }

  v15 = selfCopy;
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