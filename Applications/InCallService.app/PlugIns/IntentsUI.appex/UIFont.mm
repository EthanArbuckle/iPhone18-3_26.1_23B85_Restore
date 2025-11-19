@interface UIFont
+ (id)voicemailCaptionRegularFont;
+ (id)voicemailFootnoteFont;
+ (id)voicemailHeadlineShortFont;
- (id)withCaseSensitiveAttribute;
@end

@implementation UIFont

+ (id)voicemailFootnoteFont
{
  if (qword_1000C6068 != -1)
  {
    sub_10007A218();
  }

  v3 = qword_1000C6060;

  return v3;
}

+ (id)voicemailHeadlineShortFont
{
  if (qword_1000C6078 != -1)
  {
    sub_10007A22C();
  }

  v3 = qword_1000C6070;

  return v3;
}

+ (id)voicemailCaptionRegularFont
{
  if (qword_1000C6088 != -1)
  {
    sub_10007A240();
  }

  v3 = qword_1000C6080;

  return v3;
}

- (id)withCaseSensitiveAttribute
{
  v13 = UIFontDescriptorFeatureSettingsAttribute;
  v10[0] = UIFontFeatureTypeIdentifierKey;
  v10[1] = UIFontFeatureSelectorIdentifierKey;
  v11[0] = &off_1000B5A78;
  v11[1] = &off_1000B5A90;
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