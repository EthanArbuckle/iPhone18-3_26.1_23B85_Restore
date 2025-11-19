@interface SleepScoreGalleryViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SleepScoreGalleryViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v15.receiver = self;
  v15.super_class = SleepScoreGalleryViewControllerAccessibility;
  [(SleepScoreGalleryViewControllerAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  v14 = 0;
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = [v2 view];
  v4 = [v3 _accessibilityFindDescendant:&__block_literal_global_1];

  v9 = MEMORY[0x29EDCA5F8];
  v10 = 3221225472;
  v11 = __90__SleepScoreGalleryViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2;
  v12 = &unk_29F2F9840;
  v13 = v4;
  v5 = v4;
  v6 = [v5 _accessibilityFindDescendant:&v9];
  v7 = v6;
  if (v6)
  {
    [v6 _accessibilitySetPagingEnabled:{1, v9, v10, v11, v12, v13}];
    [v7 accessibilitySetIdentification:@"SleepGalleryPagingScrollView"];
  }

  else
  {
    v8 = AXLogValidations();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [(SleepScoreGalleryViewControllerAccessibility *)v8 _accessibilityLoadAccessibilityInformation];
    }
  }
}

uint64_t __90__SleepScoreGalleryViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __90__SleepScoreGalleryViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == a2)
  {
    isKindOfClass = 0;
  }

  else
  {
    v2 = a2;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end