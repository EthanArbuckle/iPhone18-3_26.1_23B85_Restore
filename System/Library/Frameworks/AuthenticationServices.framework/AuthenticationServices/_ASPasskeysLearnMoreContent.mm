@interface _ASPasskeysLearnMoreContent
+ (NSString)footerString;
@end

@implementation _ASPasskeysLearnMoreContent

+ (NSString)footerString
{
  biometryType = [MEMORY[0x1E698E020] biometryType];
  if (biometryType == 1 || biometryType == 2)
  {
    [MEMORY[0x1E698E020] deviceClass];
  }

  v3 = _WBSLocalizedString();

  return v3;
}

@end