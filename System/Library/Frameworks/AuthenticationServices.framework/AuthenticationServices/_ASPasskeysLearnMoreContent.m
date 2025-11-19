@interface _ASPasskeysLearnMoreContent
+ (NSString)footerString;
@end

@implementation _ASPasskeysLearnMoreContent

+ (NSString)footerString
{
  v2 = [MEMORY[0x1E698E020] biometryType];
  if (v2 == 1 || v2 == 2)
  {
    [MEMORY[0x1E698E020] deviceClass];
  }

  v3 = _WBSLocalizedString();

  return v3;
}

@end