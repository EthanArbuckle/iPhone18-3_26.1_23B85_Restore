@interface PlatformListCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityLabel;
@end

@implementation PlatformListCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SwiftUI.AccessibilityNode"];
  [v3 validateClass:@"SwiftUI.ListTableViewCell" isKindOfClass:@"UITableViewCell"];
}

- (id)accessibilityLabel
{
  v30 = *MEMORY[0x29EDCA608];
  v28.receiver = self;
  v28.super_class = PlatformListCellAccessibility;
  v2 = [(PlatformListCellAccessibility *)&v28 accessibilityLabel];
  if (![v2 length])
  {
    v27 = 0;
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v4 = [v3 contentView];
    v5 = [v4 subviews];
    v6 = [v5 firstObject];
    v7 = [v6 _accessibilityFindUnsortedDescendantsPassingTest:&__block_literal_global_0];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      v12 = MEMORY[0x29EDBD918];
      do
      {
        v13 = 0;
        v14 = v2;
        do
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v23 + 1) + 8 * v13);
          v16 = [v15 accessibilityLabel];
          v17 = [v15 accessibilityLanguage];
          if (v17)
          {
            v18 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v16];

            [v18 setAttribute:v17 forKey:*v12];
            v16 = v18;
          }

          v21 = v16;
          v22 = @"__AXStringForVariablesSentinel";
          v2 = __UIAXStringForVariables();

          ++v13;
          v14 = v2;
        }

        while (v10 != v13);
        v10 = [v8 countByEnumeratingWithState:&v23 objects:v29 count:{16, v16, @"__AXStringForVariablesSentinel"}];
      }

      while (v10);
    }
  }

  v19 = *MEMORY[0x29EDCA608];

  return v2;
}

- (CGPoint)accessibilityActivationPoint
{
  v18 = 0;
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 contentView];
  v5 = [v4 subviews];
  v6 = [v5 firstObject];
  v7 = [v6 accessibilityElements];

  if ([v7 count] == 1)
  {
    v8 = [v7 firstObject];
    [v8 accessibilityActivationPoint];
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PlatformListCellAccessibility;
    [(PlatformListCellAccessibility *)&v17 accessibilityActivationPoint];
    v10 = v13;
    v12 = v14;
  }

  v15 = v10;
  v16 = v12;
  result.y = v16;
  result.x = v15;
  return result;
}

@end