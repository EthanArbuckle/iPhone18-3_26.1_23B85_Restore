@interface IMAccessibilityLabelAccessibility
- (id)accessibilityLabel;
@end

@implementation IMAccessibilityLabelAccessibility

- (id)accessibilityLabel
{
  v14.receiver = self;
  v14.super_class = IMAccessibilityLabelAccessibility;
  accessibilityLabel = [(IMAccessibilityLabelAccessibility *)&v14 accessibilityLabel];
  imaxIdentification = [(IMAccessibilityLabelAccessibility *)self imaxIdentification];
  v5 = [imaxIdentification isEqualToString:@"LabelWithSeparatedChars"];

  if (v5)
  {
    v6 = +[NSMutableString string];
    v7 = [accessibilityLabel length];
    if (v7 >= 1)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [accessibilityLabel characterAtIndex:i];
        if (i)
        {
          v11 = v10;
          if ([accessibilityLabel characterAtIndex:i - 1] != 32 && v11 == 32)
          {
            continue;
          }
        }

        v12 = [accessibilityLabel substringWithRange:{i, 1}];
        [v6 appendString:v12];
      }
    }
  }

  else
  {
    v6 = accessibilityLabel;
  }

  return v6;
}

@end