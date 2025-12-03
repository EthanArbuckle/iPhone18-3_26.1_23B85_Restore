@interface UIFont
+ (id)_thinSystemFontWithDialerCharacteristicsOfSize:(double)size;
+ (id)phPreferredBoldFontForTextStyle:(id)style;
+ (id)phPreferredFontForTextStyle:(id)style;
+ (id)phPreferredItalicFontForTextStyle:(id)style;
+ (id)phPreferredTightLeadingFontForTextStyle:(id)style;
- (UIFont)withCaseSensitiveAttribute;
@end

@implementation UIFont

+ (id)phPreferredFontForTextStyle:(id)style
{
  v3 = [UIFontDescriptor phPreferredFontDescriptorForTextStyle:style];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  withCaseSensitiveAttribute = [v4 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

+ (id)phPreferredBoldFontForTextStyle:(id)style
{
  v3 = [UIFontDescriptor phPreferredFontDescriptorForTextStyle:style addingSymbolicTraits:2];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  withCaseSensitiveAttribute = [v4 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

+ (id)phPreferredItalicFontForTextStyle:(id)style
{
  v3 = [UIFontDescriptor phPreferredFontDescriptorForTextStyle:style addingSymbolicTraits:1];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  withCaseSensitiveAttribute = [v4 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

+ (id)phPreferredTightLeadingFontForTextStyle:(id)style
{
  v3 = [UIFontDescriptor phPreferredFontDescriptorForTextStyle:style addingSymbolicTraits:0x8000];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  withCaseSensitiveAttribute = [v4 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

+ (id)_thinSystemFontWithDialerCharacteristicsOfSize:(double)size
{
  v3 = [UIFont _thinSystemFontOfSize:size];
  withCaseSensitiveAttribute = [v3 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

- (UIFont)withCaseSensitiveAttribute
{
  v13 = UIFontDescriptorFeatureSettingsAttribute;
  v10[0] = UIFontFeatureTypeIdentifierKey;
  v10[1] = UIFontFeatureSelectorIdentifierKey;
  v11[0] = &off_55DD8;
  v11[1] = &off_55DF0;
  v3 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:2];
  v12 = v3;
  v4 = [NSArray arrayWithObjects:&v12 count:1];
  v14 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

  fontDescriptor = [(UIFont *)self fontDescriptor];
  v7 = [fontDescriptor fontDescriptorByAddingAttributes:v5];

  v8 = [UIFont fontWithDescriptor:v7 size:0.0];

  return v8;
}

@end