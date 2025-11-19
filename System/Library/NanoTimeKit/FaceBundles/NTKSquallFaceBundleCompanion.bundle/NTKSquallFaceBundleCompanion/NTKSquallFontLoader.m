@interface NTKSquallFontLoader
+ (id)squallFontDescriptor;
+ (id)squallPicayuneFontDescriptor;
+ (id)squallVariableFontDescriptor;
@end

@implementation NTKSquallFontLoader

+ (id)squallFontDescriptor
{
  if (qword_16900 != -1)
  {
    sub_70D8();
  }

  v3 = qword_168F8;

  return v3;
}

+ (id)squallVariableFontDescriptor
{
  if (qword_16910 != -1)
  {
    sub_70EC();
  }

  v3 = qword_16908;

  return v3;
}

+ (id)squallPicayuneFontDescriptor
{
  v2 = [a1 squallFontDescriptor];
  v10 = kCTFontVariationAttribute;
  v3 = [NSNumber numberWithUnsignedInt:TextToFourCharCode()];
  v8 = v3;
  v9 = &off_109F8;
  v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v11 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v6 = [v2 fontDescriptorByAddingAttributes:v5];

  return v6;
}

@end