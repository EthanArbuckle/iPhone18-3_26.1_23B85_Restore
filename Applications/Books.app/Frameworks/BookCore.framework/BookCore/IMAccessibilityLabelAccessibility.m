@interface IMAccessibilityLabelAccessibility
- (id)accessibilityLabel;
@end

@implementation IMAccessibilityLabelAccessibility

- (id)accessibilityLabel
{
  v14.receiver = self;
  v14.super_class = IMAccessibilityLabelAccessibility;
  v3 = [(IMAccessibilityLabelAccessibility *)&v14 accessibilityLabel];
  v4 = [(IMAccessibilityLabelAccessibility *)self imaxIdentification];
  v5 = [v4 isEqualToString:@"LabelWithSeparatedChars"];

  if (v5)
  {
    v6 = +[NSMutableString string];
    v7 = [v3 length];
    if (v7 >= 1)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [v3 characterAtIndex:i];
        if (i)
        {
          v11 = v10;
          if ([v3 characterAtIndex:i - 1] != 32 && v11 == 32)
          {
            continue;
          }
        }

        v12 = [v3 substringWithRange:{i, 1}];
        [v6 appendString:v12];
      }
    }
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

@end