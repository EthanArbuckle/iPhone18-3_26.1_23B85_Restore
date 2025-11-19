@interface LiveButtonAccessibility
- (id)accessibilityValue;
@end

@implementation LiveButtonAccessibility

- (id)accessibilityValue
{
  v2 = [(LiveButtonAccessibility *)self safeUIViewForKey:@"imageView"];
  if (!v2)
  {
    v8 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 image];
  v5 = [v4 imageAsset];
  v6 = [v5 safeStringForKey:@"assetName"];

  if ([v6 isEqualToString:@"livephoto.play"])
  {
    v7 = @"On";
  }

  else
  {
    if (![v6 isEqualToString:@"livephoto.slash"])
    {
      v8 = 0;
      goto LABEL_9;
    }

    v7 = @"Off";
  }

  v8 = accessibilityLocalizedString(v7);
LABEL_9:

LABEL_10:

  return v8;
}

@end