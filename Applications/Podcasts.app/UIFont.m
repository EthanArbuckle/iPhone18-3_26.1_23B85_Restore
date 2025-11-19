@interface UIFont
+ (double)mt_scaledConstantForTextStyle:(id)a3 defaultConstant:(double)a4;
+ (id)mt_fontDescriptorForTextStyle:(id)a3 contentSizeCategoryName:(id)a4;
+ (id)mt_fontForTextStyle:(id)a3 addingSymbolicTraits:(unsigned int)a4 contentSizeCategoryName:(id)a5;
+ (id)mt_fontForTextStyle:(id)a3 contentSizeCategoryName:(id)a4;
+ (id)mt_preferredFontForTextStyle:(id)a3 addingSymbolicTraits:(unsigned int)a4;
+ (id)sectionFooterFont;
- (double)mt_offsetFromCapHeightToAscent;
@end

@implementation UIFont

+ (id)sectionFooterFont
{
  v2 = +[UIListContentConfiguration groupedFooterConfiguration];
  v3 = [v2 textProperties];
  v4 = [v3 font];

  return v4;
}

+ (id)mt_preferredFontForTextStyle:(id)a3 addingSymbolicTraits:(unsigned int)a4
{
  v4 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:a3 addingSymbolicTraits:*&a4 options:1];
  v5 = [UIFont fontWithDescriptor:v4 size:0.0];

  return v5;
}

+ (id)mt_fontForTextStyle:(id)a3 contentSizeCategoryName:(id)a4
{
  v4 = [a1 mt_fontDescriptorForTextStyle:a3 contentSizeCategoryName:a4];
  v5 = [UIFont fontWithDescriptor:v4 size:0.0];

  return v5;
}

+ (id)mt_fontForTextStyle:(id)a3 addingSymbolicTraits:(unsigned int)a4 contentSizeCategoryName:(id)a5
{
  v5 = *&a4;
  v6 = [a1 mt_fontDescriptorForTextStyle:a3 contentSizeCategoryName:a5];
  v7 = [v6 fontDescriptorWithSymbolicTraits:v5];

  v8 = [UIFont fontWithDescriptor:v7 size:0.0];

  return v8;
}

+ (id)mt_fontDescriptorForTextStyle:(id)a3 contentSizeCategoryName:(id)a4
{
  v4 = CTFontDescriptorCreateWithTextStyle();

  return v4;
}

+ (double)mt_scaledConstantForTextStyle:(id)a3 defaultConstant:(double)a4
{
  v5 = [UIFont mt_preferredFontForTextStyle:a3];
  [v5 _scaledValueForValue:a4];
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