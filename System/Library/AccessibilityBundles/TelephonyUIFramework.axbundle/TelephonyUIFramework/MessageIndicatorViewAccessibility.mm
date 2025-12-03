@interface MessageIndicatorViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation MessageIndicatorViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TelephonyUI.MessageIndicatorView" hasSwiftField:@"recordImageView" withSwiftType:"UIImageView"];
  [validationsCopy validateClass:@"TelephonyUI.MessageIndicatorView" hasSwiftField:@"viewModel" withSwiftType:"TPMessageIndicatorViewModel"];
  [validationsCopy validateClass:@"TPMessageIndicatorViewModel" hasProperty:@"isSensitive" withType:"B"];
  [validationsCopy validateClass:@"TPMessageIndicatorViewModel" hasProperty:@"isRead" withType:"B"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = MessageIndicatorViewAccessibility;
  [(MessageIndicatorViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v3 = [(MessageIndicatorViewAccessibility *)self safeSwiftValueForKey:@"recordImageView"];
  objc_initWeak(&location, self);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __79__MessageIndicatorViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v6[3] = &unk_29F309640;
  objc_copyWeak(&v7, &location);
  [v3 setAccessibilityIdentifierBlock:v6];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __79__MessageIndicatorViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v4[3] = &unk_29F309640;
  objc_copyWeak(&v5, &location);
  [v3 setAccessibilityLabelBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

__CFString *__79__MessageIndicatorViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeSwiftValueForKey:@"viewModel"];

  if ([v2 safeBoolForKey:@"isSensitive"])
  {
    v3 = @"TelephonyUI.MessageIndicatorView.sensitive";
  }

  else if ([v2 safeBoolForKey:@"isRead"])
  {
    v3 = @"TelephonyUI.MessageIndicatorView.play";
  }

  else
  {
    v3 = @"TelephonyUI.MessageIndicatorView.unread";
  }

  return v3;
}

id __79__MessageIndicatorViewAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeSwiftValueForKey:@"viewModel"];

  if ([v2 safeBoolForKey:@"isSensitive"])
  {
    v3 = @"indicator.sensitive";
  }

  else
  {
    if ([v2 safeBoolForKey:@"isRead"])
    {
      v4 = 0;
      goto LABEL_7;
    }

    v3 = @"indicator.unread";
  }

  v4 = accessibilityLocalizedString(v3);
LABEL_7:

  return v4;
}

@end