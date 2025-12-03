@interface TapbackPickerCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axIsEmojiKeyboardButton;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation TapbackPickerCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ChatKit.TapbackPickerCollectionViewCell" hasSwiftField:@"tapbackView" withSwiftType:"Optional<UIView & CKTapbackViewProtocol>"];
  [validationsCopy validateClass:@"ChatKit.TapbackEmojiKeyboardGlyphView"];
}

- (id)accessibilityLabel
{
  if ([(TapbackPickerCollectionViewCellAccessibility *)self _axIsEmojiKeyboardButton])
  {
    accessibilityLabel = accessibilityLocalizedString(@"add.custom.emoji.reaction");
  }

  else
  {
    v5.receiver = self;
    v5.super_class = TapbackPickerCollectionViewCellAccessibility;
    accessibilityLabel = [(TapbackPickerCollectionViewCellAccessibility *)&v5 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityHint
{
  if ([(TapbackPickerCollectionViewCellAccessibility *)self _axIsEmojiKeyboardButton])
  {
    v2 = 0;
  }

  else
  {
    v2 = accessibilityLocalizedString(@"acknowledgment.hint");
  }

  return v2;
}

- (BOOL)_axIsEmojiKeyboardButton
{
  v2 = [(TapbackPickerCollectionViewCellAccessibility *)self safeSwiftValueForKey:@"tapbackView"];
  NSClassFromString(&cfstr_ChatkitTapback_3.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end