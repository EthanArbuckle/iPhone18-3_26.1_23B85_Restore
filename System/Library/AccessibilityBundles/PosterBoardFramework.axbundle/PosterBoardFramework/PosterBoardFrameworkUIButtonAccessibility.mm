@interface PosterBoardFrameworkUIButtonAccessibility
- (id)accessibilityLabel;
- (id)accessibilityValue;
@end

@implementation PosterBoardFrameworkUIButtonAccessibility

- (id)accessibilityLabel
{
  accessibilityIdentification = [(PosterBoardFrameworkUIButtonAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"poster.switcher.focus.button"];

  if (v4)
  {
    if ([(PosterBoardFrameworkUIButtonAccessibility *)self overrideUserInterfaceStyle]== 1)
    {
      v5 = @"poster.switcher.focus.button.linked.label";
    }

    else
    {
      v5 = @"poster.switcher.focus.button.link.focus.label";
    }

    accessibilityLabel = accessibilityLocalizedString(v5);
  }

  else
  {
    v8.receiver = self;
    v8.super_class = PosterBoardFrameworkUIButtonAccessibility;
    accessibilityLabel = [(PosterBoardFrameworkUIButtonAccessibility *)&v8 accessibilityLabel];
  }

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  accessibilityIdentification = [(PosterBoardFrameworkUIButtonAccessibility *)self accessibilityIdentification];
  v4 = [accessibilityIdentification isEqualToString:@"poster.switcher.focus.button"];

  if (v4 && [(PosterBoardFrameworkUIButtonAccessibility *)self overrideUserInterfaceStyle]== 1)
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

  v6[1] = PosterBoardFrameworkUIButtonAccessibility;
  v7 = objc_msgSendSuper2(v6, *v5, selfCopy2);

  return v7;
}

@end