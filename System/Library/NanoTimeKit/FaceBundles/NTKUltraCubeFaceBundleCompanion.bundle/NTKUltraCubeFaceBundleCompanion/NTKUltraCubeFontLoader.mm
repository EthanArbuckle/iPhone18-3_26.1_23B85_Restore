@interface NTKUltraCubeFontLoader
+ (id)nyNumeralsFontDescriptorOutlined:(BOOL)outlined;
+ (id)sfNumeralsFontDescriptorOutlined:(BOOL)outlined;
+ (id)tokyoFontDescriptorOutlined:(BOOL)outlined;
@end

@implementation NTKUltraCubeFontLoader

+ (id)nyNumeralsFontDescriptorOutlined:(BOOL)outlined
{
  outlinedCopy = outlined;
  if (qword_58150 != -1)
  {
    sub_29A44();
  }

  v4 = &qword_58148;
  if (!outlinedCopy)
  {
    v4 = &qword_58140;
  }

  v5 = *v4;

  return v5;
}

+ (id)sfNumeralsFontDescriptorOutlined:(BOOL)outlined
{
  outlinedCopy = outlined;
  if (qword_58168 != -1)
  {
    sub_29A58();
  }

  v4 = &qword_58160;
  if (!outlinedCopy)
  {
    v4 = &qword_58158;
  }

  v5 = *v4;

  return v5;
}

+ (id)tokyoFontDescriptorOutlined:(BOOL)outlined
{
  outlinedCopy = outlined;
  if (qword_58180 != -1)
  {
    sub_29A6C();
  }

  v4 = &qword_58178;
  if (!outlinedCopy)
  {
    v4 = &qword_58170;
  }

  v5 = *v4;

  return v5;
}

@end