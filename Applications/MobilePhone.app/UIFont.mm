@interface UIFont
+ (id)preferredBoldFontWithTextStyle:(id)style;
+ (id)preferredFontWithTextStyle:(id)style;
+ (id)preferredItalicFontWithTextStyle:(id)style;
+ (id)preferredTightLeadingWithForTextStyle:(id)style;
+ (id)voicemailCaptionRegularFont;
+ (id)voicemailFootnoteFont;
+ (id)voicemailHeadlineShortFont;
- (id)withCaseSensitiveAttribute;
@end

@implementation UIFont

+ (id)preferredFontWithTextStyle:(id)style
{
  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:style addingSymbolicTraits:0 options:1];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  withCaseSensitiveAttribute = [v4 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

+ (id)preferredBoldFontWithTextStyle:(id)style
{
  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:style addingSymbolicTraits:2 options:1];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  withCaseSensitiveAttribute = [v4 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

+ (id)preferredItalicFontWithTextStyle:(id)style
{
  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:style addingSymbolicTraits:1 options:1];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  withCaseSensitiveAttribute = [v4 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

+ (id)preferredTightLeadingWithForTextStyle:(id)style
{
  v3 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:style addingSymbolicTraits:0x8000 options:1];
  v4 = [UIFont fontWithDescriptor:v3 size:0.0];
  withCaseSensitiveAttribute = [v4 withCaseSensitiveAttribute];

  return withCaseSensitiveAttribute;
}

+ (id)voicemailFootnoteFont
{
  if (voicemailFootnoteFont_onceToken != -1)
  {
    +[UIFont(VoicemailUI) voicemailFootnoteFont];
  }

  v3 = voicemailFootnoteFont_sFont;

  return v3;
}

void __44__UIFont_VoicemailUI__voicemailFootnoteFont__block_invoke(id a1)
{
  v3 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  v1 = [v3 withCaseSensitiveAttribute];
  v2 = voicemailFootnoteFont_sFont;
  voicemailFootnoteFont_sFont = v1;
}

+ (id)voicemailHeadlineShortFont
{
  if (voicemailHeadlineShortFont_onceToken != -1)
  {
    +[UIFont(VoicemailUI) voicemailHeadlineShortFont];
  }

  v3 = voicemailHeadlineShortFont_sFont;

  return v3;
}

void __49__UIFont_VoicemailUI__voicemailHeadlineShortFont__block_invoke(id a1)
{
  v3 = +[UIFontDescriptor voicemailHeadlineShortFontDescriptor];
  v1 = [UIFont fontWithDescriptor:v3 size:0.0];
  v2 = voicemailHeadlineShortFont_sFont;
  voicemailHeadlineShortFont_sFont = v1;
}

+ (id)voicemailCaptionRegularFont
{
  if (voicemailCaptionRegularFont_onceToken != -1)
  {
    +[UIFont(VoicemailUI) voicemailCaptionRegularFont];
  }

  v3 = voicemailCaptionRegularFont_sFont;

  return v3;
}

void __50__UIFont_VoicemailUI__voicemailCaptionRegularFont__block_invoke(id a1)
{
  v4 = +[UIFontDescriptor voicemailCaptionRegularFontDescriptor];
  v1 = [UIFont fontWithDescriptor:v4 size:0.0];
  v2 = [v1 withCaseSensitiveAttribute];
  v3 = voicemailCaptionRegularFont_sFont;
  voicemailCaptionRegularFont_sFont = v2;
}

- (id)withCaseSensitiveAttribute
{
  v13 = UIFontDescriptorFeatureSettingsAttribute;
  v10[0] = UIFontFeatureTypeIdentifierKey;
  v10[1] = UIFontFeatureSelectorIdentifierKey;
  v11[0] = &off_100295348;
  v11[1] = &off_100295360;
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