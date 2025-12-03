@interface SPUISearchBarWindowAccessibility
- (BOOL)accessibilityElementsHidden;
- (SPUISearchBarWindowAccessibility)init;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)accessibilityElementsHidden;
- (void)dealloc;
@end

@implementation SPUISearchBarWindowAccessibility

- (SPUISearchBarWindowAccessibility)init
{
  v4.receiver = self;
  v4.super_class = SPUISearchBarWindowAccessibility;
  v2 = [(SPUISearchBarWindowAccessibility *)&v4 init];
  [(SPUISearchBarWindowAccessibility *)v2 _accessibilityLoadAccessibilityInformation];

  return v2;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = SPUISearchBarWindowAccessibility;
  [(SPUISearchBarWindowAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  server = [MEMORY[0x29EDBDFA8] server];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __78__SPUISearchBarWindowAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2FAC58;
  v5[4] = self;
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __78__SPUISearchBarWindowAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_297;
  v4[3] = &unk_29F2FAC80;
  v4[4] = self;
  [server registerSpringBoardActionHandler:v5 withIdentifierCallback:v4];

  AXPerformBlockAsynchronouslyOnMainThread();
}

void __78__SPUISearchBarWindowAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = a3;
  if (a2 == 14)
  {
    v6 = AXLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_29C372000, v6, OS_LOG_TYPE_INFO, "Spotlight visible change: %@", &v10, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = [v5 objectForKeyedSubscript:@"isVisible"];
    [v7 _accessibilitySetBoolValue:objc_msgSend(v8 forKey:{"BOOLValue"), @"isSpotlightVisible"}];
  }

  v9 = *MEMORY[0x29EDCA608];
}

void __78__SPUISearchBarWindowAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_297(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = a2;
  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_29C372000, v4, OS_LOG_TYPE_INFO, "Spotlight register: %@", &v6, 0xCu);
  }

  [*(a1 + 32) _accessibilitySetRetainedValue:v3 forKey:@"actionHandlerIdentifier"];
  v5 = *MEMORY[0x29EDCA608];
}

void __78__SPUISearchBarWindowAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_302(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x29EDBDFA8] server];
  [v1 _accessibilitySetBoolValue:objc_msgSend(v2 forKey:{"isSpotlightVisible"), @"isSpotlightVisible"}];
}

- (void)dealloc
{
  server = [MEMORY[0x29EDBDFA8] server];
  v4 = [(SPUISearchBarWindowAccessibility *)self _accessibilityValueForKey:@"actionHandlerIdentifier"];
  [server removeActionHandler:v4];

  v5.receiver = self;
  v5.super_class = SPUISearchBarWindowAccessibility;
  [(SPUISearchBarWindowAccessibility *)&v5 dealloc];
}

- (BOOL)accessibilityElementsHidden
{
  v3 = [(SPUISearchBarWindowAccessibility *)self _accessibilityBoolValueForKey:@"isSpotlightVisible"];
  v4 = AXLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(SPUISearchBarWindowAccessibility *)v3 accessibilityElementsHidden];
  }

  if (v3)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = SPUISearchBarWindowAccessibility;
  return [(SPUISearchBarWindowAccessibility *)&v6 accessibilityElementsHidden];
}

- (void)accessibilityElementsHidden
{
  v4 = *MEMORY[0x29EDCA608];
  v3[0] = 67109120;
  v3[1] = self & 1;
  _os_log_debug_impl(&dword_29C372000, a2, OS_LOG_TYPE_DEBUG, "Spotlight visible status: %d", v3, 8u);
  v2 = *MEMORY[0x29EDCA608];
}

@end