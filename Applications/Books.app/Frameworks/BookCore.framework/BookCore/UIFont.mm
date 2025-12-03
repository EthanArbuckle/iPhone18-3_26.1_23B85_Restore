@interface UIFont
+ (BOOL)bc_accessibilityFontSizesEnabled;
+ (BOOL)bc_contentSizeCategoryIsGreaterThan:(id)than;
- (id)bc_cssFontFamily;
- (id)bc_cssFontSize;
- (id)bc_cssFontWeight;
@end

@implementation UIFont

+ (BOOL)bc_contentSizeCategoryIsGreaterThan:(id)than
{
  thanCopy = than;
  v4 = +[UIContentSizeCategoryPreference system];
  preferredContentSizeCategory = [v4 preferredContentSizeCategory];

  v6 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, thanCopy);
  return v6 == NSOrderedDescending;
}

+ (BOOL)bc_accessibilityFontSizesEnabled
{
  v2 = +[UIContentSizeCategoryPreference system];
  preferredContentSizeCategory = [v2 preferredContentSizeCategory];

  LOBYTE(v2) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);
  return v2;
}

- (id)bc_cssFontFamily
{
  familyName = [(UIFont *)self familyName];
  if ([familyName hasPrefix:@".AppleSystemUIFont"])
  {
    v4 = @"system-ui";
  }

  else
  {
    fontName = [(UIFont *)self fontName];
    v4 = [NSString stringWithFormat:@"%@, %@", fontName, familyName];

    familyName = fontName;
  }

  return v4;
}

- (id)bc_cssFontWeight
{
  fontDescriptor = [(UIFont *)self fontDescriptor];
  symbolicTraits = [fontDescriptor symbolicTraits];

  if ((symbolicTraits & 2) != 0)
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