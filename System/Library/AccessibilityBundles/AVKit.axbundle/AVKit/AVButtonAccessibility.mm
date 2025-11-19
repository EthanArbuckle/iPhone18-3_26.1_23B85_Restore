@interface AVButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
@end

@implementation AVButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AVButton" hasInstanceMethod:@"hasAlternateAppearance" withFullSignature:{"B", 0}];
  [v3 validateClass:@"UIButton" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(AVButtonAccessibility *)self safeUIViewForKey:@"imageView"];
  v4 = [(AVButtonAccessibility *)self accessibilityIdentifier];
  v5 = [v4 isEqualToString:@"Right Secondary Control"];

  if (v5)
  {
    v6 = [v3 accessibilityLabel];
    if (!v6)
    {
      v7 = @"next.track";
LABEL_12:
      v10 = accessibilityLocalizedString(v7);
      goto LABEL_13;
    }

LABEL_6:
    v10 = v6;
LABEL_13:
    v14 = v10;

    goto LABEL_14;
  }

  v8 = [(AVButtonAccessibility *)self accessibilityIdentifier];
  v9 = [v8 isEqualToString:@"Left Secondary Control"];

  if (v9)
  {
    v6 = [v3 accessibilityLabel];
    if (!v6)
    {
      v7 = @"previous.track";
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v17 = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v12 = [v11 image];
  v13 = [v12 imageAsset];
  v6 = [v13 safeStringForKey:@"assetName"];

  if ([v6 isEqualToString:@"rectangle.split.2x2"])
  {
    v7 = @"multiview.button";
    goto LABEL_12;
  }

  if ([v6 isEqualToString:@"fitness.edit.video.metrics"])
  {
    v7 = @"metrics.button";
    goto LABEL_12;
  }

  v16.receiver = self;
  v16.super_class = AVButtonAccessibility;
  v14 = [(AVButtonAccessibility *)&v16 accessibilityLabel];
LABEL_14:

  return v14;
}

- (CGRect)accessibilityFrame
{
  v19.receiver = self;
  v19.super_class = AVButtonAccessibility;
  [(AVButtonAccessibility *)&v19 accessibilityFrame];
  x = v2;
  y = v4;
  width = v6;
  height = v8;
  objc_opt_class();
  v10 = __UIAccessibilityCastAsClass();
  v11 = [v10 superview];
  MEMORY[0x29C2C6300](@"AVMobileChromelessDisplayModeControlsView");
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v13 = CGRectGetWidth(v20) * -0.75;
    v21.origin.x = x;
    v21.origin.y = y;
    v21.size.width = width;
    v21.size.height = height;
    v14 = CGRectGetHeight(v21) * -0.75;
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v23 = CGRectInset(v22, v13, v14);
    x = v23.origin.x;
    y = v23.origin.y;
    width = v23.size.width;
    height = v23.size.height;
  }

  v15 = x;
  v16 = y;
  v17 = width;
  v18 = height;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

@end