@interface IMLanguageUtilities
+ (BOOL)languageDefaultsToHorizontalOrientation:(id)orientation;
+ (BOOL)languageDefaultsToPageProgressLeftToRight:(id)right;
+ (BOOL)languageIsArabic:(id)arabic;
+ (BOOL)languageIsBengali:(id)bengali;
+ (BOOL)languageIsDevanagari:(id)devanagari;
+ (BOOL)languageIsGujarati:(id)gujarati;
+ (BOOL)languageIsGurmukhi:(id)gurmukhi;
+ (BOOL)languageIsHebrew:(id)hebrew;
+ (BOOL)languageIsHongKongChinese:(id)chinese;
+ (BOOL)languageIsInuktitut:(id)inuktitut;
+ (BOOL)languageIsKannada:(id)kannada;
+ (BOOL)languageIsKorean:(id)korean;
+ (BOOL)languageIsMalayalam:(id)malayalam;
+ (BOOL)languageIsOriya:(id)oriya;
+ (BOOL)languageIsSimplifiedChinese:(id)chinese;
+ (BOOL)languageIsSinhala:(id)sinhala;
+ (BOOL)languageIsTamil:(id)tamil;
+ (BOOL)languageIsTelugu:(id)telugu;
+ (BOOL)languageIsThai:(id)thai;
+ (BOOL)languageIsTibetan:(id)tibetan;
+ (BOOL)languageIsTraditionalChinese:(id)chinese;
+ (id)suffixForLanguage:(id)language;
@end

@implementation IMLanguageUtilities

+ (id)suffixForLanguage:(id)language
{
  languageCopy = language;
  v5 = &stru_2D2930;
  if ([languageCopy length])
  {
    if ([self languageIsTraditionalChinese:languageCopy])
    {
      v5 = @"zh_tw";
    }

    else if ([self languageIsSimplifiedChinese:languageCopy])
    {
      v5 = @"zh_cn";
    }

    else if ([self languageIsHongKongChinese:languageCopy])
    {
      v5 = @"zh_hk";
    }

    else if ([self languageIsJapanese:languageCopy])
    {
      v5 = @"ja";
    }

    else if ([self languageIsKorean:languageCopy])
    {
      v5 = @"ko";
    }

    else if ([self languageIsArabic:languageCopy])
    {
      v5 = @"ar";
    }

    else if ([self languageIsHebrew:languageCopy])
    {
      v5 = @"he";
    }

    else if ([self languageIsDevanagari:languageCopy])
    {
      v5 = @"hi";
    }

    else if ([self languageIsGurmukhi:languageCopy])
    {
      v5 = @"pa";
    }

    else if ([self languageIsGujarati:languageCopy])
    {
      v5 = @"gu";
    }

    else if ([self languageIsTamil:languageCopy])
    {
      v5 = @"ta";
    }

    else if ([self languageIsTelugu:languageCopy])
    {
      v5 = @"te";
    }

    else if ([self languageIsMalayalam:languageCopy])
    {
      v5 = @"ml";
    }

    else if ([self languageIsSinhala:languageCopy])
    {
      v5 = @"si";
    }

    else if ([self languageIsOriya:languageCopy])
    {
      v5 = @"or";
    }

    else if ([self languageIsKannada:languageCopy])
    {
      v5 = @"kn";
    }

    else if ([self languageIsBengali:languageCopy])
    {
      v5 = @"bn";
    }

    else if ([self languageIsThai:languageCopy])
    {
      v5 = @"th";
    }

    else if ([self languageIsTibetan:languageCopy])
    {
      v5 = @"bo";
    }

    else if ([self languageIsInuktitut:languageCopy])
    {
      v5 = @"iu";
    }
  }

  return v5;
}

+ (BOOL)languageIsTraditionalChinese:(id)chinese
{
  chineseCopy = chinese;
  v4 = chineseCopy;
  if (!chineseCopy)
  {
    goto LABEL_6;
  }

  v5 = 1;
  if ([chineseCopy rangeOfString:@"hant" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  if ([v4 rangeOfString:@"hans" options:1] != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_6:
    v5 = 0;
    goto LABEL_11;
  }

  lowercaseString = [v4 lowercaseString];
  if ([lowercaseString hasPrefix:@"yue"])
  {
    v5 = 1;
  }

  else if ([lowercaseString hasPrefix:@"zh"])
  {
    v5 = [lowercaseString rangeOfString:@"tw"] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = 0;
  }

LABEL_11:
  return v5;
}

+ (BOOL)languageIsSimplifiedChinese:(id)chinese
{
  chineseCopy = chinese;
  v5 = chineseCopy;
  if (!chineseCopy)
  {
    goto LABEL_5;
  }

  v6 = 1;
  if ([chineseCopy rangeOfString:@"hans" options:1] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([self languageIsTraditionalChinese:v5] & 1) != 0 || (objc_msgSend(self, "languageIsHongKongChinese:", v5))
    {
LABEL_5:
      v6 = 0;
      goto LABEL_6;
    }

    lowercaseString = [v5 lowercaseString];
    if ([lowercaseString hasPrefix:@"zh"] & 1) != 0 || (objc_msgSend(lowercaseString, "hasPrefix:", @"cmn"))
    {
      v6 = 1;
    }

    else
    {
      v6 = [lowercaseString hasPrefix:@"yue"];
    }
  }

LABEL_6:

  return v6;
}

+ (BOOL)languageIsHongKongChinese:(id)chinese
{
  if (!chinese)
  {
    return 0;
  }

  lowercaseString = [chinese lowercaseString];
  if ([lowercaseString hasPrefix:@"zh"])
  {
    v4 = [lowercaseString rangeOfString:@"hk"] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(lowercaseString, "rangeOfString:", @"mo") != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)languageIsKorean:(id)korean
{
  lowercaseString = [korean lowercaseString];
  v4 = [lowercaseString hasPrefix:@"ko"];

  return v4;
}

+ (BOOL)languageIsArabic:(id)arabic
{
  lowercaseString = [arabic lowercaseString];
  v4 = [lowercaseString hasPrefix:@"ar"];

  return v4;
}

+ (BOOL)languageIsHebrew:(id)hebrew
{
  lowercaseString = [hebrew lowercaseString];
  v4 = [lowercaseString hasPrefix:@"he"];

  return v4;
}

+ (BOOL)languageIsDevanagari:(id)devanagari
{
  lowercaseString = [devanagari lowercaseString];
  v4 = [lowercaseString hasPrefix:@"hi"];

  return v4;
}

+ (BOOL)languageIsGurmukhi:(id)gurmukhi
{
  lowercaseString = [gurmukhi lowercaseString];
  v4 = [lowercaseString hasPrefix:@"pa"];

  return v4;
}

+ (BOOL)languageIsGujarati:(id)gujarati
{
  lowercaseString = [gujarati lowercaseString];
  v4 = [lowercaseString hasPrefix:@"gu"];

  return v4;
}

+ (BOOL)languageIsTamil:(id)tamil
{
  lowercaseString = [tamil lowercaseString];
  v4 = [lowercaseString hasPrefix:@"ta"];

  return v4;
}

+ (BOOL)languageIsTelugu:(id)telugu
{
  lowercaseString = [telugu lowercaseString];
  v4 = [lowercaseString hasPrefix:@"te"];

  return v4;
}

+ (BOOL)languageIsMalayalam:(id)malayalam
{
  lowercaseString = [malayalam lowercaseString];
  v4 = [lowercaseString hasPrefix:@"ml"];

  return v4;
}

+ (BOOL)languageIsSinhala:(id)sinhala
{
  lowercaseString = [sinhala lowercaseString];
  v4 = [lowercaseString hasPrefix:@"si"];

  return v4;
}

+ (BOOL)languageIsOriya:(id)oriya
{
  lowercaseString = [oriya lowercaseString];
  v4 = [lowercaseString hasPrefix:@"or"];

  return v4;
}

+ (BOOL)languageIsKannada:(id)kannada
{
  lowercaseString = [kannada lowercaseString];
  v4 = [lowercaseString hasPrefix:@"kn"];

  return v4;
}

+ (BOOL)languageIsBengali:(id)bengali
{
  lowercaseString = [bengali lowercaseString];
  v4 = [lowercaseString hasPrefix:@"bn"];

  return v4;
}

+ (BOOL)languageIsThai:(id)thai
{
  lowercaseString = [thai lowercaseString];
  v4 = [lowercaseString hasPrefix:@"th"];

  return v4;
}

+ (BOOL)languageIsTibetan:(id)tibetan
{
  lowercaseString = [tibetan lowercaseString];
  v4 = [lowercaseString hasPrefix:@"bo"];

  return v4;
}

+ (BOOL)languageIsInuktitut:(id)inuktitut
{
  lowercaseString = [inuktitut lowercaseString];
  v4 = [lowercaseString hasPrefix:@"iu"];

  return v4;
}

+ (BOOL)languageDefaultsToPageProgressLeftToRight:(id)right
{
  rightCopy = right;
  if ([IMLanguageUtilities languageIsJapanese:rightCopy]|| [IMLanguageUtilities languageIsSimplifiedChinese:rightCopy]|| [IMLanguageUtilities languageIsTraditionalChinese:rightCopy]|| [IMLanguageUtilities languageIsHongKongChinese:rightCopy]|| [IMLanguageUtilities languageIsArabic:rightCopy])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![IMLanguageUtilities languageIsHebrew:rightCopy];
  }

  return v4;
}

+ (BOOL)languageDefaultsToHorizontalOrientation:(id)orientation
{
  orientationCopy = orientation;
  if ([IMLanguageUtilities languageIsJapanese:orientationCopy]|| [IMLanguageUtilities languageIsSimplifiedChinese:orientationCopy]|| [IMLanguageUtilities languageIsTraditionalChinese:orientationCopy])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = ![IMLanguageUtilities languageIsHongKongChinese:orientationCopy];
  }

  return v4;
}

@end