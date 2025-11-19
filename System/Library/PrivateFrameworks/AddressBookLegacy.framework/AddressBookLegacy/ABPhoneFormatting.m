@interface ABPhoneFormatting
+ (id)abCopyPhoneNumberFromString:(id)a3;
+ (id)abDefaultCountryCode;
+ (id)abNormalizedPhoneNumberFromString:(id)a3;
@end

@implementation ABPhoneFormatting

+ (id)abDefaultCountryCode
{
  result = CPPhoneNumberCopyHomeCountryCode();
  if (!result)
  {
    return @"us";
  }

  return result;
}

+ (id)abCopyPhoneNumberFromString:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  [a1 abDefaultCountryCode];
  result = PNCreateFormattedStringWithCountry();
  if (!result)
  {

    return [a3 copy];
  }

  return result;
}

+ (id)abNormalizedPhoneNumberFromString:(id)a3
{
  [a1 abDefaultCountryCode];
  v4 = CFPhoneNumberCreate();
  if (v4)
  {
    v5 = v4;
    v6 = CFPhoneNumberCreateString();
    CFRelease(v5);
    if (v6)
    {
      return v6;
    }
  }

  v8 = a3;

  return v8;
}

@end