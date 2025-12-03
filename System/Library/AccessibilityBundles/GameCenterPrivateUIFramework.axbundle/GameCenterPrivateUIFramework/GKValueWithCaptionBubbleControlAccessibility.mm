@interface GKValueWithCaptionBubbleControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (id)accessibilityPath;
@end

@implementation GKValueWithCaptionBubbleControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"GKValueWithCaptionBubbleControl" hasInstanceMethod:@"captionText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"GKValueWithCaptionBubbleControl" hasInstanceMethod:@"valueText" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(GKValueWithCaptionBubbleControlAccessibility *)self safeValueForKey:@"captionText"];
  v6 = [(GKValueWithCaptionBubbleControlAccessibility *)self safeValueForKey:@"valueText"];
  v4 = __UIAXStringForVariables();

  return v4;
}

- (id)accessibilityPath
{
  [(GKValueWithCaptionBubbleControlAccessibility *)self accessibilityFrame];
  x = v13.origin.x;
  y = v13.origin.y;
  width = v13.size.width;
  height = v13.size.height;
  MidX = CGRectGetMidX(v13);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  MidY = CGRectGetMidY(v14);
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v8 = CGRectGetWidth(v15);
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v9 = CGRectGetHeight(v16);
  if (v8 >= v9)
  {
    v9 = v8;
  }

  v10 = MEMORY[0x29EDC7948];

  return [v10 bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v9 * 0.5 clockwise:{0.0, 6.28318531}];
}

- (BOOL)isAccessibilityElement
{
  if (![(GKValueWithCaptionBubbleControlAccessibility *)self safeBoolForKey:@"_accessibilityViewIsVisible"])
  {
    return 0;
  }

  accessibilityLabel = [(GKValueWithCaptionBubbleControlAccessibility *)self accessibilityLabel];
  v4 = [accessibilityLabel length] != 0;

  return v4;
}

@end