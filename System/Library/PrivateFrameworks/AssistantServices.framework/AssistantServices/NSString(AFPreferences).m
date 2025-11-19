@interface NSString(AFPreferences)
- (uint64_t)_afpreferences_languageCodePrefix;
@end

@implementation NSString(AFPreferences)

- (uint64_t)_afpreferences_languageCodePrefix
{
  v2 = [a1 rangeOfString:@"-"];

  return [a1 substringToIndex:v2];
}

@end