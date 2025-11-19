@interface UIFont
+ (id)preferredBoldFontWithTextStyle:(id)a3;
+ (id)preferredFontWithTextStyle:(id)a3;
+ (id)preferredItalicFontWithTextStyle:(id)a3;
+ (id)preferredTightLeadingWithForTextStyle:(id)a3;
- (id)withCaseSensitiveAttribute;
@end

@implementation UIFont

+ (id)preferredFontWithTextStyle:(id)a3
{
  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:a3 addingSymbolicTraits:0 options:1];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  v5 = [v4 withCaseSensitiveAttribute];

  return v5;
}

+ (id)preferredBoldFontWithTextStyle:(id)a3
{
  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:a3 addingSymbolicTraits:2 options:1];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  v5 = [v4 withCaseSensitiveAttribute];

  return v5;
}

+ (id)preferredItalicFontWithTextStyle:(id)a3
{
  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:a3 addingSymbolicTraits:1 options:1];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  v5 = [v4 withCaseSensitiveAttribute];

  return v5;
}

+ (id)preferredTightLeadingWithForTextStyle:(id)a3
{
  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:a3 addingSymbolicTraits:0x8000 options:1];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  v5 = [v4 withCaseSensitiveAttribute];

  return v5;
}

- (id)withCaseSensitiveAttribute
{
  v13 = UIFontDescriptorFeatureSettingsAttribute;
  v10[0] = UIFontFeatureTypeIdentifierKey;
  v10[1] = UIFontFeatureSelectorIdentifierKey;
  v11[0] = &off_100110E50;
  v11[1] = &off_100110E68;
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