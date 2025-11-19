@interface NTKCaliforniaFontLoader
+ (id)sfNumeralsBoldFontDescriptor;
@end

@implementation NTKCaliforniaFontLoader

+ (id)sfNumeralsBoldFontDescriptor
{
  if (qword_25D68 != -1)
  {
    sub_F64C();
  }

  v3 = qword_25D60;

  return v3;
}

@end