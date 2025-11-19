@interface SUUIProductInformationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityElements;
@end

@implementation SUUIProductInformationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIProductInformationView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"SUUIProductInformationView" hasInstanceVariable:@"_keyLabels" withType:"NSMutableArray"];
  [v3 validateClass:@"SUUIProductInformationView" hasInstanceVariable:@"_valueLabels" withType:"NSMutableArray"];
}

- (id)accessibilityElements
{
  v3 = [(SUUIProductInformationViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v3)
  {
    v3 = [MEMORY[0x29EDB8DE8] array];
    v4 = [(SUUIProductInformationViewAccessibility *)self safeValueForKey:@"_titleLabel"];
    [v4 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
    v17 = v4;
    [v3 axSafelyAddObject:v4];
    v5 = [(SUUIProductInformationViewAccessibility *)self safeValueForKey:@"_keyLabels"];
    v6 = [(SUUIProductInformationViewAccessibility *)self safeValueForKey:@"_valueLabels"];
    v7 = [v5 count];
    if (v7 != [v6 count])
    {
      _AXAssert();
    }

    v8 = [v5 count];
    v9 = [v6 count];
    if (v8 >= v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      for (i = 0; i != v10; ++i)
      {
        v12 = [v5 objectAtIndex:i];
        v13 = [v6 objectAtIndex:i];
        v14 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{2, v12, v13}];
        v15 = [objc_alloc(MEMORY[0x29EDC7318]) initWithAccessibilityContainer:self representedElements:v14];
        [v3 addObject:v15];
      }
    }

    [(SUUIProductInformationViewAccessibility *)self _accessibilitySetRetainedValue:v3 forKey:*MEMORY[0x29EDC7620]];
  }

  return v3;
}

@end