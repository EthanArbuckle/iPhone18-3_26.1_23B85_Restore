@interface UIFont
+ (BOOL)bc_accessibilityFontSizesEnabled;
+ (BOOL)bc_contentSizeCategoryIsGreaterThan:(id)a3;
- (id)bc_cssFontFamily;
- (id)bc_cssFontSize;
- (id)bc_cssFontWeight;
@end

@implementation UIFont

+ (BOOL)bc_contentSizeCategoryIsGreaterThan:(id)a3
{
  v3 = a3;
  v4 = +[UIContentSizeCategoryPreference system];
  v5 = [v4 preferredContentSizeCategory];

  v6 = UIContentSizeCategoryCompareToCategory(v5, v3);
  return v6 == NSOrderedDescending;
}

+ (BOOL)bc_accessibilityFontSizesEnabled
{
  v2 = +[UIContentSizeCategoryPreference system];
  v3 = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategoryIsAccessibilityCategory(v3);
  return v2;
}

- (id)bc_cssFontFamily
{
  v3 = [(UIFont *)self familyName];
  if ([v3 hasPrefix:@".AppleSystemUIFont"])
  {
    v4 = @"system-ui";
  }

  else
  {
    v5 = [(UIFont *)self fontName];
    v4 = [NSString stringWithFormat:@"%@, %@", v5, v3];

    v3 = v5;
  }

  return v4;
}

- (id)bc_cssFontWeight
{
  v2 = [(UIFont *)self fontDescriptor];
  v3 = [v2 symbolicTraits];

  if ((v3 & 2) != 0)
  {
    return @"bold";
  }

  else
  {
    return @"normal";
  }
}

- (id)bc_cssFontSize
{
  [(UIFont *)self pointSize];
  v3 = [NSNumber numberWithDouble:round(v2)];
  v4 = [NSString stringWithFormat:@"%@pt", v3];

  return v4;
}

@end