@interface SKUIButtonViewElementAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityIdentifier;
- (id)accessibilityLabel;
- (id)accessibilityText;
- (unint64_t)accessibilityTraits;
@end

@implementation SKUIButtonViewElementAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SKUIButtonViewElement" hasInstanceMethod:@"buttonImage" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIButtonViewElement" hasInstanceMethod:@"buttonText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIButtonViewElement" isKindOfClass:@"IKViewElement"];
  [v3 validateClass:@"IKViewElement" hasInstanceMethod:@"accessibilityText" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SKUIImageViewElement" hasInstanceMethod:@"resourceName" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(SKUIButtonViewElementAccessibility *)self safeValueForKey:@"buttonText"];
  v4 = [v3 accessibilityLabel];

  if ([v4 length])
  {
    v5 = v4;
    goto LABEL_11;
  }

  v6 = [(SKUIButtonViewElementAccessibility *)self accessibilityIdentifier];
  if ([v6 isEqualToString:@"post"])
  {
    v7 = @"post.label";
  }

  else if ([v6 isEqualToString:@"LoveHateControlNeutral"])
  {
    v7 = @"connect.comment.likes";
  }

  else
  {
    if (![v6 isEqualToString:@"share"])
    {
      v8 = v4;
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
  v3 = [(SKUIButtonViewElementAccessibility *)&v7 accessibilityText];

  if (v3)
  {
    v6.receiver = self;
    v6.super_class = SKUIButtonViewElementAccessibility;
    v4 = [(SKUIButtonViewElementAccessibility *)&v6 accessibilityText];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F70];
  v4.receiver = self;
  v4.super_class = SKUIButtonViewElementAccessibility;
  return [(SKUIButtonViewElementAccessibility *)&v4 accessibilityTraits]| v2;
}

@end