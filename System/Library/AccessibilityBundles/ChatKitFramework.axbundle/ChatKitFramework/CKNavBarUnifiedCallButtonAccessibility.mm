@interface CKNavBarUnifiedCallButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (void)accessibilityLabel;
@end

@implementation CKNavBarUnifiedCallButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CKNavBarUnifiedCallButton" hasInstanceMethod:@"isFaceTimeVideoAvailable" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKNavBarUnifiedCallButton" hasInstanceMethod:@"isFaceTimeAudioAvailable" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKNavBarUnifiedCallButton" hasInstanceMethod:@"isTelephonyAvailable" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"CKNavBarUnifiedCallButton" hasInstanceMethod:@"buttonStyle" withFullSignature:{"q", 0}];
}

- (id)accessibilityLabel
{
  v2 = [(CKNavBarUnifiedCallButtonAccessibility *)self safeIntegerForKey:@"buttonStyle"];
  v3 = v2;
  if (v2 <= 2)
  {
    switch(v2)
    {
      case 0:
        v4 = @"details.facetime.video.button.label";
        goto LABEL_19;
      case 1:
        v4 = @"details.join.facetime.video.button.label";
        goto LABEL_19;
      case 2:
        v4 = @"details.joined.facetime.video.button.label";
LABEL_19:
        v6 = accessibilityLocalizedString(v4);
        goto LABEL_20;
    }
  }

  else
  {
    if (v2 <= 4)
    {
      if (v2 == 3)
      {
        v4 = @"details.join.facetime.audio.button.label";
      }

      else
      {
        v4 = @"details.joined.facetime.audio.button.label";
      }

      goto LABEL_19;
    }

    if (v2 == 5)
    {
      v4 = @"details.join.facetime.expanse.button.label";
      goto LABEL_19;
    }

    if (v2 == 6)
    {
      v4 = @"details.joined.facetime.expanse.button.label";
      goto LABEL_19;
    }
  }

  v5 = AXLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CKNavBarUnifiedCallButtonAccessibility *)v3 accessibilityLabel];
  }

  v6 = 0;
LABEL_20:

  return v6;
}

- (BOOL)isAccessibilityElement
{
  if (([(CKNavBarUnifiedCallButtonAccessibility *)self safeBoolForKey:@"isFaceTimeVideoAvailable"]& 1) != 0 || ([(CKNavBarUnifiedCallButtonAccessibility *)self safeBoolForKey:@"isFaceTimeAudioAvailable"]& 1) != 0)
  {
    return 1;
  }

  return [(CKNavBarUnifiedCallButtonAccessibility *)self safeBoolForKey:@"isTelephonyAvailable"];
}

- (void)accessibilityLabel
{
  v6 = *MEMORY[0x29EDCA608];
  v3 = [MEMORY[0x29EDBA070] numberWithInteger:self];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_29BCB0000, a2, OS_LOG_TYPE_ERROR, "Missing label for button style: %@", &v4, 0xCu);
}

@end