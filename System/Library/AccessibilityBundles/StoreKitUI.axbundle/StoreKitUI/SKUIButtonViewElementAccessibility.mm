@interface SKUIButtonViewElementAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityText;
- (unint64_t)accessibilityTraits;
@end

@implementation SKUIButtonViewElementAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUIButtonViewElement" hasInstanceMethod:@"buttonImage" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIButtonViewElement" hasInstanceMethod:@"buttonText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIButtonViewElement" isKindOfClass:@"IKViewElement"];
  [validationsCopy validateClass:@"IKViewElement" hasInstanceMethod:@"accessibilityText" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SKUIImageViewElement" hasInstanceMethod:@"resourceName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SKUIButtonViewElementAccessibility *)self safeValueForKey:@"buttonText"];
  accessibilityLabel = [v3 accessibilityLabel];

  if ([accessibilityLabel length])
  {
    v5 = accessibilityLabel;
    goto LABEL_11;
  }

  accessibilityIdentifier = [(SKUIButtonViewElementAccessibility *)self accessibilityIdentifier];
  if ([accessibilityIdentifier isEqualToString:@"post"])
  {
    v7 = @"post.label";
  }

  else if ([accessibilityIdentifier isEqualToString:@"LoveHateControlNeutral"])
  {
    v7 = @"connect.comment.likes";
  }

  else
  {
    if (![accessibilityIdentifier isEqualToString:@"share"])
    {
      v8 = accessibilityLabel;
      goto LABEL_10;
    }

    v7 = @"share.label";
  }

  v8 = accessibilitySKUILocalizedString(v7);
LABEL_10:
  v5 = v8;

LABEL_11:

  return v5;
}

- (id)accessibilityIdentifier
{
  objc_opt_class();
  v3 = [(SKUIButtonViewElementAccessibility *)self safeValueForKey:@"buttonImage"];
  v4 = [v3 safeValueForKey:@"resourceName"];
  v5 = __UIAccessibilityCastAsClass();

  return v5;
}

- (id)accessibilityText
{
  v7.receiver = self;
  v7.super_class = SKUIButtonViewElementAccessibility;
  accessibilityText = [(SKUIButtonViewElementAccessibility *)&v7 accessibilityText];

  if (accessibilityText)
  {
    v6.receiver = self;
    v6.super_class = SKUIButtonViewElementAccessibility;
    accessibilityText2 = [(SKUIButtonViewElementAccessibility *)&v6 accessibilityText];
  }

  else
  {
    accessibilityText2 = 0;
  }

  return accessibilityText2;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v4.receiver = self;
  v4.super_class = SKUIButtonViewElementAccessibility;
  return [(SKUIButtonViewElementAccessibility *)&v4 accessibilityTraits]| v2;
}

@end