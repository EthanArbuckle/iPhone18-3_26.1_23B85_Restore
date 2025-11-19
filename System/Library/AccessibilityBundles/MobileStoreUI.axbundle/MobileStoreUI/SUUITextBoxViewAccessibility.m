@interface SUUITextBoxViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement:(id)a3;
- (CGRect)accessibilityFrame:(id)a3;
- (id)accessibilityElements;
- (id)accessibilityLabel:(id)a3;
- (unint64_t)accessibilityTraits:(id)a3;
- (void)_accessibilitySwitchOrderedChildrenFrom:(id)a3;
@end

@implementation SUUITextBoxViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUITextBoxView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [v3 validateClass:@"SUUITextBoxView" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
  [v3 validateClass:@"SUUITextBoxView" hasInstanceVariable:@"_ratingLabel" withType:"UILabel"];
  [v3 validateClass:@"SUUITextBoxView" hasInstanceVariable:@"_ratingImageView" withType:"UIImageView"];
  [v3 validateClass:@"SUUITextBoxView" hasInstanceVariable:@"_underlyingText" withType:"NSString"];
  [v3 validateClass:@"SUUITextBoxView" hasInstanceVariable:@"_textFrame" withType:"^{__CTFrame=}"];
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDC7620];
  v4 = [(SUUITextBoxViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!v4)
  {
    v4 = [MEMORY[0x29EDB8DE8] array];
    v5 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    [v5 setAccessibilityDelegate:self];
    [v5 setAccessibilityIdentifier:@"ElementIDHeader"];
    [v4 addObject:v5];
    v6 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    [v6 setAccessibilityDelegate:self];
    [v6 setAccessibilityIdentifier:@"ElementIDContent"];
    [v4 addObject:v6];
    [(SUUITextBoxViewAccessibility *)self _accessibilitySetRetainedValue:v4 forKey:*v3];
  }

  return v4;
}

- (BOOL)isAccessibilityElement:(id)a3
{
  v3 = [a3 accessibilityLabel];
  v4 = [v3 length] != 0;

  return v4;
}

- (id)accessibilityLabel:(id)a3
{
  v4 = a3;
  v5 = [v4 accessibilityIdentifier];
  v6 = [v5 isEqualToString:@"ElementIDHeader"];

  if (v6)
  {
    v7 = [(SUUITextBoxViewAccessibility *)self safeValueForKey:@"_titleLabel"];
    v8 = [v7 accessibilityLabel];
  }

  else
  {
    v9 = [v4 accessibilityIdentifier];
    v10 = [v9 isEqualToString:@"ElementIDContent"];

    if (!v10)
    {
      v21.receiver = self;
      v21.super_class = SUUITextBoxViewAccessibility;
      v8 = [(SUUITextBoxViewAccessibility *)&v21 accessibilityLabel];
      goto LABEL_12;
    }

    v7 = [(SUUITextBoxViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
    v11 = [(SUUITextBoxViewAccessibility *)self safeValueForKey:@"_ratingLabel"];
    v12 = [(SUUITextBoxViewAccessibility *)self safeValueForKey:@"_ratingImageView"];
    v13 = [(SUUITextBoxViewAccessibility *)self safeIvarForKey:@"_textFrame"];
    if (v13)
    {
      v14 = *v13;
    }

    v15 = UIAccessibilitySafeTextForCoreTextObject();
    v16 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
    v17 = [v15 stringByTrimmingCharactersInSet:v16];

    if ([v17 length])
    {
      [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{4, v7, v11, v12, v15}];
    }

    else
    {
      [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{3, v7, v11, v12, v20}];
    }
    v18 = ;
    v8 = MEMORY[0x29C2E1480]();
  }

LABEL_12:

  return v8;
}

- (CGRect)accessibilityFrame:(id)a3
{
  v4 = a3;
  v5 = [v4 accessibilityIdentifier];
  v6 = [v5 isEqualToString:@"ElementIDHeader"];

  if (v6)
  {
    v7 = [(SUUITextBoxViewAccessibility *)self safeValueForKey:@"_titleLabel"];
    [v7 accessibilityFrame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    v16 = [v4 accessibilityIdentifier];
    v17 = [v16 isEqualToString:@"ElementIDContent"];

    if (v17)
    {
      [(SUUITextBoxViewAccessibility *)self accessibilityFrame];
    }

    else
    {
      v26.receiver = self;
      v26.super_class = SUUITextBoxViewAccessibility;
      [(SUUITextBoxViewAccessibility *)&v26 accessibilityFrame];
    }

    v9 = v18;
    v11 = v19;
    v13 = v20;
    v15 = v21;
  }

  v22 = v9;
  v23 = v11;
  v24 = v13;
  v25 = v15;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (unint64_t)accessibilityTraits:(id)a3
{
  v4 = a3;
  v5 = [v4 accessibilityIdentifier];
  v6 = [v5 isEqualToString:@"ElementIDHeader"];

  if (v6)
  {
    v7 = [v4 accessibilityLabel];

    v8 = [v7 length];
    if (v8)
    {
      v9 = MEMORY[0x29EDC7F80];
    }

    else
    {
      v9 = MEMORY[0x29EDC7578];
    }
  }

  else
  {
    v10 = [v4 accessibilityIdentifier];

    v11 = [v10 isEqualToString:@"ElementIDContent"];
    if (!v11)
    {
      v13.receiver = self;
      v13.super_class = SUUITextBoxViewAccessibility;
      return [(SUUITextBoxViewAccessibility *)&v13 accessibilityTraits];
    }

    v9 = MEMORY[0x29EDC7FA0];
  }

  return *v9;
}

- (void)_accessibilitySwitchOrderedChildrenFrom:(id)a3
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v5 = MEMORY[0x29EDC7620];
  v6 = [v4 _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        [v11 setAccessibilityDelegate:self];
        [v11 setAccessibilityContainer:self];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(SUUITextBoxViewAccessibility *)self _accessibilitySetRetainedValue:v6 forKey:*v5];
  [v4 _accessibilityRemoveValueForKey:*v5];

  v12 = *MEMORY[0x29EDCA608];
}

@end