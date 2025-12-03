@interface NSCharacterSet
+ (id)crlwp_allQuotesCharacterSetExcludingLeft;
+ (id)crlwp_allQuotesCharacterSetExcludingRight;
+ (id)crlwp_breakingSpaceCharacterSet;
+ (id)crlwp_characterSetWithCharactersInArray:(const unsigned __int16 *)array length:(unint64_t)length;
+ (id)crlwp_curlyQuotesCharacterSet;
+ (id)crlwp_invisibleCharacterSet;
+ (id)crlwp_sentenceDelimiterCharacterSet;
+ (id)crlwp_singleLeftQuoteCharacterSet;
+ (id)crlwp_singleRightQuoteCharacterSet;
+ (id)crlwp_smartSingleQuotesCharacterSet;
+ (id)crlwp_spaceCharacterSet;
+ (id)crlwp_variationSelectorCharacterSet;
@end

@implementation NSCharacterSet

+ (id)crlwp_characterSetWithCharactersInArray:(const unsigned __int16 *)array length:(unint64_t)length
{
  v4 = [NSString stringWithCharacters:array length:length];
  v5 = [NSCharacterSet characterSetWithCharactersInString:v4];

  return v5;
}

+ (id)crlwp_sentenceDelimiterCharacterSet
{
  if (qword_101A34B48 != -1)
  {
    sub_1013519FC();
  }

  v3 = qword_101A34B40;

  return v3;
}

+ (id)crlwp_breakingSpaceCharacterSet
{
  if (qword_101A34B58 != -1)
  {
    sub_101351A10();
  }

  v3 = qword_101A34B50;

  return v3;
}

+ (id)crlwp_invisibleCharacterSet
{
  if (qword_101A34B68 != -1)
  {
    sub_101351A24();
  }

  v3 = qword_101A34B60;

  return v3;
}

+ (id)crlwp_spaceCharacterSet
{
  if (qword_101A34B78 != -1)
  {
    sub_101351A38();
  }

  v3 = qword_101A34B70;

  return v3;
}

+ (id)crlwp_smartSingleQuotesCharacterSet
{
  if (qword_101A34B88 != -1)
  {
    sub_101351A4C();
  }

  v3 = qword_101A34B80;

  return v3;
}

+ (id)crlwp_singleLeftQuoteCharacterSet
{
  if (qword_101A34B98 != -1)
  {
    sub_101351A60();
  }

  v3 = qword_101A34B90;

  return v3;
}

+ (id)crlwp_singleRightQuoteCharacterSet
{
  if (qword_101A34BA8 != -1)
  {
    sub_101351A74();
  }

  v3 = qword_101A34BA0;

  return v3;
}

+ (id)crlwp_curlyQuotesCharacterSet
{
  if (qword_101A34BB8 != -1)
  {
    sub_101351A88();
  }

  v3 = qword_101A34BB0;

  return v3;
}

+ (id)crlwp_variationSelectorCharacterSet
{
  if (qword_101A34BC8 != -1)
  {
    sub_101351A9C();
  }

  v3 = qword_101A34BC0;

  return v3;
}

+ (id)crlwp_allQuotesCharacterSetExcludingLeft
{
  if (qword_101A34BD8 != -1)
  {
    sub_101351AB0();
  }

  v3 = qword_101A34BD0;

  return v3;
}

+ (id)crlwp_allQuotesCharacterSetExcludingRight
{
  if (qword_101A34BE8 != -1)
  {
    sub_101351AC4();
  }

  v3 = qword_101A34BE0;

  return v3;
}

@end