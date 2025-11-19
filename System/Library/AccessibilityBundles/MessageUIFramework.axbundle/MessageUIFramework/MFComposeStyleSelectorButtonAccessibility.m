@interface MFComposeStyleSelectorButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (int64_t)_accessibilityScannerActivateBehavior;
@end

@implementation MFComposeStyleSelectorButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MFComposeStyleSelectorButton" hasInstanceMethod:@"styleType" withFullSignature:{"q", 0}];
  [v3 validateClass:@"MFComposeFontSelectorButton"];
}

- (int64_t)_accessibilityScannerActivateBehavior
{
  v3 = [(MFComposeStyleSelectorButtonAccessibility *)self safeIntegerForKey:@"styleType"];
  if (v3 > 0xF || ((1 << v3) & 0xE19E) == 0)
  {
    return 1;
  }

  v6.receiver = self;
  v6.super_class = MFComposeStyleSelectorButtonAccessibility;
  return [(MFComposeStyleSelectorButtonAccessibility *)&v6 _accessibilityScannerActivateBehavior];
}

- (id)accessibilityLabel
{
  NSClassFromString(&cfstr_Mfcomposefonts.isa);
  if (objc_opt_isKindOfClass())
  {
    v6.receiver = self;
    v6.super_class = MFComposeStyleSelectorButtonAccessibility;
    v3 = [(MFComposeStyleSelectorButtonAccessibility *)&v6 accessibilityLabel];
  }

  else
  {
    switch([(MFComposeStyleSelectorButtonAccessibility *)self safeIntegerForKey:@"styleType"])
    {
      case 1:
        v4 = @"text.style.button.bold";
        goto LABEL_20;
      case 2:
        v4 = @"text.style.button.italic";
        goto LABEL_20;
      case 3:
        v4 = @"text.style.button.underline";
        goto LABEL_20;
      case 4:
        v4 = @"text.style.button.strikethrough";
        goto LABEL_20;
      case 5:
        v4 = @"text.style.button.decrease.font.size";
        goto LABEL_20;
      case 6:
        v4 = @"text.style.button.increase.font.size";
        goto LABEL_20;
      case 7:
        v4 = @"text.style.button.list.number";
        goto LABEL_20;
      case 8:
        v4 = @"text.style.button.list.bullets";
        goto LABEL_20;
      case 9:
        v4 = @"text.style.button.indent.left";
        goto LABEL_20;
      case 10:
        v4 = @"text.style.button.indent.right";
        goto LABEL_20;
      case 11:
        v4 = @"text.style.button.increase.quote";
        goto LABEL_20;
      case 12:
        v4 = @"text.style.button.decrease.quote";
        goto LABEL_20;
      case 13:
        v4 = @"text.style.button.justify.left";
        goto LABEL_20;
      case 14:
        v4 = @"text.style.button.justify.center";
        goto LABEL_20;
      case 15:
        v4 = @"text.style.button.justify.right";
LABEL_20:
        v3 = accessibilityLocalizedString(v4);
        break;
      default:
        v3 = 0;
        break;
    }
  }

  return v3;
}

@end