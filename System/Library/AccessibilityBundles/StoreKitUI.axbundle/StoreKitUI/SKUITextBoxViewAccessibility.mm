@interface SKUITextBoxViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement:(id)element;
- (CGRect)accessibilityFrame:(id)frame;
- (id)accessibilityElements;
- (id)accessibilityLabel:(id)label;
- (unint64_t)accessibilityTraits:(id)traits;
- (void)_accessibilitySwitchOrderedChildrenFrom:(id)from;
@end

@implementation SKUITextBoxViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUITextBoxView" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SKUITextBoxView" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SKUITextBoxView" hasInstanceVariable:@"_ratingLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"SKUITextBoxView" hasInstanceVariable:@"_ratingImageView" withType:"UIImageView"];
  [validationsCopy validateClass:@"SKUITextBoxView" hasInstanceVariable:@"_underlyingText" withType:"NSString"];
  [validationsCopy validateClass:@"SKUITextBoxView" hasInstanceVariable:@"_textFrame" withType:"^{__CTFrame=}"];
}

- (id)accessibilityElements
{
  v3 = MEMORY[0x29EDC7620];
  array = [(SKUITextBoxViewAccessibility *)self _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
  if (!array)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v5 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    [v5 setAccessibilityDelegate:self];
    [v5 setAccessibilityIdentifier:@"ElementIDHeader"];
    [array addObject:v5];
    v6 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    [v6 setAccessibilityDelegate:self];
    [v6 setAccessibilityIdentifier:@"ElementIDContent"];
    [array addObject:v6];
    [(SKUITextBoxViewAccessibility *)self _accessibilitySetRetainedValue:array forKey:*v3];
  }

  return array;
}

- (BOOL)isAccessibilityElement:(id)element
{
  accessibilityLabel = [element accessibilityLabel];
  v4 = [accessibilityLabel length] != 0;

  return v4;
}

- (id)accessibilityLabel:(id)label
{
  labelCopy = label;
  accessibilityIdentifier = [labelCopy accessibilityIdentifier];
  v6 = [accessibilityIdentifier isEqualToString:@"ElementIDHeader"];

  if (v6)
  {
    v7 = [(SKUITextBoxViewAccessibility *)self safeValueForKey:@"_titleLabel"];
    accessibilityLabel = [v7 accessibilityLabel];
  }

  else
  {
    accessibilityIdentifier2 = [labelCopy accessibilityIdentifier];
    v10 = [accessibilityIdentifier2 isEqualToString:@"ElementIDContent"];

    if (!v10)
    {
      v21.receiver = self;
      v21.super_class = SKUITextBoxViewAccessibility;
      accessibilityLabel = [(SKUITextBoxViewAccessibility *)&v21 accessibilityLabel];
      goto LABEL_12;
    }

    v7 = [(SKUITextBoxViewAccessibility *)self safeValueForKey:@"_subtitleLabel"];
    v11 = [(SKUITextBoxViewAccessibility *)self safeValueForKey:@"_ratingLabel"];
    v12 = [(SKUITextBoxViewAccessibility *)self safeValueForKey:@"_ratingImageView"];
    v13 = [(SKUITextBoxViewAccessibility *)self safeIvarForKey:@"_textFrame"];
    if (v13)
    {
      v14 = *v13;
    }

    v15 = UIAccessibilitySafeTextForCoreTextObject();
    whitespaceAndNewlineCharacterSet = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
    v17 = [v15 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

    if ([v17 length])
    {
      [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{4, v7, v11, v12, v15}];
    }

    else
    {
      [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{3, v7, v11, v12, v20}];
    }
    v18 = ;
    accessibilityLabel = MEMORY[0x29ED3A170]();
  }

LABEL_12:

  return accessibilityLabel;
}

- (CGRect)accessibilityFrame:(id)frame
{
  frameCopy = frame;
  accessibilityIdentifier = [frameCopy accessibilityIdentifier];
  v6 = [accessibilityIdentifier isEqualToString:@"ElementIDHeader"];

  if (v6)
  {
    v7 = [(SKUITextBoxViewAccessibility *)self safeValueForKey:@"_titleLabel"];
    [v7 accessibilityFrame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
  }

  else
  {
    accessibilityIdentifier2 = [frameCopy accessibilityIdentifier];
    v17 = [accessibilityIdentifier2 isEqualToString:@"ElementIDContent"];

    if (v17)
    {
      [(SKUITextBoxViewAccessibility *)self accessibilityFrame];
    }

    else
    {
      v26.receiver = self;
      v26.super_class = SKUITextBoxViewAccessibility;
      [(SKUITextBoxViewAccessibility *)&v26 accessibilityFrame];
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

- (unint64_t)accessibilityTraits:(id)traits
{
  traitsCopy = traits;
  accessibilityIdentifier = [traitsCopy accessibilityIdentifier];
  v6 = [accessibilityIdentifier isEqualToString:@"ElementIDHeader"];

  if (v6)
  {
    accessibilityLabel = [traitsCopy accessibilityLabel];

    v8 = [accessibilityLabel length];
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
    accessibilityIdentifier2 = [traitsCopy accessibilityIdentifier];

    v11 = [accessibilityIdentifier2 isEqualToString:@"ElementIDContent"];
    if (!v11)
    {
      v13.receiver = self;
      v13.super_class = SKUITextBoxViewAccessibility;
      return [(SKUITextBoxViewAccessibility *)&v13 accessibilityTraits];
    }

    v9 = MEMORY[0x29EDC7FA0];
  }

  return *v9;
}

- (void)_accessibilitySwitchOrderedChildrenFrom:(id)from
{
  v18 = *MEMORY[0x29EDCA608];
  fromCopy = from;
  v5 = MEMORY[0x29EDC7620];
  v6 = [fromCopy _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
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

  [(SKUITextBoxViewAccessibility *)self _accessibilitySetRetainedValue:v6 forKey:*v5];
  [fromCopy _accessibilityRemoveValueForKey:*v5];

  v12 = *MEMORY[0x29EDCA608];
}

@end