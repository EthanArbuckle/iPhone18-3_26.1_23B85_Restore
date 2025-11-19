@interface TUICandidateSortControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)layoutSubviews;
@end

@implementation TUICandidateSortControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TUICandidateSortControl" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"TUICandidateSortControl" hasInstanceMethod:@"segmentedControl" withFullSignature:{"@", 0}];
  [v3 validateClass:@"UISegmentedControl" hasInstanceVariable:@"_segments" withType:"NSMutableArray"];
}

- (void)layoutSubviews
{
  v17 = *MEMORY[0x29EDCA608];
  v15.receiver = self;
  v15.super_class = TUICandidateSortControlAccessibility;
  [(TUICandidateSortControlAccessibility *)&v15 layoutSubviews];
  v3 = UIAccessibilityLanguageForCurrentInputMode();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(TUICandidateSortControlAccessibility *)self safeValueForKey:@"segmentedControl", 0];
  v5 = [v4 safeArrayForKey:@"_segments"];

  v6 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setAccessibilityLanguage:v3];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x29EDCA608];
}

@end