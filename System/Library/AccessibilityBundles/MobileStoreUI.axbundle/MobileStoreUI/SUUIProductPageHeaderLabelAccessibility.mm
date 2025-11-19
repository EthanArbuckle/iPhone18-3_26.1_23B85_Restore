@interface SUUIProductPageHeaderLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation SUUIProductPageHeaderLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SUUIProductPageHeaderLabel" hasInstanceMethod:@"text" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SUUIProductPageHeaderLabel" hasInstanceMethod:@"contentRating" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SUUIProductPageHeaderLabelAccessibility *)self safeValueForKey:@"text"];
  v4 = [(SUUIProductPageHeaderLabelAccessibility *)self safeValueForKey:@"contentRating"];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 stringByReplacingOccurrencesOfString:@"+" withString:&stru_2A2230BA8];

    v7 = MEMORY[0x29EDBA0F8];
    v8 = accessibilityLocalizedString(@"app.rating.label");
    v9 = [v7 stringWithFormat:v8, v6];
  }

  else
  {
    v9 = &stru_2A2230BA8;
  }

  v10 = __UIAXStringForVariables();

  return v10;
}

@end