@interface UIFont
+ (double)mt_scaledConstantForTextStyle:(id)style defaultConstant:(double)constant;
+ (id)mt_fontDescriptorForTextStyle:(id)style contentSizeCategoryName:(id)name;
+ (id)mt_fontForTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits contentSizeCategoryName:(id)name;
+ (id)mt_fontForTextStyle:(id)style contentSizeCategoryName:(id)name;
+ (id)mt_preferredFontForTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits;
+ (id)sectionFooterFont;
- (double)mt_offsetFromCapHeightToAscent;
@end

@implementation UIFont

+ (id)sectionFooterFont
{
  v2 = +[UIListContentConfiguration groupedFooterConfiguration];
  textProperties = [v2 textProperties];
  font = [textProperties font];

  return font;
}

+ (id)mt_preferredFontForTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits
{
  v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:style addingSymbolicTraits:*&traits options:1];
  v5 = [UIFont fontWithDescriptor:v4 size:0.0];

  return v5;
}

+ (id)mt_fontForTextStyle:(id)style contentSizeCategoryName:(id)name
{
  v4 = [self mt_fontDescriptorForTextStyle:style contentSizeCategoryName:name];
  v5 = [UIFont fontWithDescriptor:v4 size:0.0];

  return v5;
}

+ (id)mt_fontForTextStyle:(id)style addingSymbolicTraits:(unsigned int)traits contentSizeCategoryName:(id)name
{
  v5 = *&traits;
  v6 = [self mt_fontDescriptorForTextStyle:style contentSizeCategoryName:name];
  v7 = [v6 fontDescriptorWithSymbolicTraits:v5];

  v8 = [UIFont fontWithDescriptor:v7 size:0.0];

  return v8;
}

+ (id)mt_fontDescriptorForTextStyle:(id)style contentSizeCategoryName:(id)name
{
  v4 = CTFontDescriptorCreateWithTextStyle();

  return v4;
}

+ (double)mt_scaledConstantForTextStyle:(id)style defaultConstant:(double)constant
{
  v5 = [UIFont mt_preferredFontForTextStyle:style];
  [v5 _scaledValueForValue:constant];
  v7 = v6;

  return v7;
}

- (double)mt_offsetFromCapHeightToAscent
{
  [(UIFont *)self ascender];
  v4 = v3;
  [(UIFont *)self capHeight];
  return v4 - v5;
}

@end