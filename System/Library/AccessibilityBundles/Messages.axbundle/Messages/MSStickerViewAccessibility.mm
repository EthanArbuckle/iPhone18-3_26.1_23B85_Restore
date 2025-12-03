@interface MSStickerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityLabel;
@end

@implementation MSStickerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MSStickerView" hasInstanceMethod:@"sticker" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MSSticker" hasInstanceMethod:@"localizedDescription" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(MSStickerViewAccessibility *)self safeValueForKey:@"sticker"];
  v3 = [v2 safeValueForKey:@"localizedDescription"];

  if (![v3 length])
  {
    v4 = accessibilityLocalizedString(@"sticker.label.unknown");

    v3 = v4;
  }

  return v3;
}

@end