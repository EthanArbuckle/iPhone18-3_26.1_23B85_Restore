@interface AVTRecordingButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityAttributedLabel;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)setUIState:(unint64_t)state;
@end

@implementation AVTRecordingButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AVTRecordingButton" hasInstanceMethod:@"uiState" withFullSignature:{"Q", 0}];
  [validationsCopy validateClass:@"AVTRecordingButton" hasInstanceMethod:@"setUIState:" withFullSignature:{"v", "Q", 0}];
}

- (id)accessibilityAttributedLabel
{
  v12[1] = *MEMORY[0x29EDCA608];
  if ([(AVTRecordingButtonAccessibility *)self safeIntegerForKey:@"uiState"])
  {
    v2 = 0;
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x29EDBA038]);
    v4 = accessibilityLocalizedString(@"animoji.record.button");
    v2 = [v3 initWithString:v4];

    preferredLanguages = [MEMORY[0x29EDB8DE0] preferredLanguages];
    firstObject = [preferredLanguages firstObject];
    v7 = [firstObject hasPrefix:@"en"];

    if (v7)
    {
      v11 = *MEMORY[0x29EDC7F28];
      v12[0] = @"ɻɪ.ˈkwɔɻd";
      v8 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
      [v2 setAttributes:v8 range:{0, objc_msgSend(v2, "length")}];
    }
  }

  v9 = *MEMORY[0x29EDCA608];

  return v2;
}

- (id)accessibilityLabel
{
  v2 = [(AVTRecordingButtonAccessibility *)self safeIntegerForKey:@"uiState"];
  if (v2 <= 3)
  {
    v3 = accessibilityLocalizedString(off_29F2A3BD8[v2]);
  }

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = AVTRecordingButtonAccessibility;
  accessibilityTraits = [(AVTRecordingButtonAccessibility *)&v7 accessibilityTraits];
  v4 = [(AVTRecordingButtonAccessibility *)self safeIntegerForKey:@"uiState"];
  v5 = *MEMORY[0x29EDC7FC8];
  if (v4 != 1)
  {
    v5 = 0;
  }

  return v5 | accessibilityTraits;
}

- (void)setUIState:(unint64_t)state
{
  v4.receiver = self;
  v4.super_class = AVTRecordingButtonAccessibility;
  [(AVTRecordingButtonAccessibility *)&v4 setUIState:state];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
}

@end