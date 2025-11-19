@interface VUILibraryProductInfoViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityGetInfoSections;
- (id)accessibilityElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilityMarkHeaders;
- (void)didMoveToWindow;
@end

@implementation VUILibraryProductInfoViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VUILibraryProductInfoView" hasInstanceMethod:@"infos" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUILibraryProductInfoSection" hasInstanceMethod:@"headerContentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUILibraryProductInfoSection" hasInstanceMethod:@"dataViews" withFullSignature:{"@", 0}];
  [v3 validateClass:@"VUILibraryProductInfoView" isKindOfClass:@"UIView"];
}

- (id)_accessibilityGetInfoSections
{
  v2 = [(VUILibraryProductInfoViewAccessibility *)self safeValueForKey:@"infos"];
  v3 = __UIAccessibilitySafeClass();

  v4 = [v3 axFilterObjectsUsingBlock:&__block_literal_global_12];

  return v4;
}

BOOL __71__VUILibraryProductInfoViewAccessibility__accessibilityGetInfoSections__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __UIAccessibilitySafeClass();
  v4 = v3 != 0;

  return v4;
}

- (id)accessibilityElements
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = [(VUILibraryProductInfoViewAccessibility *)self _accessibilityGetInfoSections];
  v3 = [MEMORY[0x29EDB8DE8] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 safeValueForKey:{@"headerContentView", v14}];
        [v3 axSafelyAddObject:v10];

        v11 = [v9 safeValueForKey:@"dataViews"];
        [v3 axSafelyAddObjectsFromArray:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x29EDCA608];

  return v3;
}

- (void)_accessibilityMarkHeaders
{
  v17 = *MEMORY[0x29EDCA608];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [(VUILibraryProductInfoViewAccessibility *)self _accessibilityGetInfoSections];
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = *MEMORY[0x29EDC7F80];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        v9 = [v8 safeValueForKey:@"headerContentView"];
        v10 = __UIAccessibilityCastAsClass();

        [v10 setAccessibilityTraits:{v6 | objc_msgSend(v10, "accessibilityTraits")}];
      }

      v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v11 = *MEMORY[0x29EDCA608];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = VUILibraryProductInfoViewAccessibility;
  [(VUILibraryProductInfoViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(VUILibraryProductInfoViewAccessibility *)self _accessibilityMarkHeaders];
}

- (void)didMoveToWindow
{
  [(VUILibraryProductInfoViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v3.receiver = self;
  v3.super_class = VUILibraryProductInfoViewAccessibility;
  [(VUILibraryProductInfoViewAccessibility *)&v3 didMoveToWindow];
}

@end