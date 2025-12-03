@interface BKAXUILabelAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation BKAXUILabelAccessibility

- (id)accessibilityLabel
{
  imaxIdentification = [(BKAXUILabelAccessibility *)self imaxIdentification];
  v4 = [imaxIdentification isEqualToString:@"PageCountLabel"];

  if (v4)
  {
    accessibilityLabel = sub_1000765EC(@"page.number.label");
  }

  else
  {
    v7.receiver = self;
    v7.super_class = BKAXUILabelAccessibility;
    accessibilityLabel = [(BKAXUILabelAccessibility *)&v7 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  imaxIdentification = [(BKAXUILabelAccessibility *)self imaxIdentification];
  v4 = [imaxIdentification isEqualToString:@"PageCountLabel"];

  if (v4)
  {
    selfCopy = self;
    v5 = &selRef_accessibilityLabel;
    v6 = &selfCopy;
  }

  else
  {
    selfCopy2 = self;
    v5 = &selRef_accessibilityValue;
    v6 = &selfCopy2;
  }

  v6[1] = BKAXUILabelAccessibility;
  v7 = objc_msgSendSuper2(v6, *v5, selfCopy2);

  return v7;
}

@end