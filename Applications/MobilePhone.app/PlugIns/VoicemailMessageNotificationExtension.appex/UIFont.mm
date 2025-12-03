@interface UIFont
+ (id)voicemailCaptionRegularFont;
+ (id)voicemailFootnoteFont;
+ (id)voicemailHeadlineShortFont;
- (id)withCaseSensitiveAttribute;
@end

@implementation UIFont

+ (id)voicemailFootnoteFont
{
  if (qword_10009A7B8 != -1)
  {
    sub_100060150();
  }

  v3 = qword_10009A7B0;

  return v3;
}

+ (id)voicemailHeadlineShortFont
{
  if (qword_10009A7C8 != -1)
  {
    sub_100060164();
  }

  v3 = qword_10009A7C0;

  return v3;
}

+ (id)voicemailCaptionRegularFont
{
  if (qword_10009A7D8[0] != -1)
  {
    sub_100060178();
  }

  v3 = qword_10009A7D0;

  return v3;
}

- (id)withCaseSensitiveAttribute
{
  v13 = UIFontDescriptorFeatureSettingsAttribute;
  v10[0] = UIFontFeatureTypeIdentifierKey;
  v10[1] = UIFontFeatureSelectorIdentifierKey;
  v11[0] = &off_10008CA78;
  v11[1] = &off_10008CA90;
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