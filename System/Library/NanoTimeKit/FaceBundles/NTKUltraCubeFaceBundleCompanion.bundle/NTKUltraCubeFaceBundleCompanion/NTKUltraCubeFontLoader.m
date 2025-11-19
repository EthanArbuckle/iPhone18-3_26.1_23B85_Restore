@interface NTKUltraCubeFontLoader
+ (id)nyNumeralsFontDescriptorOutlined:(BOOL)a3;
+ (id)sfNumeralsFontDescriptorOutlined:(BOOL)a3;
+ (id)tokyoFontDescriptorOutlined:(BOOL)a3;
@end

@implementation NTKUltraCubeFontLoader

+ (id)nyNumeralsFontDescriptorOutlined:(BOOL)a3
{
  v3 = a3;
  if (qword_58150 != -1)
  {
    sub_29A44();
  }

  v4 = &qword_58148;
  if (!v3)
  {
    v4 = &qword_58140;
  }

  v5 = *v4;

  return v5;
}

+ (id)sfNumeralsFontDescriptorOutlined:(BOOL)a3
{
  v3 = a3;
  if (qword_58168 != -1)
  {
    sub_29A58();
  }

  v4 = &qword_58160;
  if (!v3)
  {
    v4 = &qword_58158;
  }

  v5 = *v4;

  return v5;
}

+ (id)tokyoFontDescriptorOutlined:(BOOL)a3
{
  v3 = a3;
  if (qword_58180 != -1)
  {
    sub_29A6C();
  }

  v4 = &qword_58178;
  if (!v3)
  {
    v4 = &qword_58170;
  }

  v5 = *v4;

  return v5;
}

@end