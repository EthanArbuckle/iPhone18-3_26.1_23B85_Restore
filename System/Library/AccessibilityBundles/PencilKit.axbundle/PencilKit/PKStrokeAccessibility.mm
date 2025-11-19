@interface PKStrokeAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
- (void)dealloc;
@end

@implementation PKStrokeAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKStroke" hasInstanceMethod:@"ink" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKStroke" hasInstanceMethod:@"renderBounds" withFullSignature:{"{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
}

- (void)dealloc
{
  if (objc_opt_respondsToSelector())
  {
    [(PKStrokeAccessibility *)self _accessibilityUnregister];
  }

  v3.receiver = self;
  v3.super_class = PKStrokeAccessibility;
  [(PKStrokeAccessibility *)&v3 dealloc];
}

- (CGRect)accessibilityFrame
{
  [(PKStrokeAccessibility *)self safeCGRectForKey:@"renderBounds"];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PKStrokeAccessibility *)self _accessibilityAncestorIsKindOf:objc_opt_class()];
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  v21 = UIAccessibilityConvertFrameToScreenCoordinates(v20, v11);
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;

  v16 = x;
  v17 = y;
  v18 = width;
  v19 = height;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)accessibilityLabel
{
  v2 = [(PKStrokeAccessibility *)self safeValueForKey:@"ink"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 inkType];
  v5 = [v3 color];
  if ([v4 isEqualToString:*MEMORY[0x29EDBB9E0]])
  {
    v6 = @"pen.tool";
LABEL_7:
    v7 = accessibilityPencilKitLocalizedString(v6);
    goto LABEL_8;
  }

  if ([v4 isEqualToString:*MEMORY[0x29EDBB9E8]])
  {
    v6 = @"pencil.tool";
    goto LABEL_7;
  }

  if ([v4 isEqualToString:*MEMORY[0x29EDBB9D8]])
  {
    v6 = @"marker.tool";
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:
  v10 = [v5 accessibilityName];
  v8 = __AXStringForVariables();

  return v8;
}

@end