@interface BadgeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation BadgeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppStore.BadgeView" hasInstanceMethod:@"accessibilityValueLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppStore.BadgeView" hasInstanceMethod:@"accessibilityCaptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppStore.BadgeView" hasInstanceMethod:@"accessibilityHeadingLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppStore.BadgeView" hasInstanceMethod:@"accessibilityValueView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"AppStore.BadgeView" hasSwiftField:@"valueView" withSwiftType:"Optional<UIView>"];
  [v3 validateClass:@"AppStoreKit.ArtworkView"];
}

- (id)accessibilityLabel
{
  v3 = [(BadgeViewAccessibility *)self safeValueForKey:@"accessibilityValueLabel"];
  v4 = [v3 accessibilityLabel];

  if ([v4 length])
  {
    v34 = 0;
    v5 = [MEMORY[0x29EDBA0D0] regularExpressionWithPattern:@"(\\d*\\.\\d*)" options:1 error:&v34];
    v6 = [v5 matchesInString:v4 options:0 range:{0, objc_msgSend(v4, "length")}];
    if ([v6 count])
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      v8 = [v7 range];
      v10 = [v4 substringWithRange:{v8, v9}];
      [v10 doubleValue];

      v11 = UIAXStarRatingStringForRatingWithGranularity();
    }

    else
    {
      v11 = v4;
    }

    v33 = v11;
  }

  else
  {
    v33 = 0;
  }

  v12 = [(BadgeViewAccessibility *)self safeValueForKey:@"accessibilityValueView"];
  v13 = accessibilityAppStorePrefixForTarget();
  objc_opt_class();
  v14 = [(BadgeViewAccessibility *)self safeSwiftValueForKey:@"valueView"];
  v15 = __UIAccessibilityCastAsClass();

  v31 = v15;
  if (v15)
  {
    v16 = [v15 image];
    v17 = [v16 imageAsset];

    v18 = [v17 safeStringForKey:@"assetName"];
    if ([v18 isEqualToString:@"br.10"] & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"br.10.official"))
    {
      v19 = @"age.rating.10";
    }

    else if ([v18 isEqualToString:@"br.12"] & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"br.12.official"))
    {
      v19 = @"age.rating.12";
    }

    else if ([v18 isEqualToString:@"br.14"] & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"br.14.official"))
    {
      v19 = @"age.rating.14";
    }

    else if ([v18 isEqualToString:@"br.16"] & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"br.16.official"))
    {
      v19 = @"age.rating.16";
    }

    else if ([v18 isEqualToString:@"br.18"] & 1) != 0 || (objc_msgSend(v18, "isEqualToString:", @"br.18.official"))
    {
      v19 = @"age.rating.18";
    }

    else
    {
      if (([v18 isEqualToString:@"br.l"] & 1) == 0 && !objc_msgSend(v18, "isEqualToString:", @"br.l.official"))
      {
        v20 = 0;
        goto LABEL_12;
      }

      v19 = @"age.rating.L";
    }

    v20 = accessibilityAppStoreLocalizedString(v19);
LABEL_12:

    goto LABEL_14;
  }

  v20 = 0;
LABEL_14:
  v21 = [(BadgeViewAccessibility *)self safeValueForKey:@"accessibilityHeadingLabel"];
  v22 = [v21 accessibilityLabel];
  v32 = v13;
  v23 = [v13 stringByAppendingString:@".ArtworkView"];
  MEMORY[0x29C2C8BD0]();
  isKindOfClass = objc_opt_isKindOfClass();
  v25 = v12;
  if (isKindOfClass)
  {
    v26 = 0;
  }

  else
  {
    v26 = [v12 accessibilityLabel];
  }

  v27 = [(BadgeViewAccessibility *)self safeValueForKey:@"accessibilityCaptionLabel"];
  v30 = [v27 accessibilityLabel];
  v28 = __UIAXStringForVariables();

  if ((isKindOfClass & 1) == 0)
  {
  }

  return v28;
}

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = BadgeViewAccessibility;
  return *MEMORY[0x29EDC7F70] | [(BadgeViewAccessibility *)&v3 accessibilityTraits];
}

@end