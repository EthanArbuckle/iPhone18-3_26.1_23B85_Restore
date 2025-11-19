@interface PKColorMatrixViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (PKColorMatrixViewAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didTapColorButton:(id)a3;
@end

@implementation PKColorMatrixViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKColorMatrixView" hasInstanceMethod:@"colorMatrix" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKColorMatrixView" hasInstanceMethod:@"colorButtons" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PKColorMatrixView" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"PKColorMatrixView" hasInstanceMethod:@"didTapColorButton:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"PKColorMatrixView" isKindOfClass:@"UIView"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v14.receiver = self;
  v14.super_class = PKColorMatrixViewAccessibility;
  [(PKColorMatrixViewAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  v3 = [(PKColorMatrixViewAccessibility *)self safeArrayForKey:@"colorMatrix"];
  v4 = [(PKColorMatrixViewAccessibility *)self safeArrayForKey:@"colorButtons"];
  v5 = [v3 count];
  if (v5 == [v4 count] && objc_msgSend(v3, "count"))
  {
    v6 = 0;
    do
    {
      v7 = [v3 objectAtIndex:v6];
      v8 = [v4 objectAtIndex:v6];
      v9 = [v7 count];
      if (v9 == [v8 count] && objc_msgSend(v7, "count"))
      {
        v10 = 0;
        do
        {
          v11 = [v7 objectAtIndex:v10];
          v12 = [v8 objectAtIndex:v10];
          v13 = AXColorStringForColor();
          [v12 setAccessibilityLabel:v13];

          ++v10;
        }

        while (v10 < [v7 count]);
      }

      ++v6;
    }

    while (v6 < [v3 count]);
  }
}

- (PKColorMatrixViewAccessibility)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PKColorMatrixViewAccessibility;
  v3 = [(PKColorMatrixViewAccessibility *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKColorMatrixViewAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  }

  return v4;
}

- (void)didTapColorButton:(id)a3
{
  v24 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PKColorMatrixViewAccessibility;
  [(PKColorMatrixViewAccessibility *)&v22 didTapColorButton:v4];
  v21 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [v5 subviews];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    v10 = *MEMORY[0x29EDC7FC0];
    v11 = ~*MEMORY[0x29EDC7FC0];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 accessibilityTraits];
          if (v13 == v4)
          {
            v15 = v10 | v14;
          }

          else
          {
            v15 = v14 & v11;
          }

          [v13 setAccessibilityTraits:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x29EDCA608];
}

@end