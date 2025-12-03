@interface LanguageAwareTextViewAccessibility
- (id)accessibilityLanguage;
- (void)accessibilityLanguage;
@end

@implementation LanguageAwareTextViewAccessibility

- (id)accessibilityLanguage
{
  v3 = [(LanguageAwareTextViewAccessibility *)self safeSwiftValueForKey:@"locale"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    localeIdentifier = [v3 localeIdentifier];
  }

  else
  {
    v5 = AXLogAppAccessibility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(LanguageAwareTextViewAccessibility *)v3 accessibilityLanguage];
    }

    v8.receiver = self;
    v8.super_class = LanguageAwareTextViewAccessibility;
    localeIdentifier = [(LanguageAwareTextViewAccessibility *)&v8 accessibilityLanguage];
  }

  v6 = localeIdentifier;

  return v6;
}

- (void)accessibilityLanguage
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = 138412546;
  selfCopy = self;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_29C4D0000, log, OS_LOG_TYPE_DEBUG, "Expected locale property to be of type NSLocale. was: %@. self=%@", &v4, 0x16u);
  v3 = *MEMORY[0x29EDCA608];
}

@end