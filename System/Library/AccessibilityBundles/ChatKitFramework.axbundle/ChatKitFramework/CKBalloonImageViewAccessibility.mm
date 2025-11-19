@interface CKBalloonImageViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityIdentifier;
@end

@implementation CKBalloonImageViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CKBalloonImageView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"CKBalloonImageView" hasInstanceMethod:@"stickerAccessibilityDescription" withFullSignature:{"@", 0}];
}

- (id)accessibilityIdentifier
{
  v2 = [(CKBalloonImageViewAccessibility *)self safeValueForKey:@"stickerAccessibilityDescription"];
  if (v2)
  {
    v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Sticker: %@", v2];
  }

  else
  {
    v3 = @"Sticker";
  }

  v4 = __UIAXStringForVariables();

  return v4;
}

@end