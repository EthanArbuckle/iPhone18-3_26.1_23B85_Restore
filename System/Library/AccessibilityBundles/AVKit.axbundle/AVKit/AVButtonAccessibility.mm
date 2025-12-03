@interface AVButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (CGRect)accessibilityFrame;
- (id)accessibilityLabel;
@end

@implementation AVButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVButton" hasInstanceMethod:@"hasAlternateAppearance" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"UIButton" hasInstanceMethod:@"imageView" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(AVButtonAccessibility *)self safeUIViewForKey:@"imageView"];
  accessibilityIdentifier = [(AVButtonAccessibility *)self accessibilityIdentifier];
  v5 = [accessibilityIdentifier isEqualToString:@"Right Secondary Control"];

  if (v5)
  {
    accessibilityLabel = [v3 accessibilityLabel];
    if (!accessibilityLabel)
    {
      v7 = @"next.track";
LABEL_12:
      v10 = accessibilityLocalizedString(v7);
      goto LABEL_13;
    }

LABEL_6:
    v10 = accessibilityLabel;
LABEL_13:
    accessibilityLabel2 = v10;

    goto LABEL_14;
  }

  accessibilityIdentifier2 = [(AVButtonAccessibility *)self accessibilityIdentifier];
  v9 = [accessibilityIdentifier2 isEqualToString:@"Left Secondary Control"];

  if (v9)
  {
    accessibilityLabel = [v3 accessibilityLabel];
    if (!accessibilityLabel)
    {
      v7 = @"previous.track";
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v17 = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  image = [v11 image];
  imageAsset = [image imageAsset];
  accessibilityLabel = [imageAsset safeStringForKey:@"assetName"];

  if ([accessibilityLabel isEqualToString:@"rectangle.split.2x2"])
  {
    v7 = @"multiview.button";
    goto LABEL_12;
  }

  if ([accessibilityLabel isEqualToString:@"fitness.edit.video.metrics"])
  {
    v7 = @"metrics.button";
    goto LABEL_12;
  }

  v16.receiver = self;
  v16.super_class = AVButtonAccessibility;
  accessibilityLabel2 = [(AVButtonAccessibility *)&v16 accessibilityLabel];
LABEL_14:

  return accessibilityLabel2;
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
  superview = [v10 superview];
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