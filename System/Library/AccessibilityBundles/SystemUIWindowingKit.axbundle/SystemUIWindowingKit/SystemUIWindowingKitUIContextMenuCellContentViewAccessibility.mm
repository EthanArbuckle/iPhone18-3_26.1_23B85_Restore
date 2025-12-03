@interface SystemUIWindowingKitUIContextMenuCellContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation SystemUIWindowingKitUIContextMenuCellContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_UIContextMenuCellContentView" hasInstanceMethod:@"iconImageView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UIImage" hasInstanceVariable:@"_imageAsset" withType:"UIImageAsset"];
  [validationsCopy validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v13.receiver = self;
  v13.super_class = SystemUIWindowingKitUIContextMenuCellContentViewAccessibility;
  accessibilityLabel = [(SystemUIWindowingKitUIContextMenuCellContentViewAccessibility *)&v13 accessibilityLabel];
  objc_opt_class();
  v4 = [(SystemUIWindowingKitUIContextMenuCellContentViewAccessibility *)self safeValueForKey:@"iconImageView"];
  v5 = __UIAccessibilityCastAsClass();

  image = [v5 image];
  v7 = [image safeValueForKey:@"_imageAsset"];
  v8 = [v7 safeStringForKey:@"assetName"];

  if (([v8 isEqualToString:@"inset.filled.lefthalf.rectangle"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"rectangle.lefthalf.inset.fill"))
  {
    v9 = @"move.window.left";
LABEL_4:
    v10 = accessibilityLocalizedString(v9);
    goto LABEL_5;
  }

  if (([v8 isEqualToString:@"inset.filled.righthalf.rectangle"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"rectangle.righthalf.inset.fill"))
  {
    v9 = @"move.window.right";
    goto LABEL_4;
  }

  if (([v8 isEqualToString:@"inset.filled.topthird.rectangle"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"square.tophalf.filled"))
  {
    v9 = @"move.window.top";
    goto LABEL_4;
  }

  if (([v8 isEqualToString:@"inset.filled.bottomthird.rectangle"] & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"square.bottomhalf.filled"))
  {
    v9 = @"move.window.bottom";
    goto LABEL_4;
  }

  if ([v8 isEqualToString:@"rectangle.inset.filled"])
  {
    v9 = @"fill.window";
    goto LABEL_4;
  }

  if ([v8 isEqualToString:@"inset.filled.lefthalf.righthalf.rectangle"])
  {
    v9 = @"fill.window.left.right";
    goto LABEL_4;
  }

  if ([v8 isEqualToString:@"inset.filled.lefthalf.topright.bottomright.rectangle"])
  {
    v9 = @"fill.window.left.quarters";
    goto LABEL_4;
  }

  if ([v8 isEqualToString:@"inset.filled.topleft.topright.bottomleft.bottomright.rectangle"])
  {
    v9 = @"fill.window.quarters";
    goto LABEL_4;
  }

  v10 = accessibilityLabel;
LABEL_5:
  v11 = v10;

  return v11;
}

@end