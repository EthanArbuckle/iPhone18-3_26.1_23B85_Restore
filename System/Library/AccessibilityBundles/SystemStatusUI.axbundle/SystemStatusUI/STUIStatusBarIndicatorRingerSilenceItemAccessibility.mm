@interface STUIStatusBarIndicatorRingerSilenceItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation STUIStatusBarIndicatorRingerSilenceItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STUIStatusBarIndicatorRingerSilenceItem" isKindOfClass:@"STUIStatusBarIndicatorItem"];
  [validationsCopy validateClass:@"STUIStatusBarIndicatorItem" hasInstanceVariable:@"_imageView" withType:"STUIStatusBarImageView"];
  [validationsCopy validateClass:@"STUIStatusBarImageView" isKindOfClass:@"UIImageView"];
  [validationsCopy validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v12 = 0;
  objc_opt_class();
  v3 = [(STUIStatusBarIndicatorRingerSilenceItemAccessibility *)self safeValueForKey:@"imageView"];
  v4 = __UIAccessibilityCastAsClass();

  image = [v4 image];

  if ([image isSymbolImage])
  {
    imageAsset = [image imageAsset];
    v7 = [imageAsset safeStringForKey:@"assetName"];

    if ([v7 isEqualToString:@"bell.slash.fill"])
    {
      v8 = @"status.bar.item.ringer.silent.mode.label";
LABEL_6:
      accessibilityLabel = accessibilityLocalizedString(v8);

      goto LABEL_9;
    }

    if ([v7 isEqualToString:@"bell.fill"])
    {
      v8 = @"status.bar.item.ringer.ring.mode.label";
      goto LABEL_6;
    }
  }

  v11.receiver = self;
  v11.super_class = STUIStatusBarIndicatorRingerSilenceItemAccessibility;
  accessibilityLabel = [(STUIStatusBarIndicatorRingerSilenceItemAccessibility *)&v11 accessibilityLabel];
LABEL_9:

  return accessibilityLabel;
}

@end