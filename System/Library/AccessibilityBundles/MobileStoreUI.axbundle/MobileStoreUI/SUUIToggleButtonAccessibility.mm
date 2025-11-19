@interface SUUIToggleButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (id)_accessibilityFindAttributedStringView;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
@end

@implementation SUUIToggleButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIAttributedStringView"];
  [v3 validateClass:@"SUUIToggleStateCenter"];
  [v3 validateClass:@"SUUIToggleStateItem"];
  [v3 validateClass:@"SUUIToggleButton" hasInstanceMethod:@"element" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIToggleButton" hasInstanceMethod:@"toggledTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIToggleButton" hasInstanceMethod:@"nonToggledTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIToggleButton" hasInstanceMethod:@"isToggled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SUUIToggleButton" hasInstanceVariable:@"_titleToggleString" withType:"NSString"];
  [v3 validateClass:@"SUUIToggleButton" hasInstanceVariable:@"_toggled" withType:"B"];
  [v3 validateClass:@"SUUIToggleButton" hasInstanceVariable:@"_autoIncrement" withType:"B"];
  [v3 validateClass:@"SUUIToggleButton" hasInstanceMethod:@"toggleItemIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIToggleButton" hasInstanceVariable:@"_autoIncrementCount" withType:"q"];
}

- (id)accessibilityLabel
{
  v3 = [(SUUIToggleButtonAccessibility *)self safeValueForKey:@"element"];
  v4 = [v3 accessibilityLabel];

  if ([v4 length] || (-[SUUIToggleButtonAccessibility _accessibilityFindAttributedStringView](self, "_accessibilityFindAttributedStringView"), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = v4;
  }

  else
  {
    v7 = v6;
    v5 = [v6 accessibilityLabel];
  }

  return v5;
}

- (id)_accessibilityFindAttributedStringView
{
  v16 = *MEMORY[0x29EDCA608];
  [(SUUIToggleButtonAccessibility *)self subviews];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        NSClassFromString(&cfstr_Suuiattributed.isa);
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  v9 = *MEMORY[0x29EDCA608];

  return v8;
}

- (id)accessibilityValue
{
  v3 = [MEMORY[0x29EDBA0F8] string];
  if ([(SUUIToggleButtonAccessibility *)self safeBoolForKey:@"isToggled"])
  {
    v4 = @"toggledTitle";
  }

  else
  {
    v4 = @"nonToggledTitle";
  }

  v5 = [(SUUIToggleButtonAccessibility *)self safeValueForKey:v4];
  if ([v5 length])
  {
    v5 = v5;

    v3 = v5;
  }

  if ([v3 length])
  {
    goto LABEL_7;
  }

  v13 = 0;
  objc_opt_class();
  v7 = [(SUUIToggleButtonAccessibility *)self safeValueForKey:@"_titleToggleString"];
  v8 = __UIAccessibilityCastAsClass();

  v9 = [MEMORY[0x29EDB9F50] whitespaceAndNewlineCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:v9];

  v6 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v10];
  [v6 setAttribute:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD9E0]];
  if (![v6 length])
  {

LABEL_7:
    v12.receiver = self;
    v12.super_class = SUUIToggleButtonAccessibility;
    v6 = [(SUUIToggleButtonAccessibility *)&v12 accessibilityValue];
    goto LABEL_10;
  }

LABEL_10:

  return v6;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = SUUIToggleButtonAccessibility;
  v3 = *MEMORY[0x29EDC7F70] | [(SUUIToggleButtonAccessibility *)&v7 accessibilityTraits];
  v4 = [(SUUIToggleButtonAccessibility *)self safeBoolForKey:@"isToggled"];
  v5 = *MEMORY[0x29EDC7FC0];
  if (!v4)
  {
    v5 = 0;
  }

  return v3 | v5;
}

- (BOOL)accessibilityActivate
{
  v5.receiver = self;
  v5.super_class = SUUIToggleButtonAccessibility;
  v3 = [(SUUIToggleButtonAccessibility *)&v5 accessibilityActivate];
  [(SUUIToggleButtonAccessibility *)self safeBoolForKey:@"_toggled"];
  [(SUUIToggleButtonAccessibility *)self safeBoolForKey:@"_autoIncrement"];
  AXPerformSafeBlock();
  return v3;
}

void __54__SUUIToggleButtonAccessibility_accessibilityActivate__block_invoke(uint64_t a1)
{
  v9 = [*(a1 + 32) safeValueForKey:@"toggleItemIdentifier"];
  if (v9)
  {
    v2 = [NSClassFromString(&cfstr_Suuitogglestat.isa) defaultCenter];
    v3 = [v2 itemForIdentifier:v9];
    v4 = v3;
    if (*(a1 + 40) == 1)
    {
      v5 = [v3 count];
      if (v5 == -1)
      {
        v5 = [*(a1 + 32) safeIntegerForKey:@"_autoIncrementCount"];
      }

      if (*(a1 + 41))
      {
        v6 = v5 - 1;
      }

      else
      {
        v6 = v5 + 1;
      }

      v7 = v6 & ~(v6 >> 63);
      if (v6 < 1)
      {
        v8 = @" ";
      }

      else
      {
        v8 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%li", v7];
      }

      [v4 setToggledString:v8];
      [v4 setCount:v7];
    }

    [v4 setToggled:(*(a1 + 41) & 1) == 0];
    [v2 updateItem:v4];
  }

  else
  {
    [*(a1 + 32) setToggled:(*(a1 + 41) & 1) == 0];
  }
}

@end