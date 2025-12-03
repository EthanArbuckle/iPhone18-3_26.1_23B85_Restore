@interface CompactYearViewYearHeader
+ (double)headerDaySpacingForWindowSize:(CGSize)size;
+ (double)headerYInsetForWindowSize:(CGSize)size;
+ (double)middleHeightForWindowSize:(CGSize)size;
- (double)heightBetweenLineAndNumber;
- (id)yearNumberFont;
@end

@implementation CompactYearViewYearHeader

+ (double)headerYInsetForWindowSize:(CGSize)size
{
  width = size.width;
  if (qword_100251B48 != -1)
  {
    sub_1001707E4();
  }

  v4 = 4.5;
  if (EKUIWindowSizeParadigmForWindowSize() != 0x20000)
  {
    [qword_100251B40 valueForSize:width];
    v4 = v5;
    v6 = EKUIWindowSizeParadigmForWindowSize();
    if (v6 > 0xFFFFFF)
    {
      if (v6 != 0x1000000 && v6 != 0x10000000 && v6 != 0x4000000)
      {
        return v4;
      }

LABEL_11:
      CalOnePixelInPoints();
      return v4 + v7;
    }

    if (v6 == 0x40000 || v6 == 0x400000)
    {
      goto LABEL_11;
    }
  }

  return v4;
}

+ (double)middleHeightForWindowSize:(CGSize)size
{
  width = size.width;
  if (qword_100251B58 != -1)
  {
    sub_1001707F8();
  }

  v4 = qword_100251B50;

  [v4 valueForSize:width];
  return result;
}

+ (double)headerDaySpacingForWindowSize:(CGSize)size
{
  width = size.width;
  if (qword_100251B68 != -1)
  {
    sub_10017080C();
  }

  if (EKUIWindowSizeParadigmForWindowSize() == 0x20000)
  {
    return 11.0;
  }

  v5 = qword_100251B60;

  [v5 valueForSize:width];
  return result;
}

- (double)heightBetweenLineAndNumber
{
  if (qword_100251B78 != -1)
  {
    sub_100170820();
  }

  if (EKUICurrentWindowSizeParadigmForViewHierarchy() == 0x20000)
  {
    return 9.5;
  }

  v4 = qword_100251B70;
  AnchoredValueCurrentWindowWidth(self);

  [v4 valueForSize:?];
  return result;
}

- (id)yearNumberFont
{
  v2 = qword_100251B80;
  if (!qword_100251B80)
  {
    v3 = CalSolariumEnabled();
    v4 = &UIFontTextStyleTitle1;
    if (!v3)
    {
      v4 = &UIFontTextStyleTitle0;
    }

    v5 = *v4;
    v6 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:v5 addingSymbolicTraits:32770 options:0];
    v7 = [UIFont fontWithDescriptor:v6 size:0.0];

    v8 = qword_100251B80;
    qword_100251B80 = v7;

    v2 = qword_100251B80;
  }

  return v2;
}

@end