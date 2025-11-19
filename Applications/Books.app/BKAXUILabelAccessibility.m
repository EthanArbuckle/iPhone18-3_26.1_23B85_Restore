@interface BKAXUILabelAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation BKAXUILabelAccessibility

- (id)accessibilityLabel
{
  v3 = [(BKAXUILabelAccessibility *)self imaxIdentification];
  v4 = [v3 isEqualToString:@"PageCountLabel"];

  if (v4)
  {
    v5 = sub_1000765EC(@"page.number.label");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BKAXUILabelAccessibility;
    v5 = [(BKAXUILabelAccessibility *)&v7 accessibilityLabel];
  }

  return v5;
}

- (id)accessibilityValue
{
  v3 = [(BKAXUILabelAccessibility *)self imaxIdentification];
  v4 = [v3 isEqualToString:@"PageCountLabel"];

  if (v4)
  {
    v10 = self;
    v5 = &selRef_accessibilityLabel;
    v6 = &v10;
  }

  else
  {
    v9 = self;
    v5 = &selRef_accessibilityValue;
    v6 = &v9;
  }

  v6[1] = BKAXUILabelAccessibility;
  v7 = objc_msgSendSuper2(v6, *v5, v9);

  return v7;
}

@end