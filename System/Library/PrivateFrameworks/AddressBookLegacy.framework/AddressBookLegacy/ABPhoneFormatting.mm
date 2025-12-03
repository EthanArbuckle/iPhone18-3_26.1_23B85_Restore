@interface ABPhoneFormatting
+ (id)abCopyPhoneNumberFromString:(id)string;
+ (id)abDefaultCountryCode;
+ (id)abNormalizedPhoneNumberFromString:(id)string;
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

+ (id)abCopyPhoneNumberFromString:(id)string
{
  if (!string)
  {
    return 0;
  }

  [self abDefaultCountryCode];
  result = PNCreateFormattedStringWithCountry();
  if (!result)
  {

    return [string copy];
  }

  return result;
}

+ (id)abNormalizedPhoneNumberFromString:(id)string
{
  [self abDefaultCountryCode];
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

  stringCopy = string;

  return stringCopy;
}

@end