@interface NTKAegirFontLoader
+ (id)nyNumeralsFontDescriptorOutlined:(BOOL)outlined;
+ (id)sfNumeralsFontDescriptorOutlined:(BOOL)outlined;
+ (id)tokyoFontDescriptorOutlined:(BOOL)outlined;
@end

@implementation NTKAegirFontLoader

+ (id)nyNumeralsFontDescriptorOutlined:(BOOL)outlined
{
  outlinedCopy = outlined;
  if (qword_1A2D0 != -1)
  {
    sub_9B28();
  }

  v4 = &qword_1A2C8;
  if (!outlinedCopy)
  {
    v4 = &qword_1A2C0;
  }

  v5 = *v4;

  return v5;
}

+ (id)sfNumeralsFontDescriptorOutlined:(BOOL)outlined
{
  outlinedCopy = outlined;
  if (qword_1A2E8 != -1)
  {
    sub_9B3C();
  }

  v4 = &qword_1A2E0;
  if (!outlinedCopy)
  {
    v4 = &qword_1A2D8;
  }

  v5 = *v4;

  return v5;
}

+ (id)tokyoFontDescriptorOutlined:(BOOL)outlined
{
  outlinedCopy = outlined;
  if (qword_1A300 != -1)
  {
    sub_9B50();
  }

  v4 = &qword_1A2F8;
  if (!outlinedCopy)
  {
    v4 = &qword_1A2F0;
  }

  v5 = *v4;

  return v5;
}

@end