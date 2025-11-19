@interface AALocalization
+ (id)appleAccountBrandName;
@end

@implementation AALocalization

+ (id)appleAccountBrandName
{
  v2 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleAccount"];
  v3 = [v2 localizedStringForKey:@"APPLE_ID_REBRAND" value:0 table:@"Localizable"];

  return v3;
}

@end