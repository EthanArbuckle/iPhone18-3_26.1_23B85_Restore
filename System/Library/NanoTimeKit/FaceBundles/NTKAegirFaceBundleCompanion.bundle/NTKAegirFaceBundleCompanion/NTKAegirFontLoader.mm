@interface NTKAegirFontLoader
+ (id)nyNumeralsFontDescriptorOutlined:(BOOL)a3;
+ (id)sfNumeralsFontDescriptorOutlined:(BOOL)a3;
+ (id)tokyoFontDescriptorOutlined:(BOOL)a3;
@end

@implementation NTKAegirFontLoader

+ (id)nyNumeralsFontDescriptorOutlined:(BOOL)a3
{
  v3 = a3;
  if (qword_1A2D0 != -1)
  {
    sub_9B28();
  }

  v4 = &qword_1A2C8;
  if (!v3)
  {
    v4 = &qword_1A2C0;
  }

  v5 = *v4;

  return v5;
}

+ (id)sfNumeralsFontDescriptorOutlined:(BOOL)a3
{
  v3 = a3;
  if (qword_1A2E8 != -1)
  {
    sub_9B3C();
  }

  v4 = &qword_1A2E0;
  if (!v3)
  {
    v4 = &qword_1A2D8;
  }

  v5 = *v4;

  return v5;
}

+ (id)tokyoFontDescriptorOutlined:(BOOL)a3
{
  v3 = a3;
  if (qword_1A300 != -1)
  {
    sub_9B50();
  }

  v4 = &qword_1A2F8;
  if (!v3)
  {
    v4 = &qword_1A2F0;
  }

  v5 = *v4;

  return v5;
}

@end