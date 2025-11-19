@interface NTKGreyhoundFontLoader
+ (id)nyNumeralsBlackFontDescriptor;
+ (id)nyNumeralsHeavyFontDescriptor;
+ (id)sfNumeralsBlackFontDescriptor;
+ (id)sfNumeralsHeavyFontDescriptor;
+ (id)tokyoBlackFontDescriptor;
+ (id)tokyoHeavyFontDescriptor;
@end

@implementation NTKGreyhoundFontLoader

+ (id)nyNumeralsBlackFontDescriptor
{
  if (qword_1A520 != -1)
  {
    sub_C7A8();
  }

  v3 = qword_1A518;

  return v3;
}

+ (id)nyNumeralsHeavyFontDescriptor
{
  if (qword_1A530 != -1)
  {
    sub_C7BC();
  }

  v3 = qword_1A528;

  return v3;
}

+ (id)sfNumeralsBlackFontDescriptor
{
  if (qword_1A540 != -1)
  {
    sub_C7D0();
  }

  v3 = qword_1A538;

  return v3;
}

+ (id)sfNumeralsHeavyFontDescriptor
{
  if (qword_1A550 != -1)
  {
    sub_C7E4();
  }

  v3 = qword_1A548;

  return v3;
}

+ (id)tokyoBlackFontDescriptor
{
  if (qword_1A560 != -1)
  {
    sub_C7F8();
  }

  v3 = qword_1A558;

  return v3;
}

+ (id)tokyoHeavyFontDescriptor
{
  if (qword_1A570 != -1)
  {
    sub_C80C();
  }

  v3 = qword_1A568;

  return v3;
}

@end