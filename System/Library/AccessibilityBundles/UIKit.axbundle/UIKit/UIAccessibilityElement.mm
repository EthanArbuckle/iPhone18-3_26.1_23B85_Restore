@interface UIAccessibilityElement
- (BOOL)elementMatchesSubview:(void *)subview;
- (BOOL)representsSubview;
@end

@implementation UIAccessibilityElement

- (BOOL)representsSubview
{
  selfCopy = self;
  if (self)
  {
    location = [selfCopy _accessibilityValueForKey:@"TableViewStorage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = [location objectForKey:@"class"];
      v5 = v1 != 0;
      MEMORY[0x29EDC9740](v1);
    }

    else
    {
      v5 = 0;
    }

    objc_storeStrong(&location, 0);
  }

  else
  {
    return 0;
  }

  return v5;
}

- (BOOL)elementMatchesSubview:(void *)subview
{
  subviewCopy = subview;
  location = 0;
  objc_storeStrong(&location, a2);
  if (subviewCopy)
  {
    v8 = [subviewCopy _accessibilityValueForKey:@"TableViewStorage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v8 objectForKey:@"class"])
      {
        v6 = [v8 objectForKey:@"size"];
        v2 = CGSizeFromString(v6);
        MEMORY[0x29EDC9740](v6);
        v7 = 0;
        if (objc_opt_isKindOfClass())
        {
          [location frame];
          v7 = __CGSizeEqualToSize_1(v2.width, v2.height, v3, v4);
        }

        v12 = v7;
        v9 = 1;
      }

      else
      {
        v12 = 0;
        v9 = 1;
      }
    }

    else
    {
      v12 = 0;
      v9 = 1;
    }

    objc_storeStrong(&v8, 0);
  }

  else
  {
    v12 = 0;
    v9 = 1;
  }

  objc_storeStrong(&location, 0);
  return v12;
}

@end