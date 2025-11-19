@interface UIFont
+ (id)_thinSystemFontWithDialerCharacteristicsOfSize:(double)a3;
+ (id)phPreferredBoldFontForTextStyle:(id)a3;
+ (id)phPreferredFontForTextStyle:(id)a3;
+ (id)phPreferredItalicFontForTextStyle:(id)a3;
+ (id)phPreferredTightLeadingFontForTextStyle:(id)a3;
- (UIFont)withCaseSensitiveAttribute;
@end

@implementation UIFont

+ (id)phPreferredFontForTextStyle:(id)a3
{
  v3 = [UIFontDescriptor phPreferredFontDescriptorForTextStyle:a3];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  v5 = [v4 withCaseSensitiveAttribute];

  return v5;
}

+ (id)phPreferredBoldFontForTextStyle:(id)a3
{
  v3 = [UIFontDescriptor phPreferredFontDescriptorForTextStyle:a3 addingSymbolicTraits:2];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  v5 = [v4 withCaseSensitiveAttribute];

  return v5;
}

+ (id)phPreferredItalicFontForTextStyle:(id)a3
{
  v3 = [UIFontDescriptor phPreferredFontDescriptorForTextStyle:a3 addingSymbolicTraits:1];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  v5 = [v4 withCaseSensitiveAttribute];

  return v5;
}

+ (id)phPreferredTightLeadingFontForTextStyle:(id)a3
{
  v3 = [UIFontDescriptor phPreferredFontDescriptorForTextStyle:a3 addingSymbolicTraits:0x8000];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  v5 = [v4 withCaseSensitiveAttribute];

  return v5;
}

+ (id)_thinSystemFontWithDialerCharacteristicsOfSize:(double)a3
{
  v3 = [UIFont _thinSystemFontOfSize:a3];
  v4 = [v3 withCaseSensitiveAttribute];

  return v4;
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

  v6 = [(UIFont *)self fontDescriptor];
  v7 = [v6 fontDescriptorByAddingAttributes:v5];

  v8 = [UIFont fontWithDescriptor:v7 size:0.0];

  return v8;
}

@end