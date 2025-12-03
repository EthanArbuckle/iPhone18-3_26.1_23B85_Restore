@interface NSString(AFPreferences)
- (uint64_t)_afpreferences_languageCodePrefix;
@end

@implementation NSString(AFPreferences)

- (uint64_t)_afpreferences_languageCodePrefix
{
  v2 = [self rangeOfString:@"-"];

  return [self substringToIndex:v2];
}

@end