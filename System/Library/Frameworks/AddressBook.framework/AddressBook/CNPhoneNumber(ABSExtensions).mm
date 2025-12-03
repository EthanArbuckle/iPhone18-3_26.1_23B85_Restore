@interface CNPhoneNumber(ABSExtensions)
+ (id)fullyQualifiedStringForStringValue:()ABSExtensions countryCode:;
@end

@implementation CNPhoneNumber(ABSExtensions)

+ (id)fullyQualifiedStringForStringValue:()ABSExtensions countryCode:
{
  v5 = a3;
  v6 = a4;
  if ((*(*MEMORY[0x277CFBD30] + 16))())
  {
    unformattedInternationalStringValue = v5;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v5 countryCode:v6];
    unformattedInternationalStringValue = [v8 unformattedInternationalStringValue];
  }

  return unformattedInternationalStringValue;
}

@end