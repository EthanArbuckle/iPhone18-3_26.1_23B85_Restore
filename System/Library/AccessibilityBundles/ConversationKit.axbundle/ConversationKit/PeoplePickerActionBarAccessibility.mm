@interface PeoplePickerActionBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation PeoplePickerActionBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ConversationKit.PeoplePickerActionBar" hasSwiftField:@"audioButton" withSwiftType:"UIButton"];
  [v3 validateClass:@"ConversationKit.PeoplePickerActionBar" hasSwiftField:@"serviceAvailability" withSwiftType:"ServiceAvailability"];
  [v3 validateSwiftStruct:@"ConversationKit.ServiceAvailability" hasSwiftField:@"telephony" withSwiftType:"Bool"];
  [v3 validateSwiftStruct:@"ConversationKit.ServiceAvailability" hasSwiftField:@"faceTimeAudio" withSwiftType:"Bool"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = PeoplePickerActionBarAccessibility;
  [(PeoplePickerActionBarAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  LOBYTE(location) = 0;
  objc_opt_class();
  v3 = [(PeoplePickerActionBarAccessibility *)self safeSwiftValueForKey:@"audioButton"];
  v4 = __UIAccessibilityCastAsClass();

  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __80__PeoplePickerActionBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2B7B80;
  objc_copyWeak(&v6, &location);
  [v4 setAccessibilityLabelBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

id __80__PeoplePickerActionBarAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeSwiftValueForKey:@"serviceAvailability"];

  v3 = [v2 safeBoolForKey:@"telephony"];
  v4 = [v2 safeBoolForKey:@"faceTimeAudio"];
  v5 = @"audio.call";
  v6 = @"facetime.audio";
  if (!v4)
  {
    v6 = @"audio.call";
    v5 = @"phone.call";
  }

  if (v3)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = accessibilityLocalizedString(v7);

  return v8;
}

@end