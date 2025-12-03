@interface PHUIConfiguration
+ (double)dialerLCDFontSize;
+ (double)dialerLCDLabelFontSize;
+ (double)dialerLCDSourceLabelFontSize;
+ (double)yOffsetForSmartDialerLCDView;
+ (double)yOffsetForSmartDialerLCDViewForOrientation:(int64_t)orientation;
@end

@implementation PHUIConfiguration

+ (double)dialerLCDFontSize
{
  if (dialerLCDFontSize_onceToken != -1)
  {
    +[PHUIConfiguration(DialerView) dialerLCDFontSize];
  }

  return *&dialerLCDFontSize_fontSize;
}

void __50__PHUIConfiguration_DialerView__dialerLCDFontSize__block_invoke(id a1)
{
  v1 = +[PHUIConfiguration screenSize];
  v2 = dbl_312A0[v1 == &dword_0 + 1];
  if (v1 == &dword_4 + 2)
  {
    v2 = 43.2999992;
  }

  dialerLCDFontSize_fontSize = *&v2;
}

+ (double)dialerLCDLabelFontSize
{
  if (dialerLCDLabelFontSize_onceToken != -1)
  {
    +[PHUIConfiguration(DialerView) dialerLCDLabelFontSize];
  }

  return *&dialerLCDLabelFontSize_fontSize;
}

void __55__PHUIConfiguration_DialerView__dialerLCDLabelFontSize__block_invoke(id a1)
{
  v1 = +[PHUIConfiguration screenSize];
  v2 = v1 == &dword_4 + 2 || v1 == &dword_8 + 1;
  v3 = 18.0;
  if (v2)
  {
    v3 = 15.0;
  }

  dialerLCDLabelFontSize_fontSize = *&v3;
}

+ (double)dialerLCDSourceLabelFontSize
{
  if (dialerLCDSourceLabelFontSize_onceToken[0] != -1)
  {
    +[PHUIConfiguration(DialerView) dialerLCDSourceLabelFontSize];
  }

  return *&dialerLCDSourceLabelFontSize_fontSize;
}

void __61__PHUIConfiguration_DialerView__dialerLCDSourceLabelFontSize__block_invoke(id a1)
{
  v1 = +[PHUIConfiguration screenSize];
  v2 = v1 == &dword_4 + 2 || v1 == &dword_8 + 1;
  v3 = 15.0;
  if (v2)
  {
    v3 = 12.0;
  }

  dialerLCDSourceLabelFontSize_fontSize = *&v3;
}

+ (double)yOffsetForSmartDialerLCDView
{
  v2 = +[PHUIConfiguration screenSize];
  if (v2 > 8)
  {
    if (v2 != &dword_C + 1)
    {
      if (v2 != &dword_8 + 1)
      {
        return 43.0;
      }

      return 55.0;
    }

    return -25.0;
  }

  else
  {
    if (v2)
    {
      if (v2 != &dword_0 + 1)
      {
        return 43.0;
      }

      return 55.0;
    }

    return 5.0;
  }
}

+ (double)yOffsetForSmartDialerLCDViewForOrientation:(int64_t)orientation
{
  v3 = objc_opt_new();
  v4 = +[PHUIConfiguration screenSize];
  if (v4 > 0xD)
  {
    goto LABEL_9;
  }

  v5 = -25.0;
  if (((1 << v4) & 0x2202) == 0)
  {
    if (((1 << v4) & 0x104) != 0)
    {
      if ([v3 phoneLargeFormatUIEnabled])
      {
        v6 = +[UIDevice currentDevice];
        userInterfaceIdiom = [v6 userInterfaceIdiom];

        if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
        {
          v5 = -120.0;
          goto LABEL_10;
        }
      }
    }

    else if (!v4)
    {
      v5 = 5.0;
      goto LABEL_10;
    }

LABEL_9:
    v5 = 43.0;
  }

LABEL_10:

  return v5;
}

@end