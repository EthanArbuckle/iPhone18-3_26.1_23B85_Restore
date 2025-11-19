@interface IMLanguageUtilities
+ (BOOL)languageDefaultsToHorizontalOrientation:(id)a3;
+ (BOOL)languageDefaultsToPageProgressLeftToRight:(id)a3;
+ (BOOL)languageIsArabic:(id)a3;
+ (BOOL)languageIsBengali:(id)a3;
+ (BOOL)languageIsDevanagari:(id)a3;
+ (BOOL)languageIsGujarati:(id)a3;
+ (BOOL)languageIsGurmukhi:(id)a3;
+ (BOOL)languageIsHebrew:(id)a3;
+ (BOOL)languageIsHongKongChinese:(id)a3;
+ (BOOL)languageIsInuktitut:(id)a3;
+ (BOOL)languageIsKannada:(id)a3;
+ (BOOL)languageIsKorean:(id)a3;
+ (BOOL)languageIsMalayalam:(id)a3;
+ (BOOL)languageIsOriya:(id)a3;
+ (BOOL)languageIsSimplifiedChinese:(id)a3;
+ (BOOL)languageIsSinhala:(id)a3;
+ (BOOL)languageIsTamil:(id)a3;
+ (BOOL)languageIsTelugu:(id)a3;
+ (BOOL)languageIsThai:(id)a3;
+ (BOOL)languageIsTibetan:(id)a3;
+ (BOOL)languageIsTraditionalChinese:(id)a3;
+ (id)suffixForLanguage:(id)a3;
@end

@implementation IMLanguageUtilities

+ (id)suffixForLanguage:(id)a3
{
  v4 = a3;
  v5 = &stru_2D2930;
  if ([v4 length])
  {
    if ([a1 languageIsTraditionalChinese:v4])
    {
      v5 = @"zh_tw";
    }

    else if ([a1 languageIsSimplifiedChinese:v4])
    {
      v5 = @"zh_cn";
    }

    else if ([a1 languageIsHongKongChinese:v4])
    {
      v5 = @"zh_hk";
    }

    else if ([a1 languageIsJapanese:v4])
    {
      v5 = @"ja";
    }

    else if ([a1 languageIsKorean:v4])
    {
      v5 = @"ko";
    }

    else if ([a1 languageIsArabic:v4])
    {
      v5 = @"ar";
    }

    else if ([a1 languageIsHebrew:v4])
    {
      v5 = @"he";
    }

    else if ([a1 languageIsDevanagari:v4])
    {
      v5 = @"hi";
    }

    else if ([a1 languageIsGurmukhi:v4])
    {
      v5 = @"pa";
    }

    else if ([a1 languageIsGujarati:v4])
    {
      v5 = @"gu";
    }

    else if ([a1 languageIsTamil:v4])
    {
      v5 = @"ta";
    }

    else if ([a1 languageIsTelugu:v4])
    {
      v5 = @"te";
    }

    else if ([a1 languageIsMalayalam:v4])
    {
      v5 = @"ml";
    }

    else if ([a1 languageIsSinhala:v4])
    {
      v5 = @"si";
    }

    else if ([a1 languageIsOriya:v4])
    {
      v5 = @"or";
    }

    else if ([a1 languageIsKannada:v4])
    {
      v5 = @"kn";
    }

    else if ([a1 languageIsBengali:v4])
    {
      v5 = @"bn";
    }

    else if ([a1 languageIsThai:v4])
    {
      v5 = @"th";
    }

    else if ([a1 languageIsTibetan:v4])
    {
      v5 = @"bo";
    }

    else if ([a1 languageIsInuktitut:v4])
    {
      v5 = @"iu";
    }
  }

  return v5;
}

+ (BOOL)languageIsTraditionalChinese:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  v5 = 1;
  if ([v3 rangeOfString:@"hant" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  if ([v4 rangeOfString:@"hans" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_11;
  }

  v6 = [v4 lowercaseString];
  if ([v6 hasPrefix:@"yue"])
  {
    v5 = 1;
  }

  else if ([v6 hasPrefix:@"zh"])
  {
    v5 = [v6 rangeOfString:@"tw"] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
  }

LABEL_11:
  return v5;
}

+ (BOOL)languageIsSimplifiedChinese:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  v6 = 1;
  if ([v4 rangeOfString:@"hans" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([a1 languageIsTraditionalChinese:v5] & 1) != 0 || (objc_msgSend(a1, "languageIsHongKongChinese:", v5))
    {
LABEL_5:
      v6 = 0;
      goto LABEL_6;
    }

    v8 = [v5 lowercaseString];
    if ([v8 hasPrefix:@"zh"] & 1) != 0 || (objc_msgSend(v8, "hasPrefix:", @"cmn"))
    {
      v6 = 1;
    }

    else
    {
      v6 = [v8 hasPrefix:@"yue"];
    }
  }

LABEL_6:

  return v6;
}

+ (BOOL)languageIsHongKongChinese:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = [a3 lowercaseString];
  if ([v3 hasPrefix:@"zh"])
  {
    v4 = [v3 rangeOfString:@"hk"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v3, "rangeOfString:", @"mo") != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)languageIsKorean:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 hasPrefix:@"ko"];

  return v4;
}

+ (BOOL)languageIsArabic:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 hasPrefix:@"ar"];

  return v4;
}

+ (BOOL)languageIsHebrew:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 hasPrefix:@"he"];

  return v4;
}

+ (BOOL)languageIsDevanagari:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 hasPrefix:@"hi"];

  return v4;
}

+ (BOOL)languageIsGurmukhi:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 hasPrefix:@"pa"];

  return v4;
}

+ (BOOL)languageIsGujarati:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 hasPrefix:@"gu"];

  return v4;
}

+ (BOOL)languageIsTamil:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 hasPrefix:@"ta"];

  return v4;
}

+ (BOOL)languageIsTelugu:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 hasPrefix:@"te"];

  return v4;
}

+ (BOOL)languageIsMalayalam:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 hasPrefix:@"ml"];

  return v4;
}

+ (BOOL)languageIsSinhala:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 hasPrefix:@"si"];

  return v4;
}

+ (BOOL)languageIsOriya:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 hasPrefix:@"or"];

  return v4;
}

+ (BOOL)languageIsKannada:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 hasPrefix:@"kn"];

  return v4;
}

+ (BOOL)languageIsBengali:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 hasPrefix:@"bn"];

  return v4;
}

+ (BOOL)languageIsThai:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 hasPrefix:@"th"];

  return v4;
}

+ (BOOL)languageIsTibetan:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 hasPrefix:@"bo"];

  return v4;
}

+ (BOOL)languageIsInuktitut:(id)a3
{
  v3 = [a3 lowercaseString];
  v4 = [v3 hasPrefix:@"iu"];

  return v4;
}

+ (BOOL)languageDefaultsToPageProgressLeftToRight:(id)a3
{
  v3 = a3;
  if ([IMLanguageUtilities languageIsJapanese:v3]|| [IMLanguageUtilities languageIsSimplifiedChinese:v3]|| [IMLanguageUtilities languageIsTraditionalChinese:v3]|| [IMLanguageUtilities languageIsHongKongChinese:v3]|| [IMLanguageUtilities languageIsArabic:v3])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![IMLanguageUtilities languageIsHebrew:v3];
  }

  return v4;
}

+ (BOOL)languageDefaultsToHorizontalOrientation:(id)a3
{
  v3 = a3;
  if ([IMLanguageUtilities languageIsJapanese:v3]|| [IMLanguageUtilities languageIsSimplifiedChinese:v3]|| [IMLanguageUtilities languageIsTraditionalChinese:v3])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![IMLanguageUtilities languageIsHongKongChinese:v3];
  }

  return v4;
}

@end