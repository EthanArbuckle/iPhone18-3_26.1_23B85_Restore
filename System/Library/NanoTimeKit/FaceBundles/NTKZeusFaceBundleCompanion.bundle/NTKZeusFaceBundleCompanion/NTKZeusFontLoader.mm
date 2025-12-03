@interface NTKZeusFontLoader
+ (id)_fontVariationAttributesForInlineWidth:(double)width;
+ (id)capeCodFontDescriptor;
+ (id)capeCodInlineFontDescriptorWithInlineWidth:(double)width;
+ (id)carrickFontDescriptor;
+ (id)clipperFontDescriptor;
+ (id)espaceFontDescriptor;
@end

@implementation NTKZeusFontLoader

+ (id)clipperFontDescriptor
{
  if (qword_587E8 != -1)
  {
    sub_2ED9C();
  }

  v3 = qword_587E0;

  return v3;
}

+ (id)capeCodFontDescriptor
{
  if (qword_587F8 != -1)
  {
    sub_2EDB0();
  }

  v3 = qword_587F0;

  return v3;
}

+ (id)espaceFontDescriptor
{
  if (qword_58808 != -1)
  {
    sub_2EDC4();
  }

  v3 = qword_58800;

  return v3;
}

+ (id)carrickFontDescriptor
{
  if (qword_58818 != -1)
  {
    sub_2EDD8();
  }

  v3 = qword_58810;

  return v3;
}

+ (id)capeCodInlineFontDescriptorWithInlineWidth:(double)width
{
  if (qword_58828 != -1)
  {
    sub_2EDEC();
  }

  v5 = [qword_58820 copy];
  v6 = objc_opt_new();
  v7 = [self _fontVariationAttributesForInlineWidth:width];
  [v6 setObject:v7 forKey:kCTFontVariationAttribute];
  v8 = objc_opt_new();
  if ([v8 count])
  {
    [v6 setObject:v8 forKey:UIFontDescriptorFeatureSettingsAttribute];
  }

  v9 = [v5 fontDescriptorByAddingAttributes:v6];

  return v9;
}

+ (id)_fontVariationAttributesForInlineWidth:(double)width
{
  v4 = objc_opt_new();
  v5 = [NSNumber numberWithDouble:width];
  v6 = [NSNumber numberWithUnsignedInt:TextToFourCharCode()];
  [v4 setObject:v5 forKey:v6];

  return v4;
}

@end